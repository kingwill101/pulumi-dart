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
    this.cidr,
    this.createTime,
    this.gmtModified,
    this.message,
    this.resourceGroupId,
    this.status,
    this.subnetId,
    this.subnetName,
    this.type,
    this.vpdId,
    this.zoneId,
  });

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
      cidr: map['cidr'] == null ? null : (map['cidr'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      gmtModified: map['gmtModified'] == null ? null : (map['gmtModified'] as String).input(),
      message: map['message'] == null ? null : (map['message'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
      subnetName: map['subnetName'] == null ? null : (map['subnetName'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      vpdId: map['vpdId'] == null ? null : (map['vpdId'] as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

