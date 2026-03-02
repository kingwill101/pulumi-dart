// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vvp_instance_resource_spec.dart';
import 'vvp_instance_storage.dart';

/// {@template pulumi_realtimecompute_vvp_instance_vvp_instance_args_doc}
/// The set of arguments for VvpInstance.
/// {@endtemplate}
/// {@macro pulumi_realtimecompute_vvp_instance_vvp_instance_args_doc}
class VvpInstanceArgs {
  /// The number of subscription periods. If the payment type is PRE, this parameter is required.
  final pulumi.Input<int>? duration;
  /// The payment type of the resource.
  final pulumi.Input<String> paymentType;
  /// The subscription period. If the payment type is PRE, this parameter is required.
  final pulumi.Input<String>? pricingCycle;
  /// The resource group to which the newly purchased instance belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// Resource specifications. See `resource_spec` below.
  final pulumi.Input<VvpInstanceResourceSpec>? resourceSpec;
  /// Store information. See `storage` below.
  final pulumi.Input<VvpInstanceStorage> storage;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VPC ID of the user.
  final pulumi.Input<String> vpcId;
  /// Virtual Switch ID.
  final pulumi.Input<List<String>> vswitchIds;
  /// The name of the workspace.
  final pulumi.Input<String> vvpInstanceName;
  /// The zone ID of the resource.
  final pulumi.Input<String> zoneId;

  /// Creates a new [VvpInstanceArgs].
  /// [duration] The number of subscription periods. If the payment type is PRE, this parameter is required.
  /// [paymentType] The payment type of the resource.
  /// [pricingCycle] The subscription period. If the payment type is PRE, this parameter is required.
  /// [resourceGroupId] The resource group to which the newly purchased instance belongs.
  /// [resourceSpec] Resource specifications. See `resource_spec` below.
  /// [storage] Store information. See `storage` below.
  /// [tags] The tags of the resource.
  /// [vpcId] The VPC ID of the user.
  /// [vswitchIds] Virtual Switch ID.
  /// [vvpInstanceName] The name of the workspace.
  /// [zoneId] The zone ID of the resource.
  VvpInstanceArgs({
    this.duration,
    required this.paymentType,
    this.pricingCycle,
    this.resourceGroupId,
    this.resourceSpec,
    required this.storage,
    this.tags,
    required this.vpcId,
    required this.vswitchIds,
    required this.vvpInstanceName,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
      'paymentType': paymentType,
      'pricingCycle': ?pricingCycle,
      'resourceGroupId': ?resourceGroupId,
      'resourceSpec': ?pulumi.Input.mapOptionalInputValue<VvpInstanceResourceSpec, Map<String, dynamic>>(resourceSpec, (value) => value.toMap()),
      'storage': pulumi.Input.mapInputValue<VvpInstanceStorage, Map<String, dynamic>>(storage, (value) => value.toMap()),
      'tags': ?tags,
      'vpcId': vpcId,
      'vswitchIds': vswitchIds,
      'vvpInstanceName': vvpInstanceName,
      'zoneId': zoneId,
    };
  }

  factory VvpInstanceArgs.fromMap(Map<String, dynamic> map) {
    return VvpInstanceArgs(
      duration: map['duration'] == null ? null : (map['duration'] as int).input(),
      paymentType: (map['paymentType'] as String).input(),
      pricingCycle: map['pricingCycle'] == null ? null : (map['pricingCycle'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      resourceSpec: map['resourceSpec'] == null ? null : (VvpInstanceResourceSpec.fromMap((map['resourceSpec'] as Map).cast<String, dynamic>())).input(),
      storage: (VvpInstanceStorage.fromMap((map['storage'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchIds: ((map['vswitchIds'] as List).cast<String>()).input(),
      vvpInstanceName: (map['vvpInstanceName'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

