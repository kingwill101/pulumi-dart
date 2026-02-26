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
    this.apiConfig = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.defaultHostname = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.gatewayId = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
