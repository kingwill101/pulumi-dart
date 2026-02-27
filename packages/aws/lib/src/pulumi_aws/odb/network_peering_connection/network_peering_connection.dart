import 'package:pulumi/pulumi.dart';
import '../network_peering_connection_timeouts/network_peering_connection_timeouts.dart';
import 'network_peering_connection_args.dart';

/// Terraform  resource for managing oracle database network peering resource in AWS. If underlying odb network is shared, ARN must be used while creating network peering.
///
/// You can find out more about Oracle Database@AWS from [User Guide](https://docs.aws.amazon.com/odb/latest/UserGuide/what-is-odb.html).
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import odb network peering using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:odb/networkPeeringConnection:NetworkPeeringConnection example example
/// ```
class NetworkPeeringConnection extends CustomResource {
  late final Output<String> arn;

  /// Created time of the ODB network peering connection.
  late final Output<String> createdAt;

  /// Display name of the ODB network peering connection. Changing this will force Terraform to create a new resource.
  ///
  /// The following arguments are optional:
  late final Output<String> displayName;

  /// ARN of the ODB network that initiates the peering connection. Changing this will force Terraform to create a new resource. Either odb_network_id or odb_network_arn should be used.
  late final Output<String> odbNetworkArn;

  /// The unique identifier of the ODB network that initiates the peering connection. A sample ID is `odbpcx-abcdefgh12345678`. Changing this will force Terraform to create a new resource.
  late final Output<String> odbNetworkId;

  /// Type of the ODB peering connection.
  late final Output<String> odbPeeringConnectionType;

  /// ARN of the peer network peering connection.
  late final Output<String> peerNetworkArn;

  /// The unique identifier of the ODB peering connection. Changing this will force Terraform to create a new resource. Either odb_network_id or odb_network_arn should be used.
  late final Output<String> peerNetworkId;

  /// Progress of the ODB network peering connection.
  late final Output<double> percentProgress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Status of the ODB network peering connection.
  late final Output<String> status;

  /// The reason for the current status of the ODB peering connection.
  late final Output<String> statusReason;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including inherited tags.
  late final Output<Map<String, String>> tagsAll;
  late final Output<NetworkPeeringConnectionTimeouts?> timeouts;

  NetworkPeeringConnection(
    String name, {
    NetworkPeeringConnectionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:odb/networkPeeringConnection:NetworkPeeringConnection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdAt = registerOutput<String>('createdAt');
    this.displayName = registerOutput<String>('displayName');
    this.odbNetworkArn = registerOutput<String>('odbNetworkArn');
    this.odbNetworkId = registerOutput<String>('odbNetworkId');
    this.odbPeeringConnectionType =
        registerOutput<String>('odbPeeringConnectionType');
    this.peerNetworkArn = registerOutput<String>('peerNetworkArn');
    this.peerNetworkId = registerOutput<String>('peerNetworkId');
    this.percentProgress = registerOutput<double>('percentProgress');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.statusReason = registerOutput<String>('statusReason');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts =
        registerOutput<NetworkPeeringConnectionTimeouts?>('timeouts');
  }
}
