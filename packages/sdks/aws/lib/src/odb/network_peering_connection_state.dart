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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? odbNetworkArn,
    pulumi.Output<String>? odbNetworkId,
    pulumi.Output<String>? odbPeeringConnectionType,
    pulumi.Output<String>? peerNetworkArn,
    pulumi.Output<String>? peerNetworkId,
    pulumi.Output<double>? percentProgress,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<String>? statusReason,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<NetworkPeeringConnectionTimeouts>? timeouts,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      odbNetworkArn = pulumi.Input.asOptionalInput<String>(odbNetworkArn),
      odbNetworkId = pulumi.Input.asOptionalInput<String>(odbNetworkId),
      odbPeeringConnectionType = pulumi.Input.asOptionalInput<String>(odbPeeringConnectionType),
      peerNetworkArn = pulumi.Input.asOptionalInput<String>(peerNetworkArn),
      peerNetworkId = pulumi.Input.asOptionalInput<String>(peerNetworkId),
      percentProgress = pulumi.Input.asOptionalInput<double>(percentProgress),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      statusReason = pulumi.Input.asOptionalInput<String>(statusReason),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<NetworkPeeringConnectionTimeouts>(timeouts);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      odbNetworkArn: map['odbNetworkArn'] == null ? null : pulumi.Output.create<String>(map['odbNetworkArn'] as String),
      odbNetworkId: map['odbNetworkId'] == null ? null : pulumi.Output.create<String>(map['odbNetworkId'] as String),
      odbPeeringConnectionType: map['odbPeeringConnectionType'] == null ? null : pulumi.Output.create<String>(map['odbPeeringConnectionType'] as String),
      peerNetworkArn: map['peerNetworkArn'] == null ? null : pulumi.Output.create<String>(map['peerNetworkArn'] as String),
      peerNetworkId: map['peerNetworkId'] == null ? null : pulumi.Output.create<String>(map['peerNetworkId'] as String),
      percentProgress: map['percentProgress'] == null ? null : pulumi.Output.create<double>(map['percentProgress'] as double),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      statusReason: map['statusReason'] == null ? null : pulumi.Output.create<String>(map['statusReason'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<NetworkPeeringConnectionTimeouts>(NetworkPeeringConnectionTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

