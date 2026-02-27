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
/// > **Note:** The API Gateway managed stage created as part of [_quick_create_](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-basic-concept.html#apigateway-definition-quick-create) cannot be imported.
class Stage2 extends CustomResource {
  /// Settings for logging access in this stage.
  /// Use the `aws.apigateway.Account` resource to configure [permissions for CloudWatch Logging](https://docs.aws.amazon.com/apigateway/latest/developerguide/set-up-logging.html#set-up-access-logging-permissions).
  late final Output<StageAccessLogSettings2?> accessLogSettings;

  /// API identifier.
  late final Output<String> apiId;

  /// ARN of the stage.
  late final Output<String> arn;

  /// Whether updates to an API automatically trigger a new deployment. Defaults to `false`. Applicable for HTTP APIs.
  late final Output<bool?> autoDeploy;

  /// Identifier of a client certificate for the stage. Use the `aws.apigateway.ClientCertificate` resource to configure a client certificate.
  /// Supported only for WebSocket APIs.
  late final Output<String?> clientCertificateId;

  /// Default route settings for the stage.
  late final Output<StageDefaultRouteSettings?> defaultRouteSettings;

  /// Deployment identifier of the stage. Use the `aws.apigatewayv2.Deployment` resource to configure a deployment.
  late final Output<String> deploymentId;

  /// Description for the stage. Must be less than or equal to 1024 characters in length.
  late final Output<String?> description;

  /// ARN prefix to be used in an `aws.lambda.Permission`'s `source_arn` attribute.
  /// For WebSocket APIs this attribute can additionally be used in an `aws.iam.Policy` to authorize access to the [`@connections` API](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-how-to-call-websocket-api-connections.html).
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

  /// Map of tags to assign to the stage. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
