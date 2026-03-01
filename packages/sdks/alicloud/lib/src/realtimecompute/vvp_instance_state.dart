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
    pulumi.Output<String>? createTime,
    pulumi.Output<int>? duration,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? pricingCycle,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? resourceId,
    pulumi.Output<VvpInstanceResourceSpec>? resourceSpec,
    pulumi.Output<String>? status,
    pulumi.Output<VvpInstanceStorage>? storage,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcId,
    pulumi.Output<List<String>>? vswitchIds,
    pulumi.Output<String>? vvpInstanceName,
    pulumi.Output<String>? zoneId,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      duration = pulumi.Input.asOptionalInput<int>(duration),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      pricingCycle = pulumi.Input.asOptionalInput<String>(pricingCycle),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      resourceSpec = pulumi.Input.asOptionalInput<VvpInstanceResourceSpec>(resourceSpec),
      status = pulumi.Input.asOptionalInput<String>(status),
      storage = pulumi.Input.asOptionalInput<VvpInstanceStorage>(storage),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchIds = pulumi.Input.asOptionalInput<List<String>>(vswitchIds),
      vvpInstanceName = pulumi.Input.asOptionalInput<String>(vvpInstanceName),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      duration: map['duration'] == null ? null : pulumi.Output.create<int>(map['duration'] as int),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      pricingCycle: map['pricingCycle'] == null ? null : pulumi.Output.create<String>(map['pricingCycle'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
      resourceSpec: map['resourceSpec'] == null ? null : pulumi.Output.create<VvpInstanceResourceSpec>(VvpInstanceResourceSpec.fromMap((map['resourceSpec'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      storage: map['storage'] == null ? null : pulumi.Output.create<VvpInstanceStorage>(VvpInstanceStorage.fromMap((map['storage'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchIds: map['vswitchIds'] == null ? null : pulumi.Output.create<List<String>>((map['vswitchIds'] as List).cast<String>()),
      vvpInstanceName: map['vvpInstanceName'] == null ? null : pulumi.Output.create<String>(map['vvpInstanceName'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

