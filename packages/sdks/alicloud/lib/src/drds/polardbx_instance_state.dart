// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PolardbxInstance resources.
class PolardbxInstanceState {
  /// Compute node specifications.
  final pulumi.Input<String>? cnClass;
  /// Number of computing nodes.
  final pulumi.Input<int>? cnNodeCount;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// Instance remarks
  final pulumi.Input<String>? description;
  /// Storage node specifications.
  final pulumi.Input<String>? dnClass;
  /// The number of storage nodes.
  final pulumi.Input<int>? dnNodeCount;
  /// Engine version, default 5.7
  final pulumi.Input<String>? engineVersion;
  /// Whether the instance is read-only.
  final pulumi.Input<bool>? isReadDbInstance;
  /// If the instance is a read-only instance, you must specify the primary instance.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? primaryDbInstanceName;
  /// Primary Availability Zone.
  final pulumi.Input<String>? primaryZone;
  /// The region ID of the resource
  final pulumi.Input<String>? regionId;
  /// The resource group ID can be empty. This parameter is not supported for the time being.
  final pulumi.Input<String>? resourceGroupId;
  /// Secondary availability zone.
  final pulumi.Input<String>? secondaryZone;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// Third Availability Zone.
  final pulumi.Input<String>? tertiaryZone;
  /// Topology type:
  final pulumi.Input<String>? topologyType;
  /// The VPC ID.
  final pulumi.Input<String>? vpcId;
  /// The ID of the virtual switch.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [PolardbxInstanceState].
  /// [cnClass] Compute node specifications.
  /// [cnNodeCount] Number of computing nodes.
  /// [createTime] The creation time of the resource
  /// [description] Instance remarks
  /// [dnClass] Storage node specifications.
  /// [dnNodeCount] The number of storage nodes.
  /// [engineVersion] Engine version, default 5.7
  /// [isReadDbInstance] Whether the instance is read-only.
  /// [primaryDbInstanceName] If the instance is a read-only instance, you must specify the primary instance.
  /// [primaryZone] Primary Availability Zone.
  /// [regionId] The region ID of the resource
  /// [resourceGroupId] The resource group ID can be empty. This parameter is not supported for the time being.
  /// [secondaryZone] Secondary availability zone.
  /// [status] The status of the resource
  /// [tertiaryZone] Third Availability Zone.
  /// [topologyType] Topology type:
  /// [vpcId] The VPC ID.
  /// [vswitchId] The ID of the virtual switch.
  PolardbxInstanceState({
    pulumi.Output<String>? cnClass,
    pulumi.Output<int>? cnNodeCount,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? dnClass,
    pulumi.Output<int>? dnNodeCount,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<bool>? isReadDbInstance,
    pulumi.Output<String>? primaryDbInstanceName,
    pulumi.Output<String>? primaryZone,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? secondaryZone,
    pulumi.Output<String>? status,
    pulumi.Output<String>? tertiaryZone,
    pulumi.Output<String>? topologyType,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
  }) :
      cnClass = pulumi.Input.asOptionalInput<String>(cnClass),
      cnNodeCount = pulumi.Input.asOptionalInput<int>(cnNodeCount),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      dnClass = pulumi.Input.asOptionalInput<String>(dnClass),
      dnNodeCount = pulumi.Input.asOptionalInput<int>(dnNodeCount),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      isReadDbInstance = pulumi.Input.asOptionalInput<bool>(isReadDbInstance),
      primaryDbInstanceName = pulumi.Input.asOptionalInput<String>(primaryDbInstanceName),
      primaryZone = pulumi.Input.asOptionalInput<String>(primaryZone),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      secondaryZone = pulumi.Input.asOptionalInput<String>(secondaryZone),
      status = pulumi.Input.asOptionalInput<String>(status),
      tertiaryZone = pulumi.Input.asOptionalInput<String>(tertiaryZone),
      topologyType = pulumi.Input.asOptionalInput<String>(topologyType),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cnClass': ?cnClass,
      'cnNodeCount': ?cnNodeCount,
      'createTime': ?createTime,
      'description': ?description,
      'dnClass': ?dnClass,
      'dnNodeCount': ?dnNodeCount,
      'engineVersion': ?engineVersion,
      'isReadDbInstance': ?isReadDbInstance,
      'primaryDbInstanceName': ?primaryDbInstanceName,
      'primaryZone': ?primaryZone,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'secondaryZone': ?secondaryZone,
      'status': ?status,
      'tertiaryZone': ?tertiaryZone,
      'topologyType': ?topologyType,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory PolardbxInstanceState.fromMap(Map<String, dynamic> map) {
    return PolardbxInstanceState(
      cnClass: map['cnClass'] == null ? null : pulumi.Output.create<String>(map['cnClass'] as String),
      cnNodeCount: map['cnNodeCount'] == null ? null : pulumi.Output.create<int>(map['cnNodeCount'] as int),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dnClass: map['dnClass'] == null ? null : pulumi.Output.create<String>(map['dnClass'] as String),
      dnNodeCount: map['dnNodeCount'] == null ? null : pulumi.Output.create<int>(map['dnNodeCount'] as int),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      isReadDbInstance: map['isReadDbInstance'] == null ? null : pulumi.Output.create<bool>(map['isReadDbInstance'] as bool),
      primaryDbInstanceName: map['primaryDbInstanceName'] == null ? null : pulumi.Output.create<String>(map['primaryDbInstanceName'] as String),
      primaryZone: map['primaryZone'] == null ? null : pulumi.Output.create<String>(map['primaryZone'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      secondaryZone: map['secondaryZone'] == null ? null : pulumi.Output.create<String>(map['secondaryZone'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tertiaryZone: map['tertiaryZone'] == null ? null : pulumi.Output.create<String>(map['tertiaryZone'] as String),
      topologyType: map['topologyType'] == null ? null : pulumi.Output.create<String>(map['topologyType'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

