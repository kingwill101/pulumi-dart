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
  final pulumi.Input<String>? description;
  /// Gets or sets the encrypted flag of the variable.
  final pulumi.Input<bool>? isEncrypted;
  /// Gets or sets the name of the variable.
  final pulumi.Input<String> name;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the value of the variable.
  final pulumi.Input<String>? value;
  /// The variable name.
  final pulumi.Input<String>? variableName;

  /// Creates a new [VariableArgs].
  /// [automationAccountName] The name of the automation account.
  /// [description] Gets or sets the description of the variable.
  /// [isEncrypted] Gets or sets the encrypted flag of the variable.
  /// [name] Gets or sets the name of the variable.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [value] Gets or sets the value of the variable.
  /// [variableName] The variable name.
  VariableArgs({
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
      automationAccountName: (map['automationAccountName'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      isEncrypted: map['isEncrypted'] == null ? null : (map['isEncrypted'] as bool).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
      variableName: map['variableName'] == null ? null : (map['variableName'] as String).input(),
    );
  }
}

