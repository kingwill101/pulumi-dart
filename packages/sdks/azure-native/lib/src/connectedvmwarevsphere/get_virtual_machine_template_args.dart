// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectedvmwarevsphere_get_virtual_machine_template_args_doc}
/// Arguments for getVirtualMachineTemplate.
/// {@endtemplate}
/// {@macro pulumi_connectedvmwarevsphere_get_virtual_machine_template_args_doc}
class GetVirtualMachineTemplateArgs {
  /// The Resource Group Name.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the virtual machine template resource.
  final pulumi.Input<String> virtualMachineTemplateName;

  /// Creates a new [GetVirtualMachineTemplateArgs].
  /// [resourceGroupName] The Resource Group Name.
  /// [virtualMachineTemplateName] Name of the virtual machine template resource.
  const GetVirtualMachineTemplateArgs({
    required this.resourceGroupName,
    required this.virtualMachineTemplateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'virtualMachineTemplateName': virtualMachineTemplateName,
    };
  }

  factory GetVirtualMachineTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineTemplateArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      virtualMachineTemplateName: pulumi.Input.fromValue(map['virtualMachineTemplateName'] as String),
    );
  }
}
