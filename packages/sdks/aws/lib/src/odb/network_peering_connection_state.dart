// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_peering_connection_timeouts.dart';

/// Input properties used for looking up and filtering NetworkPeeringConnection resources.
class NetworkPeeringConnectionState {
  /// ARN of the ODB network peering connection.
  final pulumi.Input<String?>? arn;
  /// Created time of the ODB network peering connection.
  final pulumi.Input<String?>? createdAt;
  /// Display name of the ODB network peering connection. Changing this will force Terraform to create a new resource.
  final pulumi.Input<String?>? displayName;
  /// ARN of the ODB network that initiates the peering connection. Changing this will force Terraform to create a new resource. Either odbNetworkId or odbNetworkArn should be used.
  final pulumi.Input<String?>? odbNetworkArn;
  /// Unique identifier of the ODB network that initiates the peering connection. A sample ID is `odbpcx-abcdefgh12345678`. Changing this will force Terraform to create a new resource.
  final pulumi.Input<String?>? odbNetworkId;
  /// Type of the ODB peering connection.
  final pulumi.Input<String?>? odbPeeringConnectionType;
  /// ARN of the peer network peering connection.
  final pulumi.Input<String?>? peerNetworkArn;
  /// Set of peer network cidrs. Add remove is only supported during update operation. During create this attribute is compute only.
  final pulumi.Input<List<String>?>? peerNetworkCidrs;
  /// Unique identifier of the ODB peering connection. Changing this will force Terraform to create a new resource. Either odbNetworkId or odbNetworkArn should be used.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? peerNetworkId;
  /// Progress of the ODB network peering connection.
  final pulumi.Input<double?>? percentProgress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Status of the ODB network peering connection.
  final pulumi.Input<String?>? status;
  /// Reason for the current status of the ODB peering connection.
  final pulumi.Input<String?>? statusReason;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including inherited tags.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<NetworkPeeringConnectionTimeouts?>? timeouts;

  /// Creates a new [NetworkPeeringConnectionState].
  /// [arn] ARN of the ODB network peering connection.
  /// [createdAt] Created time of the ODB network peering connection.
  /// [displayName] Display name of the ODB network peering connection. Changing this will force Terraform to create a new resource.
  /// [odbNetworkArn] ARN of the ODB network that initiates the peering connection. Changing this will force Terraform to create a new resource. Either odbNetworkId or odbNetworkArn should be used.
  /// [odbNetworkId] Unique identifier of the ODB network that initiates the peering connection. A sample ID is `odbpcx-abcdefgh12345678`. Changing this will force Terraform to create a new resource.
  /// [odbPeeringConnectionType] Type of the ODB peering connection.
  /// [peerNetworkArn] ARN of the peer network peering connection.
  /// [peerNetworkCidrs] Set of peer network cidrs. Add remove is only supported during update operation. During create this attribute is compute only.
  /// [peerNetworkId] Unique identifier of the ODB peering connection. Changing this will force Terraform to create a new resource. Either odbNetworkId or odbNetworkArn should be used.
  /// [percentProgress] Progress of the ODB network peering connection.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of the ODB network peering connection.
  /// [statusReason] Reason for the current status of the ODB peering connection.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including inherited tags.
  /// [timeouts] Optional.
  const NetworkPeeringConnectionState({
    this.arn,
    this.createdAt,
    this.displayName,
    this.odbNetworkArn,
    this.odbNetworkId,
    this.odbPeeringConnectionType,
    this.peerNetworkArn,
    this.peerNetworkCidrs,
    this.peerNetworkId,
    this.percentProgress,
    this.region,
    this.status,
    this.statusReason,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdAt': ?createdAt,
      'displayName': ?displayName,
      'odbNetworkArn': ?odbNetworkArn,
      'odbNetworkId': ?odbNetworkId,
      'odbPeeringConnectionType': ?odbPeeringConnectionType,
      'peerNetworkArn': ?peerNetworkArn,
      'peerNetworkCidrs': ?peerNetworkCidrs,
      'peerNetworkId': ?peerNetworkId,
      'percentProgress': ?percentProgress,
      'region': ?region,
      'status': ?status,
      'statusReason': ?statusReason,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<NetworkPeeringConnectionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory NetworkPeeringConnectionState.fromMap(Map<String, dynamic> map) {
    return NetworkPeeringConnectionState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbNetworkArn: (() { final guardedValue = map['odbNetworkArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbNetworkId: (() { final guardedValue = map['odbNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbPeeringConnectionType: (() { final guardedValue = map['odbPeeringConnectionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerNetworkArn: (() { final guardedValue = map['peerNetworkArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerNetworkCidrs: (() { final guardedValue = map['peerNetworkCidrs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      peerNetworkId: (() { final guardedValue = map['peerNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      percentProgress: (() { final guardedValue = map['percentProgress']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusReason: (() { final guardedValue = map['statusReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkPeeringConnectionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
