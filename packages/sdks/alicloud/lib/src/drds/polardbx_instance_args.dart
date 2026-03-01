// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_drds_polardbx_instance_polardbx_instance_args_doc}
/// The set of arguments for PolardbxInstance.
/// {@endtemplate}
/// {@macro pulumi_drds_polardbx_instance_polardbx_instance_args_doc}
class PolardbxInstanceArgs {
  /// Compute node specifications.
  final pulumi.Input<String> cnClass;
  /// Number of computing nodes.
  final pulumi.Input<int> cnNodeCount;
  /// Instance remarks
  final pulumi.Input<String>? description;
  /// Storage node specifications.
  final pulumi.Input<String> dnClass;
  /// The number of storage nodes.
  final pulumi.Input<int> dnNodeCount;
  /// Engine version, default 5.7
  final pulumi.Input<String>? engineVersion;
  /// Whether the instance is read-only.
  final pulumi.Input<bool>? isReadDbInstance;
  /// If the instance is a read-only instance, you must specify the primary instance.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? primaryDbInstanceName;
  /// Primary Availability Zone.
  final pulumi.Input<String> primaryZone;
  /// The resource group ID can be empty. This parameter is not supported for the time being.
  final pulumi.Input<String>? resourceGroupId;
  /// Secondary availability zone.
  final pulumi.Input<String>? secondaryZone;
  /// Third Availability Zone.
  final pulumi.Input<String>? tertiaryZone;
  /// Topology type:
  final pulumi.Input<String> topologyType;
  /// The VPC ID.
  final pulumi.Input<String> vpcId;
  /// The ID of the virtual switch.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [PolardbxInstanceArgs].
  /// [cnClass] Compute node specifications.
  /// [cnNodeCount] Number of computing nodes.
  /// [description] Instance remarks
  /// [dnClass] Storage node specifications.
  /// [dnNodeCount] The number of storage nodes.
  /// [engineVersion] Engine version, default 5.7
  /// [isReadDbInstance] Whether the instance is read-only.
  /// [primaryDbInstanceName] If the instance is a read-only instance, you must specify the primary instance.
  /// [primaryZone] Primary Availability Zone.
  /// [resourceGroupId] The resource group ID can be empty. This parameter is not supported for the time being.
  /// [secondaryZone] Secondary availability zone.
  /// [tertiaryZone] Third Availability Zone.
  /// [topologyType] Topology type:
  /// [vpcId] The VPC ID.
  /// [vswitchId] The ID of the virtual switch.
  PolardbxInstanceArgs({
    required pulumi.Output<String> cnClass,
    required pulumi.Output<int> cnNodeCount,
    pulumi.Output<String>? description,
    required pulumi.Output<String> dnClass,
    required pulumi.Output<int> dnNodeCount,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<bool>? isReadDbInstance,
    pulumi.Output<String>? primaryDbInstanceName,
    required pulumi.Output<String> primaryZone,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? secondaryZone,
    pulumi.Output<String>? tertiaryZone,
    required pulumi.Output<String> topologyType,
    required pulumi.Output<String> vpcId,
    required pulumi.Output<String> vswitchId,
  }) :
      cnClass = pulumi.Input.asInput<String>(cnClass),
      cnNodeCount = pulumi.Input.asInput<int>(cnNodeCount),
      description = pulumi.Input.asOptionalInput<String>(description),
      dnClass = pulumi.Input.asInput<String>(dnClass),
      dnNodeCount = pulumi.Input.asInput<int>(dnNodeCount),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      isReadDbInstance = pulumi.Input.asOptionalInput<bool>(isReadDbInstance),
      primaryDbInstanceName = pulumi.Input.asOptionalInput<String>(primaryDbInstanceName),
      primaryZone = pulumi.Input.asInput<String>(primaryZone),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      secondaryZone = pulumi.Input.asOptionalInput<String>(secondaryZone),
      tertiaryZone = pulumi.Input.asOptionalInput<String>(tertiaryZone),
      topologyType = pulumi.Input.asInput<String>(topologyType),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      vswitchId = pulumi.Input.asInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cnClass': cnClass,
      'cnNodeCount': cnNodeCount,
      'description': ?description,
      'dnClass': dnClass,
      'dnNodeCount': dnNodeCount,
      'engineVersion': ?engineVersion,
      'isReadDbInstance': ?isReadDbInstance,
      'primaryDbInstanceName': ?primaryDbInstanceName,
      'primaryZone': primaryZone,
      'resourceGroupId': ?resourceGroupId,
      'secondaryZone': ?secondaryZone,
      'tertiaryZone': ?tertiaryZone,
      'topologyType': topologyType,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory PolardbxInstanceArgs.fromMap(Map<String, dynamic> map) {
    return PolardbxInstanceArgs(
      cnClass: pulumi.Output.create<String>(map['cnClass'] as String),
      cnNodeCount: pulumi.Output.create<int>(map['cnNodeCount'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dnClass: pulumi.Output.create<String>(map['dnClass'] as String),
      dnNodeCount: pulumi.Output.create<int>(map['dnNodeCount'] as int),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      isReadDbInstance: map['isReadDbInstance'] == null ? null : pulumi.Output.create<bool>(map['isReadDbInstance'] as bool),
      primaryDbInstanceName: map['primaryDbInstanceName'] == null ? null : pulumi.Output.create<String>(map['primaryDbInstanceName'] as String),
      primaryZone: pulumi.Output.create<String>(map['primaryZone'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      secondaryZone: map['secondaryZone'] == null ? null : pulumi.Output.create<String>(map['secondaryZone'] as String),
      tertiaryZone: map['tertiaryZone'] == null ? null : pulumi.Output.create<String>(map['tertiaryZone'] as String),
      topologyType: pulumi.Output.create<String>(map['topologyType'] as String),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

