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
  GetVirtualMachineTemplateArgs({
    required String resourceGroupName,
    required String virtualMachineTemplateName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualMachineTemplateName = pulumi.Input.asInput<String>(virtualMachineTemplateName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'virtualMachineTemplateName': virtualMachineTemplateName,
    };
  }

  factory GetVirtualMachineTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineTemplateArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      virtualMachineTemplateName: map['virtualMachineTemplateName'] as String,
    );
  }
}

