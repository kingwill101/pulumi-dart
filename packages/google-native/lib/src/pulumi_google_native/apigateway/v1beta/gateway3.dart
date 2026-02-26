import 'package:pulumi/pulumi.dart';
import 'gateway_args2.dart';

/// Creates a new Gateway in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Gateway3 extends CustomResource {
  /// Resource name of the API Config for this Gateway. Format: projects/{project}/locations/global/apis/{api}/configs/{apiConfig}
  late final Output<String> apiConfig;

  /// Created time.
  late final Output<String> createTime;

  /// The default API Gateway host name of the form `{gateway_id}-{hash}.{region_code}.gateway.dev`.
  late final Output<String> defaultHostname;

  /// Optional. Display name.
  late final Output<String> displayName;

  /// Required. Identifier to assign to the Gateway. Must be unique within scope of the parent resource.
  late final Output<String> gatewayId;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Resource name of the Gateway. Format: projects/{project}/locations/{location}/gateways/{gateway}
  late final Output<String> name;
  late final Output<String> project;

  /// The current state of the Gateway.
  late final Output<String> state;

  /// Updated time.
  late final Output<String> updateTime;

  Gateway3(
    String name, {
    GatewayArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigateway/v1beta:Gateway',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
