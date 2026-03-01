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
    required String cnClass,
    required int cnNodeCount,
    String? description,
    required String dnClass,
    required int dnNodeCount,
    String? engineVersion,
    bool? isReadDbInstance,
    String? primaryDbInstanceName,
    required String primaryZone,
    String? resourceGroupId,
    String? secondaryZone,
    String? tertiaryZone,
    required String topologyType,
    required String vpcId,
    required String vswitchId,
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
      cnClass: map['cnClass'] as String,
      cnNodeCount: map['cnNodeCount'] as int,
      description: map['description'] == null ? null : map['description'] as String,
      dnClass: map['dnClass'] as String,
      dnNodeCount: map['dnNodeCount'] as int,
      engineVersion: map['engineVersion'] == null ? null : map['engineVersion'] as String,
      isReadDbInstance: map['isReadDbInstance'] == null ? null : map['isReadDbInstance'] as bool,
      primaryDbInstanceName: map['primaryDbInstanceName'] == null ? null : map['primaryDbInstanceName'] as String,
      primaryZone: map['primaryZone'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      secondaryZone: map['secondaryZone'] == null ? null : map['secondaryZone'] as String,
      tertiaryZone: map['tertiaryZone'] == null ? null : map['tertiaryZone'] as String,
      topologyType: map['topologyType'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

