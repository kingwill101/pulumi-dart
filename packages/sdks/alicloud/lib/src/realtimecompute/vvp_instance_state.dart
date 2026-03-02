// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vvp_instance_resource_spec.dart';
import 'vvp_instance_storage.dart';

/// Input properties used for looking up and filtering VvpInstance resources.
class VvpInstanceState {
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;
  /// The number of subscription periods. If the payment type is PRE, this parameter is required.
  final pulumi.Input<int>? duration;
  /// The payment type of the resource.
  final pulumi.Input<String>? paymentType;
  /// The subscription period. If the payment type is PRE, this parameter is required.
  final pulumi.Input<String>? pricingCycle;
  /// The resource group to which the newly purchased instance belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// (Available since v1.264.0) The ID of the K8s cluster.
  final pulumi.Input<String>? resourceId;
  /// Resource specifications. See `resource_spec` below.
  final pulumi.Input<VvpInstanceResourceSpec>? resourceSpec;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// Store information. See `storage` below.
  final pulumi.Input<VvpInstanceStorage>? storage;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VPC ID of the user.
  final pulumi.Input<String>? vpcId;
  /// Virtual Switch ID.
  final pulumi.Input<List<String>>? vswitchIds;
  /// The name of the workspace.
  final pulumi.Input<String>? vvpInstanceName;
  /// The zone ID of the resource.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [VvpInstanceState].
  /// [createTime] The creation time of the resource.
  /// [duration] The number of subscription periods. If the payment type is PRE, this parameter is required.
  /// [paymentType] The payment type of the resource.
  /// [pricingCycle] The subscription period. If the payment type is PRE, this parameter is required.
  /// [resourceGroupId] The resource group to which the newly purchased instance belongs.
  /// [resourceId] (Available since v1.264.0) The ID of the K8s cluster.
  /// [resourceSpec] Resource specifications. See `resource_spec` below.
  /// [status] The status of the resource.
  /// [storage] Store information. See `storage` below.
  /// [tags] The tags of the resource.
  /// [vpcId] The VPC ID of the user.
  /// [vswitchIds] Virtual Switch ID.
  /// [vvpInstanceName] The name of the workspace.
  /// [zoneId] The zone ID of the resource.
  VvpInstanceState({
    this.createTime,
    this.duration,
    this.paymentType,
    this.pricingCycle,
    this.resourceGroupId,
    this.resourceId,
    this.resourceSpec,
    this.status,
    this.storage,
    this.tags,
    this.vpcId,
    this.vswitchIds,
    this.vvpInstanceName,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'duration': ?duration,
      'paymentType': ?paymentType,
      'pricingCycle': ?pricingCycle,
      'resourceGroupId': ?resourceGroupId,
      'resourceId': ?resourceId,
      'resourceSpec': ?pulumi.Input.mapOptionalInputValue<VvpInstanceResourceSpec, Map<String, dynamic>>(resourceSpec, (value) => value.toMap()),
      'status': ?status,
      'storage': ?pulumi.Input.mapOptionalInputValue<VvpInstanceStorage, Map<String, dynamic>>(storage, (value) => value.toMap()),
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchIds': ?vswitchIds,
      'vvpInstanceName': ?vvpInstanceName,
      'zoneId': ?zoneId,
    };
  }

  factory VvpInstanceState.fromMap(Map<String, dynamic> map) {
    return VvpInstanceState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      duration: map['duration'] == null ? null : (map['duration'] as int).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      pricingCycle: map['pricingCycle'] == null ? null : (map['pricingCycle'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      resourceSpec: map['resourceSpec'] == null ? null : (VvpInstanceResourceSpec.fromMap((map['resourceSpec'] as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      storage: map['storage'] == null ? null : (VvpInstanceStorage.fromMap((map['storage'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vswitchIds: map['vswitchIds'] == null ? null : ((map['vswitchIds'] as List).cast<String>()).input(),
      vvpInstanceName: map['vvpInstanceName'] == null ? null : (map['vvpInstanceName'] as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

