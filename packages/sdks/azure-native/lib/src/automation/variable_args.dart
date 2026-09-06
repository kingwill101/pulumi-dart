// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_variable_args_doc}
/// The set of arguments for Variable.
/// {@endtemplate}
/// {@macro pulumi_automation_variable_args_doc}
class VariableArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// Gets or sets the description of the variable.
  final pulumi.Input<String?>? description;
  /// Gets or sets the encrypted flag of the variable.
  final pulumi.Input<bool?>? isEncrypted;
  /// Gets or sets the name of the variable.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the value of the variable.
  final pulumi.Input<String?>? value;
  /// The name of variable.
  final pulumi.Input<String?>? variableName;

  /// Creates a new [VariableArgs].
  /// [automationAccountName] The name of the automation account.
  /// [description] Gets or sets the description of the variable.
  /// [isEncrypted] Gets or sets the encrypted flag of the variable.
  /// [name] Gets or sets the name of the variable.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [value] Gets or sets the value of the variable.
  /// [variableName] The name of variable.
  const VariableArgs({
    required this.automationAccountName,
    this.description,
    this.isEncrypted,
    required this.name,
    required this.resourceGroupName,
    this.value,
    this.variableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'description': ?description,
      'isEncrypted': ?isEncrypted,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'value': ?value,
      'variableName': ?variableName,
    };
  }

  factory VariableArgs.fromMap(Map<String, dynamic> map) {
    return VariableArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isEncrypted: (() { final guardedValue = map['isEncrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      variableName: (() { final guardedValue = map['variableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
