// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectedvmwarevsphere_get_machine_extension_args_doc}
/// Arguments for getMachineExtension.
/// {@endtemplate}
/// {@macro pulumi_connectedvmwarevsphere_get_machine_extension_args_doc}
class GetMachineExtensionArgs {
  /// The name of the machine extension.
  final pulumi.Input<String> extensionName;
  /// The Resource Group Name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the machine containing the extension.
  final pulumi.Input<String> virtualMachineName;

  /// Creates a new [GetMachineExtensionArgs].
  /// [extensionName] The name of the machine extension.
  /// [resourceGroupName] The Resource Group Name.
  /// [virtualMachineName] The name of the machine containing the extension.
  GetMachineExtensionArgs({
    required String extensionName,
    required String resourceGroupName,
    required String virtualMachineName,
  }) :
      extensionName = pulumi.Input.asInput<String>(extensionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualMachineName = pulumi.Input.asInput<String>(virtualMachineName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensionName': extensionName,
      'resourceGroupName': resourceGroupName,
      'virtualMachineName': virtualMachineName,
    };
  }

  factory GetMachineExtensionArgs.fromMap(Map<String, dynamic> map) {
    return GetMachineExtensionArgs(
      extensionName: map['extensionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      virtualMachineName: map['virtualMachineName'] as String,
    );
  }
}

