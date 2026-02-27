import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_args.dart';

/// Creates a new Gateway in a given project and location.
/// Auto-naming is currently not supported for this resource.
class GatewayApigatewayV1 extends pulumi.CustomResource {
  /// Resource name of the API Config for this Gateway. Format: projects/{project}/locations/global/apis/{api}/configs/{apiConfig}
  late final pulumi.Output<String> apiConfig;

  /// Created time.
  late final pulumi.Output<String> createTime;

  /// The default API Gateway host name of the form `{gateway_id}-{hash}.{region_code}.gateway.dev`.
  late final pulumi.Output<String> defaultHostname;

  /// Optional. Display name.
  late final pulumi.Output<String> displayName;

  /// Required. Identifier to assign to the Gateway. Must be unique within scope of the parent resource.
  late final pulumi.Output<String> gatewayId;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Resource name of the Gateway. Format: projects/{project}/locations/{location}/gateways/{gateway}
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The current state of the Gateway.
  late final pulumi.Output<String> state;

  /// Updated time.
  late final pulumi.Output<String> updateTime;

  GatewayApigatewayV1(
    String name, {
    GatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:apigateway/v1:Gateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiConfig = registerOutput<String>('apiConfig');
    this.createTime = registerOutput<String>('createTime');
    this.defaultHostname = registerOutput<String>('defaultHostname');
    this.displayName = registerOutput<String>('displayName');
    this.gatewayId = registerOutput<String>('gatewayId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
