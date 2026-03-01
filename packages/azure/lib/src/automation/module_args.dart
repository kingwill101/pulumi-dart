// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'module_module_link.dart';

/// {@template pulumi_automation_module_module_args_doc}
/// The set of arguments for Module.
/// {@endtemplate}
/// {@macro pulumi_automation_module_module_args_doc}
class ModuleArgs {
  /// The name of the automation account in which the Module is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> automationAccountName;
  /// A `module_link` block as defined below.
  final pulumi.Input<ModuleModuleLink> moduleLink;
  /// Specifies the name of the Module. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the Module is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ModuleArgs].
  /// [automationAccountName] The name of the automation account in which the Module is created. Changing this forces a new resource to be created.
  /// [moduleLink] A `module_link` block as defined below.
  /// [name] Specifies the name of the Module. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Module is created. Changing this forces a new resource to be created.
  ModuleArgs({
    required String automationAccountName,
    required ModuleModuleLink moduleLink,
    String? name,
    required String resourceGroupName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      moduleLink = pulumi.Input.asInput<ModuleModuleLink>(moduleLink),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'moduleLink': pulumi.Input.mapInputValue<ModuleModuleLink, Map<String, dynamic>>(moduleLink, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ModuleArgs.fromMap(Map<String, dynamic> map) {
    return ModuleArgs(
      automationAccountName: map['automationAccountName'] as String,
      moduleLink: ModuleModuleLink.fromMap((map['moduleLink'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

