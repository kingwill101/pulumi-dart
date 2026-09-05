import 'package:pulumi/pulumi.dart' as pulumi;
import 'stage_access_log_settings.dart';
import 'stage_args.dart';
import 'stage_default_route_settings.dart';
import 'stage_route_setting.dart';
import 'stage_state.dart';

/// Manages an Amazon API Gateway Version 2 stage.
/// More information can be found in the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api.html).
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigatewayv2.Stage("example", {
///     apiId: exampleAwsApigatewayv2Api.id,
///     name: "example-stage",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigatewayv2.Stage("example",
///     api_id=example_aws_apigatewayv2_api["id"],
///     name="example-stage")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ApiGatewayV2.Stage("example", new()
///     {
///         ApiId = exampleAwsApigatewayv2Api.Id,
///         Name = "example-stage",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigatewayv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigatewayv2.NewStage(ctx, "example", &apigatewayv2.StageArgs{
/// 			ApiId: pulumi.Any(exampleAwsApigatewayv2Api.Id),
/// 			Name:  pulumi.String("example-stage"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_apigatewayv2_stage" "example" {
///   api_id = exampleAwsApigatewayv2Api.id
///   name   = "example-stage"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new Stage("example", StageArgs.builder()
///             .apiId(exampleAwsApigatewayv2Api.id())
///             .name("example-stage")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apigatewayv2:Stage
///     properties:
///       apiId: ${exampleAwsApigatewayv2Api.id}
///       name: example-stage
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.apigatewayv2.Stage` using the API identifier and stage name. For example:
///
/// ```sh
/// $ pulumi import aws:apigatewayv2/stage:Stage example aabbccddee/example-stage
/// ```
///
/// &gt; **Note:** The API Gateway managed stage created as part of [_quick_create_](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-basic-concept.html#apigateway-definition-quick-create) cannot be imported.
class Stage extends pulumi.CustomResource {
  /// Settings for logging access in this stage. Use the `aws.apigateway.Account` resource to configure [permissions for CloudWatch Logging](https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-logging.html#set-up-access-logging-permissions).
  late final pulumi.Output<StageAccessLogSettings?> accessLogSettings;
  /// API identifier.
  late final pulumi.Output<String> apiId;
  /// ARN of the stage.
  late final pulumi.Output<String> arn;
  /// Whether updates to an API automatically trigger a new deployment. Defaults to `false`. Applicable for HTTP APIs.
  late final pulumi.Output<bool?> autoDeploy;
  /// Identifier of a client certificate for the stage. Use the `aws.apigateway.ClientCertificate` resource to configure a client certificate. Supported only for WebSocket APIs.
  late final pulumi.Output<String?> clientCertificateId;
  /// Default route settings for the stage.
  late final pulumi.Output<StageDefaultRouteSettings?> defaultRouteSettings;
  /// Deployment identifier of the stage. Use the `aws.apigatewayv2.Deployment` resource to configure a deployment.
  late final pulumi.Output<String> deploymentId;
  /// Description for the stage. Must be less than or equal to 1024 characters in length.
  late final pulumi.Output<String?> description;
  /// ARN prefix to be used in an `aws.lambda.Permission`'s `sourceArn` attribute. For WebSocket APIs this attribute can additionally be used in an `aws.iam.Policy` to authorize access to the [`@connections` API](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-how-to-call-websocket-api-connections.html). See the [Amazon API Gateway Developer Guide](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-control-access-iam.html) for details.
  late final pulumi.Output<String> executionArn;
  /// URL to invoke the API pointing to the stage, e.g., `wss://z4675bid1j.execute-api.eu-west-2.amazonaws.com/example-stage`, or `https://z4675bid1j.execute-api.eu-west-2.amazonaws.com/`
  late final pulumi.Output<String> invokeUrl;
  /// Name of the stage. Must be between 1 and 128 characters in length.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Route settings for the stage.
  late final pulumi.Output<List<StageRouteSetting>?> routeSettings;
  /// Map that defines the stage variables for the stage.
  late final pulumi.Output<Map<String, String>?> stageVariables;
  /// Map of tags to assign to the stage. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Stage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Stage]. {@macro pulumi_apigatewayv2_stage_stage_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Stage(
    String name, {
    StageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/stage:Stage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    accessLogSettings = registerOutput<StageAccessLogSettings?>('accessLogSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StageAccessLogSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    apiId = registerOutput<String>('apiId');
    arn = registerOutput<String>('arn');
    autoDeploy = registerOutput<bool?>('autoDeploy');
    clientCertificateId = registerOutput<String?>('clientCertificateId');
    defaultRouteSettings = registerOutput<StageDefaultRouteSettings?>('defaultRouteSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StageDefaultRouteSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deploymentId = registerOutput<String>('deploymentId');
    description = registerOutput<String?>('description');
    executionArn = registerOutput<String>('executionArn');
    invokeUrl = registerOutput<String>('invokeUrl');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    routeSettings = registerOutput<List<StageRouteSetting>?>('routeSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StageRouteSetting>(guardedValue, (value) => StageRouteSetting.fromMap((value as Map).cast<String, dynamic>())); });
    stageVariables = registerOutput<Map<String, String>?>('stageVariables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Stage] resource's state with the given [name] and [id].
  static Stage get(
    String name,
    pulumi.Input<String> id, {
    StageState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Stage._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Stage._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigatewayv2/stage:Stage',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessLogSettings = registerOutput<StageAccessLogSettings?>('accessLogSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StageAccessLogSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    apiId = registerOutput<String>('apiId');
    arn = registerOutput<String>('arn');
    autoDeploy = registerOutput<bool?>('autoDeploy');
    clientCertificateId = registerOutput<String?>('clientCertificateId');
    defaultRouteSettings = registerOutput<StageDefaultRouteSettings?>('defaultRouteSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StageDefaultRouteSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deploymentId = registerOutput<String>('deploymentId');
    description = registerOutput<String?>('description');
    executionArn = registerOutput<String>('executionArn');
    invokeUrl = registerOutput<String>('invokeUrl');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    routeSettings = registerOutput<List<StageRouteSetting>?>('routeSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StageRouteSetting>(guardedValue, (value) => StageRouteSetting.fromMap((value as Map).cast<String, dynamic>())); });
    stageVariables = registerOutput<Map<String, String>?>('stageVariables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Stage] resource.
  Stage.reference(String urn)
    : super(
        'aws:apigatewayv2/stage:Stage',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accessLogSettings = registerOutput<StageAccessLogSettings?>('accessLogSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StageAccessLogSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    apiId = registerOutput<String>('apiId');
    arn = registerOutput<String>('arn');
    autoDeploy = registerOutput<bool?>('autoDeploy');
    clientCertificateId = registerOutput<String?>('clientCertificateId');
    defaultRouteSettings = registerOutput<StageDefaultRouteSettings?>('defaultRouteSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StageDefaultRouteSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deploymentId = registerOutput<String>('deploymentId');
    description = registerOutput<String?>('description');
    executionArn = registerOutput<String>('executionArn');
    invokeUrl = registerOutput<String>('invokeUrl');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    routeSettings = registerOutput<List<StageRouteSetting>?>('routeSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StageRouteSetting>(guardedValue, (value) => StageRouteSetting.fromMap((value as Map).cast<String, dynamic>())); });
    stageVariables = registerOutput<Map<String, String>?>('stageVariables', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
