import 'package:pulumi/pulumi.dart' as pulumi;
import 'stage_access_log_settings.dart';
import 'stage_args.dart';
import 'stage_canary_settings.dart';

/// Manages an API Gateway Stage. A stage is a named reference to a deployment, which can be done via the `aws.apigateway.Deployment` resource. Stages can be optionally managed further with the `aws.apigateway.BasePathMapping` resource, `aws.apigateway.DomainName` resource, and `aws_api_method_settings` resource. For more information, see the [API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-stages.html).
///
/// ### Managing the API Logging CloudWatch Log Group
///
/// API Gateway provides the ability to [enable CloudWatch API logging](https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-logging.html). To manage the CloudWatch Log Group when this feature is enabled, the `aws.cloudwatch.LogGroup` resource can be used where the name matches the API Gateway naming convention. If the CloudWatch Log Group previously exists, import the `aws.cloudwatch.LogGroup` resource into Pulumi as a one time operation. You can recreate the environment without import.
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const stageName = config.get("stageName") || "example";
/// const example = new aws.apigateway.RestApi("example", {});
/// const exampleLogGroup = new aws.cloudwatch.LogGroup("example", {
///     name: pulumi.interpolate`API-Gateway-Execution-Logs_${example.id}/${stageName}`,
///     retentionInDays: 7,
/// });
/// const exampleStage = new aws.apigateway.Stage("example", {stageName: stageName}, {
///     dependsOn: [exampleLogGroup],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// stage_name = config.get("stageName")
/// if stage_name is None:
///     stage_name = "example"
/// example = aws.apigateway.RestApi("example")
/// example_log_group = aws.cloudwatch.LogGroup("example",
///     name=example.id.apply(lambda id: f"API-Gateway-Execution-Logs_{id}/{stage_name}"),
///     retention_in_days=7)
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
///     var config = new Config();
///     var stageName = config.Get("stageName") ?? "example";
///     var example = new Aws.ApiGateway.RestApi("example");
///
///     var exampleLogGroup = new Aws.CloudWatch.LogGroup("example", new()
///     {
///         Name = example.Id.Apply(id => $"API-Gateway-Execution-Logs_{id}/{stageName}"),
///         RetentionInDays = 7,
///     });
///
///     var exampleStage = new Aws.ApiGateway.Stage("example", new()
///     {
///         StageName = stageName,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleLogGroup,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		stageName := "example"
/// 		if param := cfg.Get("stageName"); param != "" {
/// 			stageName = param
/// 		}
/// 		example, err := apigateway.NewRestApi(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLogGroup, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// 			Name: example.ID().ApplyT(func(id string) (string, error) {
/// 				return fmt.Sprintf("API-Gateway-Execution-Logs_%v/%v", id, stageName), nil
/// 			}).(pulumi.StringOutput),
/// 			RetentionInDays: pulumi.Int(7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewStage(ctx, "example", &apigateway.StageArgs{
/// 			StageName: pulumi.String(stageName),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleLogGroup,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var config = ctx.config();
///         final var stageName = config.get("stageName").orElse("example");
///         var example = new RestApi("example");
///
///         var exampleLogGroup = new LogGroup("exampleLogGroup", LogGroupArgs.builder()
///             .name(example.id().applyValue(_id -> String.format("API-Gateway-Execution-Logs_%s/%s", _id,stageName)))
///             .retentionInDays(7)
///             .build());
///
///         var exampleStage = new Stage("exampleStage", StageArgs.builder()
///             .stageName(stageName)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleLogGroup)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   stageName:
///     type: string
///     default: example
/// resources:
///   example:
///     type: aws:apigateway:RestApi
///   exampleStage:
///     type: aws:apigateway:Stage
///     name: example
///     properties:
///       stageName: ${stageName}
///     options:
///       dependsOn:
///         - ${exampleLogGroup}
///   exampleLogGroup:
///     type: aws:cloudwatch:LogGroup
///     name: example
///     properties:
///       name: API-Gateway-Execution-Logs_${example.id}/${stageName}
///       retentionInDays: 7 # ... potentially other configuration ...
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigateway.Stage` using `REST-API-ID/STAGE-NAME`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/stage:Stage example 12345abcde/example
/// ```
class Stage extends pulumi.CustomResource {
  /// Enables access logs for the API stage. See Access Log Settings below.
  late final pulumi.Output<StageAccessLogSettings?> accessLogSettings;
  /// ARN
  late final pulumi.Output<String> arn;
  /// Whether a cache cluster is enabled for the stage
  late final pulumi.Output<bool?> cacheClusterEnabled;
  /// Size of the cache cluster for the stage, if enabled. Allowed values include `0.5`, `1.6`, `6.1`, `13.5`, `28.4`, `58.2`, `118` and `237`.
  late final pulumi.Output<String?> cacheClusterSize;
  /// Configuration settings of a canary deployment. See Canary Settings below.
  late final pulumi.Output<StageCanarySettings?> canarySettings;
  /// Identifier of a client certificate for the stage.
  late final pulumi.Output<String?> clientCertificateId;
  /// ID of the deployment that the stage points to
  late final pulumi.Output<String> deployment;
  /// Description of the stage.
  late final pulumi.Output<String?> description;
  /// Version of the associated API documentation.
  late final pulumi.Output<String?> documentationVersion;
  /// Execution ARN to be used in `lambda_permission`'s `source_arn`
  /// when allowing API Gateway to invoke a Lambda function,
  /// e.g., `arn:aws:execute-api:eu-west-2:123456789012:z4675bid1j/prod`
  late final pulumi.Output<String> executionArn;
  /// URL to invoke the API pointing to the stage,
  /// e.g., `https://z4675bid1j.execute-api.eu-west-2.amazonaws.com/prod`
  late final pulumi.Output<String> invokeUrl;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID of the associated REST API
  late final pulumi.Output<String> restApi;
  /// Name of the stage
  late final pulumi.Output<String> stageName;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Map that defines the stage variables.
  late final pulumi.Output<Map<String, String>?> variables;
  /// ARN of the WebAcl associated with the Stage.
  late final pulumi.Output<String> webAclArn;
  /// Whether active tracing with X-ray is enabled. Defaults to `false`.
  late final pulumi.Output<bool?> xrayTracingEnabled;

  /// Creates a new [Stage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Stage]. {@macro pulumi_apigateway_stage_stage_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Stage(
    String name, {
    StageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/stage:Stage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessLogSettings = registerOutput<StageAccessLogSettings?>('accessLogSettings');
    this.arn = registerOutput<String>('arn');
    this.cacheClusterEnabled = registerOutput<bool?>('cacheClusterEnabled');
    this.cacheClusterSize = registerOutput<String?>('cacheClusterSize');
    this.canarySettings = registerOutput<StageCanarySettings?>('canarySettings');
    this.clientCertificateId = registerOutput<String?>('clientCertificateId');
    this.deployment = registerOutput<String>('deployment');
    this.description = registerOutput<String?>('description');
    this.documentationVersion = registerOutput<String?>('documentationVersion');
    this.executionArn = registerOutput<String>('executionArn');
    this.invokeUrl = registerOutput<String>('invokeUrl');
    this.region = registerOutput<String>('region');
    this.restApi = registerOutput<String>('restApi');
    this.stageName = registerOutput<String>('stageName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.variables = registerOutput<Map<String, String>?>('variables');
    this.webAclArn = registerOutput<String>('webAclArn');
    this.xrayTracingEnabled = registerOutput<bool?>('xrayTracingEnabled');
  }
}
