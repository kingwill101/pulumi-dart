// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridcompute_get_machine_extension_args_doc}
/// Arguments for getMachineExtension.
/// {@endtemplate}
/// {@macro pulumi_hybridcompute_get_machine_extension_args_doc}
class GetMachineExtensionArgs {
  /// The name of the machine extension.
  final pulumi.Input<String> extensionName;
  /// The name of the machine containing the extension.
  final pulumi.Input<String> machineName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMachineExtensionArgs].
  /// [extensionName] The name of the machine extension.
  /// [machineName] The name of the machine containing the extension.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetMachineExtensionArgs({
    required pulumi.Output<String> extensionName,
    required pulumi.Output<String> machineName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      extensionName = pulumi.Input.asInput<String>(extensionName),
      machineName = pulumi.Input.asInput<String>(machineName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensionName': extensionName,
      'machineName': machineName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMachineExtensionArgs.fromMap(Map<String, dynamic> map) {
    return GetMachineExtensionArgs(
      extensionName: pulumi.Output.create<String>(map['extensionName'] as String),
      machineName: pulumi.Output.create<String>(map['machineName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

