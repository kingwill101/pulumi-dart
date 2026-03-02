// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_peering_connection_timeouts.dart';

/// Input properties used for looking up and filtering NetworkPeeringConnection resources.
class NetworkPeeringConnectionState {
  final pulumi.Input<String>? arn;
  /// Created time of the ODB network peering connection.
  final pulumi.Input<String>? createdAt;
  /// Display name of the ODB network peering connection. Changing this will force Terraform to create a new resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? displayName;
  /// ARN of the ODB network that initiates the peering connection. Changing this will force Terraform to create a new resource. Either odb_network_id or odb_network_arn should be used.
  final pulumi.Input<String>? odbNetworkArn;
  /// The unique identifier of the ODB network that initiates the peering connection. A sample ID is `odbpcx-abcdefgh12345678`. Changing this will force Terraform to create a new resource.
  final pulumi.Input<String>? odbNetworkId;
  /// Type of the ODB peering connection.
  final pulumi.Input<String>? odbPeeringConnectionType;
  /// ARN of the peer network peering connection.
  final pulumi.Input<String>? peerNetworkArn;
  /// The unique identifier of the ODB peering connection. Changing this will force Terraform to create a new resource. Either odb_network_id or odb_network_arn should be used.
  final pulumi.Input<String>? peerNetworkId;
  /// Progress of the ODB network peering connection.
  final pulumi.Input<double>? percentProgress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Status of the ODB network peering connection.
  final pulumi.Input<String>? status;
  /// The reason for the current status of the ODB peering connection.
  final pulumi.Input<String>? statusReason;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including inherited tags.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<NetworkPeeringConnectionTimeouts>? timeouts;

  /// Creates a new [NetworkPeeringConnectionState].
  /// [arn] Optional.
  /// [createdAt] Created time of the ODB network peering connection.
  /// [displayName] Display name of the ODB network peering connection. Changing this will force Terraform to create a new resource.
  /// [odbNetworkArn] ARN of the ODB network that initiates the peering connection. Changing this will force Terraform to create a new resource. Either odb_network_id or odb_network_arn should be used.
  /// [odbNetworkId] The unique identifier of the ODB network that initiates the peering connection. A sample ID is `odbpcx-abcdefgh12345678`. Changing this will force Terraform to create a new resource.
  /// [odbPeeringConnectionType] Type of the ODB peering connection.
  /// [peerNetworkArn] ARN of the peer network peering connection.
  /// [peerNetworkId] The unique identifier of the ODB peering connection. Changing this will force Terraform to create a new resource. Either odb_network_id or odb_network_arn should be used.
  /// [percentProgress] Progress of the ODB network peering connection.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of the ODB network peering connection.
  /// [statusReason] The reason for the current status of the ODB peering connection.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including inherited tags.
  /// [timeouts] Optional.
  NetworkPeeringConnectionState({
    this.arn,
    this.createdAt,
    this.displayName,
    this.odbNetworkArn,
    this.odbNetworkId,
    this.odbPeeringConnectionType,
    this.peerNetworkArn,
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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      createdAt: map['createdAt'] == null ? null : ((map['createdAt'] as String).input()).input(),
      displayName: map['displayName'] == null ? null : ((map['displayName'] as String).input()).input(),
      odbNetworkArn: map['odbNetworkArn'] == null ? null : ((map['odbNetworkArn'] as String).input()).input(),
      odbNetworkId: map['odbNetworkId'] == null ? null : ((map['odbNetworkId'] as String).input()).input(),
      odbPeeringConnectionType: map['odbPeeringConnectionType'] == null ? null : ((map['odbPeeringConnectionType'] as String).input()).input(),
      peerNetworkArn: map['peerNetworkArn'] == null ? null : ((map['peerNetworkArn'] as String).input()).input(),
      peerNetworkId: map['peerNetworkId'] == null ? null : ((map['peerNetworkId'] as String).input()).input(),
      percentProgress: map['percentProgress'] == null ? null : ((map['percentProgress'] as double).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      statusReason: map['statusReason'] == null ? null : ((map['statusReason'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((NetworkPeeringConnectionTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

