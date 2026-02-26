import 'package:pulumi/pulumi.dart';
import '../stage_access_log_settings/stage_access_log_settings2.dart';
import '../stage_default_route_settings/stage_default_route_settings.dart';
import '../stage_route_setting/stage_route_setting.dart';
import 'stage_args2.dart';

/// Manages an Amazon API Gateway Version 2 stage.
/// More information can be found in the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api.html).
///
/// ## Example Usage
///
/// ### Basic
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigatewayv2.Stage("example", {
/// apiId: exampleAwsApigatewayv2Api.id,
/// name: "example-stage",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.Stage("example",
/// api_id=example_aws_apigatewayv2_api["id"],
/// name="example-stage")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.ApiGatewayV2.Stage("example", new()
/// {
/// ApiId = exampleAwsApigatewayv2Api.Id,
/// Name = "example-stage",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigatewayv2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apigatewayv2.NewStage(ctx, "example", &apigatewayv2.StageArgs{
/// ApiId: pulumi.Any(exampleAwsApigatewayv2Api.Id),
/// Name:  pulumi.String("example-stage"),
/// })
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
/// import com.pulumi.aws.apigatewayv2.Stage;
/// import com.pulumi.aws.apigatewayv2.StageArgs;
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
/// var example = new Stage("example", StageArgs.builder()
/// .apiId(exampleAwsApigatewayv2Api.id())
/// .name("example-stage")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:apigatewayv2:Stage
/// properties:
/// apiId: ${exampleAwsApigatewayv2Api.id}
/// name: example-stage
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.apigatewayv2.Stage`" pulumi-lang-dotnet="`aws.apigatewayv2.Stage`" pulumi-lang-go="`apigatewayv2.Stage`" pulumi-lang-python="`apigatewayv2.Stage`" pulumi-lang-yaml="`aws.apigatewayv2.Stage`" pulumi-lang-java="`aws.apigatewayv2.Stage`">`aws.apigatewayv2.Stage`</span> using the API identifier and stage name. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/stage:Stage example aabbccddee/example-stage
/// ```
///
/// > **Note:** The API Gateway managed stage created as part of [_quick_create_](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-basic-concept.html#apigateway-definition-quick-create) cannot be imported.
class Stage2 extends CustomResource {
  /// Settings for logging access in this stage.
  /// Use the <span pulumi-lang-nodejs="`aws.apigateway.Account`" pulumi-lang-dotnet="`aws.apigateway.Account`" pulumi-lang-go="`apigateway.Account`" pulumi-lang-python="`apigateway.Account`" pulumi-lang-yaml="`aws.apigateway.Account`" pulumi-lang-java="`aws.apigateway.Account`">`aws.apigateway.Account`</span> resource to configure [permissions for CloudWatch Logging](https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-logging.html#set-up-access-logging-permissions).
  late final Output<StageAccessLogSettings2?> accessLogSettings;

  /// API identifier.
  late final Output<String> apiId;

  /// ARN of the stage.
  late final Output<String> arn;

  /// Whether updates to an API automatically trigger a new deployment. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Applicable for HTTP APIs.
  late final Output<bool?> autoDeploy;

  /// Identifier of a client certificate for the stage. Use the <span pulumi-lang-nodejs="`aws.apigateway.ClientCertificate`" pulumi-lang-dotnet="`aws.apigateway.ClientCertificate`" pulumi-lang-go="`apigateway.ClientCertificate`" pulumi-lang-python="`apigateway.ClientCertificate`" pulumi-lang-yaml="`aws.apigateway.ClientCertificate`" pulumi-lang-java="`aws.apigateway.ClientCertificate`">`aws.apigateway.ClientCertificate`</span> resource to configure a client certificate.
  /// Supported only for WebSocket APIs.
  late final Output<String?> clientCertificateId;

  /// Default route settings for the stage.
  late final Output<StageDefaultRouteSettings?> defaultRouteSettings;

  /// Deployment identifier of the stage. Use the <span pulumi-lang-nodejs="`aws.apigatewayv2.Deployment`" pulumi-lang-dotnet="`aws.apigatewayv2.Deployment`" pulumi-lang-go="`apigatewayv2.Deployment`" pulumi-lang-python="`apigatewayv2.Deployment`" pulumi-lang-yaml="`aws.apigatewayv2.Deployment`" pulumi-lang-java="`aws.apigatewayv2.Deployment`">`aws.apigatewayv2.Deployment`</span> resource to configure a deployment.
  late final Output<String> deploymentId;

  /// Description for the stage. Must be less than or equal to 1024 characters in length.
  late final Output<String?> description;

  /// ARN prefix to be used in an <span pulumi-lang-nodejs="`aws.lambda.Permission`" pulumi-lang-dotnet="`aws.lambda.Permission`" pulumi-lang-go="`lambda.Permission`" pulumi-lang-python="`lambda.Permission`" pulumi-lang-yaml="`aws.lambda.Permission`" pulumi-lang-java="`aws.lambda.Permission`">`aws.lambda.Permission`</span>'s <span pulumi-lang-nodejs="`sourceArn`" pulumi-lang-dotnet="`SourceArn`" pulumi-lang-go="`sourceArn`" pulumi-lang-python="`source_arn`" pulumi-lang-yaml="`sourceArn`" pulumi-lang-java="`sourceArn`">`source_arn`</span> attribute.
  /// For WebSocket APIs this attribute can additionally be used in an <span pulumi-lang-nodejs="`aws.iam.Policy`" pulumi-lang-dotnet="`aws.iam.Policy`" pulumi-lang-go="`iam.Policy`" pulumi-lang-python="`iam.Policy`" pulumi-lang-yaml="`aws.iam.Policy`" pulumi-lang-java="`aws.iam.Policy`">`aws.iam.Policy`</span> to authorize access to the [`@connections` API](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-how-to-call-websocket-api-connections.html).
  /// See the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-control-access-iam.html) for details.
  late final Output<String> executionArn;

  /// URL to invoke the API pointing to the stage,
  /// e.g., `wss://z4675bid1j.execute-api.eu-west-2.amazonaws.com/example-stage`, or `https://z4675bid1j.execute-api.eu-west-2.amazonaws.com/`
  late final Output<String> invokeUrl;

  /// Name of the stage. Must be between 1 and 128 characters in length.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Route settings for the stage.
  late final Output<List<StageRouteSetting>?> routeSettings;

  /// Map that defines the stage variables for the stage.
  late final Output<Map<String, String>?> stageVariables;

  /// Map of tags to assign to the stage. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Stage2(
    String name, {
    StageArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/stage:Stage',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessLogSettings =
        registerOutput<StageAccessLogSettings2?>('accessLogSettings');
    this.apiId = registerOutput<String>('apiId');
    this.arn = registerOutput<String>('arn');
    this.autoDeploy = registerOutput<bool?>('autoDeploy');
    this.clientCertificateId = registerOutput<String?>('clientCertificateId');
    this.defaultRouteSettings =
        registerOutput<StageDefaultRouteSettings?>('defaultRouteSettings');
    this.deploymentId = registerOutput<String>('deploymentId');
    this.description = registerOutput<String?>('description');
    this.executionArn = registerOutput<String>('executionArn');
    this.invokeUrl = registerOutput<String>('invokeUrl');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.routeSettings =
        registerOutput<List<StageRouteSetting>?>('routeSettings');
    this.stageVariables =
        registerOutput<Map<String, String>?>('stageVariables');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
