// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_guestconfiguration_get_guest_configuration_assignments_vmssargs_doc}
/// Arguments for getGuestConfigurationAssignmentsVMSS.
/// {@endtemplate}
/// {@macro pulumi_guestconfiguration_get_guest_configuration_assignments_vmssargs_doc}
class GetGuestConfigurationAssignmentsVMSSArgs {
  /// The guest configuration assignment name.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the virtual machine scale set.
  final pulumi.Input<String> vmssName;

  /// Creates a new [GetGuestConfigurationAssignmentsVMSSArgs].
  /// [name] The guest configuration assignment name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vmssName] The name of the virtual machine scale set.
  GetGuestConfigurationAssignmentsVMSSArgs({
    required String name,
    required String resourceGroupName,
    required String vmssName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vmssName = pulumi.Input.asInput<String>(vmssName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'vmssName': vmssName,
    };
  }

  factory GetGuestConfigurationAssignmentsVMSSArgs.fromMap(Map<String, dynamic> map) {
    return GetGuestConfigurationAssignmentsVMSSArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      vmssName: map['vmssName'] as String,
    );
  }
}

