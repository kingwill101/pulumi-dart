// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../network_peering_connection_timeouts/network_peering_connection_timeouts.dart';

/// The set of arguments for NetworkPeeringConnection.
class NetworkPeeringConnectionArgs {
  /// Display name of the ODB network peering connection. Changing this will force Terraform to create a new resource.
  ///
  /// The following arguments are optional:
  final Input<String> displayName;

  /// ARN of the ODB network that initiates the peering connection. Changing this will force Terraform to create a new resource. Either odb_network_id or odb_network_arn should be used.
  final Input<String>? odbNetworkArn;

  /// The unique identifier of the ODB network that initiates the peering connection. A sample ID is `odbpcx-abcdefgh12345678`. Changing this will force Terraform to create a new resource.
  final Input<String>? odbNetworkId;

  /// The unique identifier of the ODB peering connection. Changing this will force Terraform to create a new resource. Either odb_network_id or odb_network_arn should be used.
  final Input<String> peerNetworkId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<NetworkPeeringConnectionTimeouts>? timeouts;

  NetworkPeeringConnectionArgs({
    required this.displayName,
    this.odbNetworkArn,
    this.odbNetworkId,
    required this.peerNetworkId,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    final odbNetworkArnValue = odbNetworkArn;
    if (odbNetworkArnValue != null) {
      map['odbNetworkArn'] = odbNetworkArnValue;
    }
    final odbNetworkIdValue = odbNetworkId;
    if (odbNetworkIdValue != null) {
      map['odbNetworkId'] = odbNetworkIdValue;
    }
    map['peerNetworkId'] = peerNetworkId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          NetworkPeeringConnectionTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory NetworkPeeringConnectionArgs.fromMap(Map<String, dynamic> map) {
    return NetworkPeeringConnectionArgs(
      displayName: Input.asInput<String>(map['displayName']),
      odbNetworkArn: Input.asOptionalInput<String>(map['odbNetworkArn']),
      odbNetworkId: Input.asOptionalInput<String>(map['odbNetworkId']),
      peerNetworkId: Input.asInput<String>(map['peerNetworkId']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<NetworkPeeringConnectionTimeouts>(
          map['timeouts']),
    );
  }
}
