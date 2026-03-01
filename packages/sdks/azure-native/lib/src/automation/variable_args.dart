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
    required pulumi.Output<String> automationAccountName,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? isEncrypted,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? value,
    pulumi.Output<String>? variableName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      description = pulumi.Input.asOptionalInput<String>(description),
      isEncrypted = pulumi.Input.asOptionalInput<bool>(isEncrypted),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      value = pulumi.Input.asOptionalInput<String>(value),
      variableName = pulumi.Input.asOptionalInput<String>(variableName);

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
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      isEncrypted: map['isEncrypted'] == null ? null : pulumi.Output.create<bool>(map['isEncrypted'] as bool),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
      variableName: map['variableName'] == null ? null : pulumi.Output.create<String>(map['variableName'] as String),
    );
  }
}

