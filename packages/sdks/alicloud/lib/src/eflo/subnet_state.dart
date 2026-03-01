// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Subnet resources.
class SubnetState {
  /// CIDR network segment.
  final pulumi.Input<String>? cidr;
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;
  /// Modification time.
  final pulumi.Input<String>? gmtModified;
  /// Error message.
  final pulumi.Input<String>? message;
  /// Resource Group ID.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// The id of the subnet.
  final pulumi.Input<String>? subnetId;
  /// The Subnet name.
  final pulumi.Input<String>? subnetName;
  /// Eflo subnet usage type. optional value:
  /// - General type is not filled in
  /// - OOB:OOB type
  /// - LB: LB type
  final pulumi.Input<String>? type;
  /// The Eflo VPD ID.
  final pulumi.Input<String>? vpdId;
  /// The zone ID  of the resource.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [SubnetState].
  /// [cidr] CIDR network segment.
  /// [createTime] The creation time of the resource.
  /// [gmtModified] Modification time.
  /// [message] Error message.
  /// [resourceGroupId] Resource Group ID.
  /// [status] The status of the resource.
  /// [subnetId] The id of the subnet.
  /// [subnetName] The Subnet name.
  /// [type] Eflo subnet usage type. optional value:
  /// [vpdId] The Eflo VPD ID.
  /// [zoneId] The zone ID  of the resource.
  SubnetState({
    pulumi.Output<String>? cidr,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? gmtModified,
    pulumi.Output<String>? message,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? subnetId,
    pulumi.Output<String>? subnetName,
    pulumi.Output<String>? type,
    pulumi.Output<String>? vpdId,
    pulumi.Output<String>? zoneId,
  }) :
      cidr = pulumi.Input.asOptionalInput<String>(cidr),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      gmtModified = pulumi.Input.asOptionalInput<String>(gmtModified),
      message = pulumi.Input.asOptionalInput<String>(message),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      subnetName = pulumi.Input.asOptionalInput<String>(subnetName),
      type = pulumi.Input.asOptionalInput<String>(type),
      vpdId = pulumi.Input.asOptionalInput<String>(vpdId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'createTime': ?createTime,
      'gmtModified': ?gmtModified,
      'message': ?message,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'subnetId': ?subnetId,
      'subnetName': ?subnetName,
      'type': ?type,
      'vpdId': ?vpdId,
      'zoneId': ?zoneId,
    };
  }

  factory SubnetState.fromMap(Map<String, dynamic> map) {
    return SubnetState(
      cidr: map['cidr'] == null ? null : pulumi.Output.create<String>(map['cidr'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      gmtModified: map['gmtModified'] == null ? null : pulumi.Output.create<String>(map['gmtModified'] as String),
      message: map['message'] == null ? null : pulumi.Output.create<String>(map['message'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      subnetName: map['subnetName'] == null ? null : pulumi.Output.create<String>(map['subnetName'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      vpdId: map['vpdId'] == null ? null : pulumi.Output.create<String>(map['vpdId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

