// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectedvmwarevsphere_get_vcenter_args_doc}
/// Arguments for getVCenter.
/// {@endtemplate}
/// {@macro pulumi_connectedvmwarevsphere_get_vcenter_args_doc}
class GetVCenterArgs {
  /// The Resource Group Name.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the vCenter.
  final pulumi.Input<String> vcenterName;

  /// Creates a new [GetVCenterArgs].
  /// [resourceGroupName] The Resource Group Name.
  /// [vcenterName] Name of the vCenter.
  GetVCenterArgs({
    required String resourceGroupName,
    required String vcenterName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vcenterName = pulumi.Input.asInput<String>(vcenterName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'vcenterName': vcenterName,
    };
  }

  factory GetVCenterArgs.fromMap(Map<String, dynamic> map) {
    return GetVCenterArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      vcenterName: map['vcenterName'] as String,
    );
  }
}

