// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_peering_connection_timeouts.dart';

/// {@template pulumi_odb_network_peering_connection_network_peering_connection_args_doc}
/// The set of arguments for NetworkPeeringConnection.
/// {@endtemplate}
/// {@macro pulumi_odb_network_peering_connection_network_peering_connection_args_doc}
class NetworkPeeringConnectionArgs {
  /// Display name of the ODB network peering connection. Changing this will force Terraform to create a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> displayName;
  /// ARN of the ODB network that initiates the peering connection. Changing this will force Terraform to create a new resource. Either odb_network_id or odb_network_arn should be used.
  final pulumi.Input<String>? odbNetworkArn;
  /// The unique identifier of the ODB network that initiates the peering connection. A sample ID is `odbpcx-abcdefgh12345678`. Changing this will force Terraform to create a new resource.
  final pulumi.Input<String>? odbNetworkId;
  /// The unique identifier of the ODB peering connection. Changing this will force Terraform to create a new resource. Either odb_network_id or odb_network_arn should be used.
  final pulumi.Input<String> peerNetworkId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<NetworkPeeringConnectionTimeouts>? timeouts;

  /// Creates a new [NetworkPeeringConnectionArgs].
  /// [displayName] Display name of the ODB network peering connection. Changing this will force Terraform to create a new resource.
  /// [odbNetworkArn] ARN of the ODB network that initiates the peering connection. Changing this will force Terraform to create a new resource. Either odb_network_id or odb_network_arn should be used.
  /// [odbNetworkId] The unique identifier of the ODB network that initiates the peering connection. A sample ID is `odbpcx-abcdefgh12345678`. Changing this will force Terraform to create a new resource.
  /// [peerNetworkId] The unique identifier of the ODB peering connection. Changing this will force Terraform to create a new resource. Either odb_network_id or odb_network_arn should be used.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  NetworkPeeringConnectionArgs({
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? odbNetworkArn,
    pulumi.Output<String>? odbNetworkId,
    required pulumi.Output<String> peerNetworkId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<NetworkPeeringConnectionTimeouts>? timeouts,
  }) :
      displayName = pulumi.Input.asInput<String>(displayName),
      odbNetworkArn = pulumi.Input.asOptionalInput<String>(odbNetworkArn),
      odbNetworkId = pulumi.Input.asOptionalInput<String>(odbNetworkId),
      peerNetworkId = pulumi.Input.asInput<String>(peerNetworkId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<NetworkPeeringConnectionTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'odbNetworkArn': ?odbNetworkArn,
      'odbNetworkId': ?odbNetworkId,
      'peerNetworkId': peerNetworkId,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<NetworkPeeringConnectionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory NetworkPeeringConnectionArgs.fromMap(Map<String, dynamic> map) {
    return NetworkPeeringConnectionArgs(
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      odbNetworkArn: map['odbNetworkArn'] == null ? null : pulumi.Output.create<String>(map['odbNetworkArn'] as String),
      odbNetworkId: map['odbNetworkId'] == null ? null : pulumi.Output.create<String>(map['odbNetworkId'] as String),
      peerNetworkId: pulumi.Output.create<String>(map['peerNetworkId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<NetworkPeeringConnectionTimeouts>(NetworkPeeringConnectionTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

