import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_args.dart';
import 'gateway_log_config.dart';
import 'gateway_network_access_config.dart';
import 'gateway_state.dart';
import 'gateway_vpc.dart';
import 'gateway_vswitch.dart';
import 'gateway_zone_config.dart';

/// ## Import
///
/// APIG Gateway can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:apig/gateway:Gateway example <id>
/// ```
class Gateway extends pulumi.CustomResource {
  /// The creation timestamp. Unit: milliseconds.
  late final pulumi.Output<int> createTime;

  /// The name of the resource
  late final pulumi.Output<String?> gatewayName;

  /// Describes the gateway type, which is categorized into the following two types:
  /// - API: indicates an API gateway
  /// - AI: Indicates an AI gateway
  late final pulumi.Output<String> gatewayType;

  /// Log Configuration See `log_config` below.
  late final pulumi.Output<GatewayLogConfig?> logConfig;

  /// Network Access Configuration See `network_access_config` below.
  late final pulumi.Output<GatewayNetworkAccessConfig?> networkAccessConfig;

  /// The payment type of the resource
  late final pulumi.Output<String> paymentType;

  /// The ID of the resource group
  late final pulumi.Output<String> resourceGroupId;

  /// Gateway instance specifications
  late final pulumi.Output<String?> spec;

  /// The status of the resource
  late final pulumi.Output<String> status;

  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;

  /// The VPC associated with the Gateway. See `vpc` below.
  late final pulumi.Output<GatewayVpc?> vpc;

  /// The virtual switch associated with the Gateway. See `vswitch` below.
  late final pulumi.Output<GatewayVswitch?> vswitch;

  /// Availability Zone Configuration See `zone_config` below.
  late final pulumi.Output<GatewayZoneConfig> zoneConfig;

  /// The List of zones associated with the Gateway. See `zones` below.
  late final pulumi.Output<List<Map<String, dynamic>>> zones;

  /// Creates a new [Gateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Gateway]. {@macro pulumi_apig_gateway_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Gateway(
    String name, {
    GatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:apig/gateway:Gateway',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<int>('createTime');
    gatewayName = registerOutput<String?>('gatewayName');
    gatewayType = registerOutput<String>('gatewayType');
    logConfig = registerOutput<GatewayLogConfig?>('logConfig');
    networkAccessConfig = registerOutput<GatewayNetworkAccessConfig?>(
      'networkAccessConfig',
    );
    paymentType = registerOutput<String>('paymentType');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    spec = registerOutput<String?>('spec');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vpc = registerOutput<GatewayVpc?>('vpc');
    vswitch = registerOutput<GatewayVswitch?>('vswitch');
    zoneConfig = registerOutput<GatewayZoneConfig>('zoneConfig');
    zones = registerOutput<List<Map<String, dynamic>>>('zones');
  }

  /// Gets an existing [Gateway] resource's state with the given [name] and [id].
  static Gateway get(
    String name,
    pulumi.Input<String> id, {
    GatewayState? state,
  }) {
    return Gateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Gateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:apig/gateway:Gateway',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<int>('createTime');
    gatewayName = registerOutput<String?>('gatewayName');
    gatewayType = registerOutput<String>('gatewayType');
    logConfig = registerOutput<GatewayLogConfig?>('logConfig');
    networkAccessConfig = registerOutput<GatewayNetworkAccessConfig?>(
      'networkAccessConfig',
    );
    paymentType = registerOutput<String>('paymentType');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    spec = registerOutput<String?>('spec');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vpc = registerOutput<GatewayVpc?>('vpc');
    vswitch = registerOutput<GatewayVswitch?>('vswitch');
    zoneConfig = registerOutput<GatewayZoneConfig>('zoneConfig');
    zones = registerOutput<List<Map<String, dynamic>>>('zones');
  }
}
