// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_peering_connection_timeouts.dart';

/// {@template pulumi_odb_network_peering_connection_network_peering_connection_args_doc}
/// The set of arguments for NetworkPeeringConnection.
/// {@endtemplate}
/// {@macro pulumi_odb_network_peering_connection_network_peering_connection_args_doc}
class NetworkPeeringConnectionArgs {
  /// Display name of the ODB network peering connection. Changing this will force Terraform to create a new resource.
  final pulumi.Input<String> displayName;
  /// ARN of the ODB network that initiates the peering connection. Changing this will force Terraform to create a new resource. Either odbNetworkId or odbNetworkArn should be used.
  final pulumi.Input<String?>? odbNetworkArn;
  /// Unique identifier of the ODB network that initiates the peering connection. A sample ID is `odbpcx-abcdefgh12345678`. Changing this will force Terraform to create a new resource.
  final pulumi.Input<String?>? odbNetworkId;
  /// Set of peer network cidrs. Add remove is only supported during update operation. During create this attribute is compute only.
  final pulumi.Input<List<String>?>? peerNetworkCidrs;
  /// Unique identifier of the ODB peering connection. Changing this will force Terraform to create a new resource. Either odbNetworkId or odbNetworkArn should be used.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> peerNetworkId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<NetworkPeeringConnectionTimeouts?>? timeouts;

  /// Creates a new [NetworkPeeringConnectionArgs].
  /// [displayName] Display name of the ODB network peering connection. Changing this will force Terraform to create a new resource.
  /// [odbNetworkArn] ARN of the ODB network that initiates the peering connection. Changing this will force Terraform to create a new resource. Either odbNetworkId or odbNetworkArn should be used.
  /// [odbNetworkId] Unique identifier of the ODB network that initiates the peering connection. A sample ID is `odbpcx-abcdefgh12345678`. Changing this will force Terraform to create a new resource.
  /// [peerNetworkCidrs] Set of peer network cidrs. Add remove is only supported during update operation. During create this attribute is compute only.
  /// [peerNetworkId] Unique identifier of the ODB peering connection. Changing this will force Terraform to create a new resource. Either odbNetworkId or odbNetworkArn should be used.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const NetworkPeeringConnectionArgs({
    required this.displayName,
    this.odbNetworkArn,
    this.odbNetworkId,
    this.peerNetworkCidrs,
    required this.peerNetworkId,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'odbNetworkArn': ?odbNetworkArn,
      'odbNetworkId': ?odbNetworkId,
      'peerNetworkCidrs': ?peerNetworkCidrs,
      'peerNetworkId': peerNetworkId,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<NetworkPeeringConnectionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory NetworkPeeringConnectionArgs.fromMap(Map<String, dynamic> map) {
    return NetworkPeeringConnectionArgs(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      odbNetworkArn: (() { final guardedValue = map['odbNetworkArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbNetworkId: (() { final guardedValue = map['odbNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerNetworkCidrs: (() { final guardedValue = map['peerNetworkCidrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      peerNetworkId: pulumi.Input.fromValue(map['peerNetworkId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkPeeringConnectionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
