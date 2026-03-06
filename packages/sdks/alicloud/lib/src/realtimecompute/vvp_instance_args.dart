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
  const VvpInstanceArgs({
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
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      pricingCycle: (() { final guardedValue = map['pricingCycle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceSpec: (() { final guardedValue = map['resourceSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VvpInstanceResourceSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storage: pulumi.Input.fromValue(VvpInstanceStorage.fromMap((map['storage']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchIds: pulumi.Input.fromValue((map['vswitchIds'] as List).cast<String>()),
      vvpInstanceName: pulumi.Input.fromValue(map['vvpInstanceName'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

