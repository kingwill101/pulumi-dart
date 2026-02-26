import 'package:pulumi/pulumi.dart';
import '../stage_access_log_settings/stage_access_log_settings.dart';
import '../stage_canary_settings/stage_canary_settings.dart';
import 'stage_args.dart';

/// Manages an API Gateway Stage. A stage is a named reference to a deployment, which can be done via the <span pulumi-lang-nodejs="`aws.apigateway.Deployment`" pulumi-lang-dotnet="`aws.apigateway.Deployment`" pulumi-lang-go="`apigateway.Deployment`" pulumi-lang-python="`apigateway.Deployment`" pulumi-lang-yaml="`aws.apigateway.Deployment`" pulumi-lang-java="`aws.apigateway.Deployment`">`aws.apigateway.Deployment`</span> resource. Stages can be optionally managed further with the <span pulumi-lang-nodejs="`aws.apigateway.BasePathMapping`" pulumi-lang-dotnet="`aws.apigateway.BasePathMapping`" pulumi-lang-go="`apigateway.BasePathMapping`" pulumi-lang-python="`apigateway.BasePathMapping`" pulumi-lang-yaml="`aws.apigateway.BasePathMapping`" pulumi-lang-java="`aws.apigateway.BasePathMapping`">`aws.apigateway.BasePathMapping`</span> resource, <span pulumi-lang-nodejs="`aws.apigateway.DomainName`" pulumi-lang-dotnet="`aws.apigateway.DomainName`" pulumi-lang-go="`apigateway.DomainName`" pulumi-lang-python="`apigateway.DomainName`" pulumi-lang-yaml="`aws.apigateway.DomainName`" pulumi-lang-java="`aws.apigateway.DomainName`">`aws.apigateway.DomainName`</span> resource, and <span pulumi-lang-nodejs="`awsApiMethodSettings`" pulumi-lang-dotnet="`AwsApiMethodSettings`" pulumi-lang-go="`awsApiMethodSettings`" pulumi-lang-python="`aws_api_method_settings`" pulumi-lang-yaml="`awsApiMethodSettings`" pulumi-lang-java="`awsApiMethodSettings`">`aws_api_method_settings`</span> resource. For more information, see the [API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-stages.html).
///
/// ### Managing the API Logging CloudWatch Log Group
///
/// API Gateway provides the ability to [enable CloudWatch API logging](https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-logging.html). To manage the CloudWatch Log Group when this feature is enabled, the <span pulumi-lang-nodejs="`aws.cloudwatch.LogGroup`" pulumi-lang-dotnet="`aws.cloudwatch.LogGroup`" pulumi-lang-go="`cloudwatch.LogGroup`" pulumi-lang-python="`cloudwatch.LogGroup`" pulumi-lang-yaml="`aws.cloudwatch.LogGroup`" pulumi-lang-java="`aws.cloudwatch.LogGroup`">`aws.cloudwatch.LogGroup`</span> resource can be used where the name matches the API Gateway naming convention. If the CloudWatch Log Group previously exists, import the <span pulumi-lang-nodejs="`aws.cloudwatch.LogGroup`" pulumi-lang-dotnet="`aws.cloudwatch.LogGroup`" pulumi-lang-go="`cloudwatch.LogGroup`" pulumi-lang-python="`cloudwatch.LogGroup`" pulumi-lang-yaml="`aws.cloudwatch.LogGroup`" pulumi-lang-java="`aws.cloudwatch.LogGroup`">`aws.cloudwatch.LogGroup`</span> resource into Pulumi as a one time operation. You can recreate the environment without import.
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const stageName = config.get("stageName") || "example";
/// const example = new aws.apigateway.RestApi("example", {});
/// const exampleLogGroup = new aws.cloudwatch.LogGroup("example", {
/// name: pulumi.interpolate`API-Gateway-Execution-Logs_${example.id}/${stageName}`,
/// retentionInDays: 7,
/// });
/// const exampleStage = new aws.apigateway.Stage("example", {stageName: stageName}, {
/// dependsOn: [exampleLogGroup],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// stage_name = config.get("stageName")
/// if stage_name is None:
/// stage_name = "example"
/// example = aws.apigateway.RestApi("example")
/// example_log_group = aws.cloudwatch.LogGroup("example",
/// name=example.id.apply(lambda id: f"API-Gateway-Execution-Logs_{id}/{stage_name}"),
/// retention_in_days=7)
/// example_stage = aws.apigateway.Stage("example", stage_name=stage_name,
/// opts = pulumi.ResourceOptions(depends_on=[example_log_group]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var config = new Config();
/// var stageName = config.Get("stageName") ?? "example";
/// var example = new Aws.ApiGateway.RestApi("example");
///
/// var exampleLogGroup = new Aws.CloudWatch.LogGroup("example", new()
/// {
/// Name = example.Id.Apply(id => $"API-Gateway-Execution-Logs_{id}/{stageName}"),
/// RetentionInDays = 7,
/// });
///
/// var exampleStage = new Aws.ApiGateway.Stage("example", new()
/// {
/// StageName = stageName,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleLogGroup,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// stageName := "example"
/// if param := cfg.Get("stageName"); param != "" {
/// stageName = param
/// }
/// example, err := apigateway.NewRestApi(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// exampleLogGroup, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// Name: example.ID().ApplyT(func(id string) (string, error) {
/// return fmt.Sprintf("API-Gateway-Execution-Logs_%v/%v", id, stageName), nil
/// }).(pulumi.StringOutput),
/// RetentionInDays: pulumi.Int(7),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = apigateway.NewStage(ctx, "example", &apigateway.StageArgs{
/// StageName: pulumi.String(stageName),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleLogGroup,
/// }))
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigateway.RestApi;
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.apigateway.Stage;
/// import com.pulumi.aws.apigateway.StageArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var config = ctx.config();
/// final var stageName = config.get("stageName").orElse("example");
/// var example = new RestApi("example");
///
/// var exampleLogGroup = new LogGroup("exampleLogGroup", LogGroupArgs.builder()
/// .name(example.id().applyValue(_id -> String.format("API-Gateway-Execution-Logs_%s/%s", _id,stageName)))
/// .retentionInDays(7)
/// .build());
///
/// var exampleStage = new Stage("exampleStage", StageArgs.builder()
/// .stageName(stageName)
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleLogGroup)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// configuration:
/// stageName:
/// type: string
/// default: example
/// resources:
/// example:
/// type: aws:apigateway:RestApi
/// exampleStage:
/// type: aws:apigateway:Stage
/// name: example
/// properties:
/// stageName: ${stageName}
/// options:
/// dependsOn:
/// - ${exampleLogGroup}
/// exampleLogGroup:
/// type: aws:cloudwatch:LogGroup
/// name: example
/// properties:
/// name: API-Gateway-Execution-Logs_${example.id}/${stageName}
/// retentionInDays: 7 # ... potentially other configuration ...
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.apigateway.Stage`" pulumi-lang-dotnet="`aws.apigateway.Stage`" pulumi-lang-go="`apigateway.Stage`" pulumi-lang-python="`apigateway.Stage`" pulumi-lang-yaml="`aws.apigateway.Stage`" pulumi-lang-java="`aws.apigateway.Stage`">`aws.apigateway.Stage`</span> using `REST-API-ID/STAGE-NAME`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/stage:Stage example 12345abcde/example
/// ```
class Stage extends CustomResource {
  /// Enables access logs for the API stage. See Access Log Settings below.
  late final Output<StageAccessLogSettings?> accessLogSettings;

  /// ARN
  late final Output<String> arn;

  /// Whether a cache cluster is enabled for the stage
  late final Output<bool?> cacheClusterEnabled;

  /// Size of the cache cluster for the stage, if enabled. Allowed values include `0.5`, `1.6`, `6.1`, `13.5`, `28.4`, `58.2`, <span pulumi-lang-nodejs="`118`" pulumi-lang-dotnet="`118`" pulumi-lang-go="`118`" pulumi-lang-python="`118`" pulumi-lang-yaml="`118`" pulumi-lang-java="`118`">`118`</span> and <span pulumi-lang-nodejs="`237`" pulumi-lang-dotnet="`237`" pulumi-lang-go="`237`" pulumi-lang-python="`237`" pulumi-lang-yaml="`237`" pulumi-lang-java="`237`">`237`</span>.
  late final Output<String?> cacheClusterSize;

  /// Configuration settings of a canary deployment. See Canary Settings below.
  late final Output<StageCanarySettings?> canarySettings;

  /// Identifier of a client certificate for the stage.
  late final Output<String?> clientCertificateId;

  /// ID of the deployment that the stage points to
  late final Output<String> deployment;

  /// Description of the stage.
  late final Output<String?> description;

  /// Version of the associated API documentation.
  late final Output<String?> documentationVersion;

  /// Execution ARN to be used in <span pulumi-lang-nodejs="`lambdaPermission`" pulumi-lang-dotnet="`LambdaPermission`" pulumi-lang-go="`lambdaPermission`" pulumi-lang-python="`lambda_permission`" pulumi-lang-yaml="`lambdaPermission`" pulumi-lang-java="`lambdaPermission`">`lambda_permission`</span>'s <span pulumi-lang-nodejs="`sourceArn`" pulumi-lang-dotnet="`SourceArn`" pulumi-lang-go="`sourceArn`" pulumi-lang-python="`source_arn`" pulumi-lang-yaml="`sourceArn`" pulumi-lang-java="`sourceArn`">`source_arn`</span>
  /// when allowing API Gateway to invoke a Lambda function,
  /// e.g., `arn:aws:execute-api:eu-west-2:123456789012:z4675bid1j/prod`
  late final Output<String> executionArn;

  /// URL to invoke the API pointing to the stage,
  /// e.g., `https://z4675bid1j.execute-api.eu-west-2.amazonaws.com/prod`
  late final Output<String> invokeUrl;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the associated REST API
  late final Output<String> restApi;

  /// Name of the stage
  late final Output<String> stageName;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Map that defines the stage variables.
  late final Output<Map<String, String>?> variables;

  /// ARN of the WebAcl associated with the Stage.
  late final Output<String> webAclArn;

  /// Whether active tracing with X-ray is enabled. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> xrayTracingEnabled;

  Stage(
    String name, {
    StageArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/stage:Stage',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessLogSettings = Output.createUnknown<StageAccessLogSettings?>();
    this.arn = Output.createUnknown<String>();
    this.cacheClusterEnabled = Output.createUnknown<bool?>();
    this.cacheClusterSize = Output.createUnknown<String?>();
    this.canarySettings = Output.createUnknown<StageCanarySettings?>();
    this.clientCertificateId = Output.createUnknown<String?>();
    this.deployment = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.documentationVersion = Output.createUnknown<String?>();
    this.executionArn = Output.createUnknown<String>();
    this.invokeUrl = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.restApi = Output.createUnknown<String>();
    this.stageName = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.variables = Output.createUnknown<Map<String, String>?>();
    this.webAclArn = Output.createUnknown<String>();
    this.xrayTracingEnabled = Output.createUnknown<bool?>();
  }
}
