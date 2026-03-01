// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recoveryservices_get_replicationv_center_args_doc}
/// Arguments for getReplicationvCenter.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_get_replicationv_center_args_doc}
class GetReplicationvCenterArgs {
  /// Fabric name.
  final pulumi.Input<String> fabricName;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;
  /// vcenter name.
  final pulumi.Input<String> vcenterName;

  /// Creates a new [GetReplicationvCenterArgs].
  /// [fabricName] Fabric name.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  /// [vcenterName] vcenter name.
  GetReplicationvCenterArgs({
    required String fabricName,
    required String resourceGroupName,
    required String resourceName,
    required String vcenterName,
  }) :
      fabricName = pulumi.Input.asInput<String>(fabricName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      vcenterName = pulumi.Input.asInput<String>(vcenterName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': fabricName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'vcenterName': vcenterName,
    };
  }

  factory GetReplicationvCenterArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationvCenterArgs(
      fabricName: map['fabricName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
      vcenterName: map['vcenterName'] as String,
    );
  }
}

