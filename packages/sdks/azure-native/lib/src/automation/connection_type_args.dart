// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_definition.dart';

/// {@template pulumi_automation_connection_type_args_doc}
/// The set of arguments for ConnectionType.
/// {@endtemplate}
/// {@macro pulumi_automation_connection_type_args_doc}
class ConnectionTypeArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// The parameters supplied to the create or update connection type operation.
  final pulumi.Input<String>? connectionTypeName;
  /// Gets or sets the field definitions of the connection type.
  final pulumi.Input<Map<String, FieldDefinition>> fieldDefinitions;
  /// Gets or sets a Boolean value to indicate if the connection type is global.
  final pulumi.Input<bool>? isGlobal;
  /// Gets or sets the name of the connection type.
  final pulumi.Input<String> name;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ConnectionTypeArgs].
  /// [automationAccountName] The name of the automation account.
  /// [connectionTypeName] The parameters supplied to the create or update connection type operation.
  /// [fieldDefinitions] Gets or sets the field definitions of the connection type.
  /// [isGlobal] Gets or sets a Boolean value to indicate if the connection type is global.
  /// [name] Gets or sets the name of the connection type.
  /// [resourceGroupName] Name of an Azure Resource group.
  ConnectionTypeArgs({
    required pulumi.Output<String> automationAccountName,
    pulumi.Output<String>? connectionTypeName,
    required pulumi.Output<Map<String, FieldDefinition>> fieldDefinitions,
    pulumi.Output<bool>? isGlobal,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      connectionTypeName = pulumi.Input.asOptionalInput<String>(connectionTypeName),
      fieldDefinitions = pulumi.Input.asInput<Map<String, FieldDefinition>>(fieldDefinitions),
      isGlobal = pulumi.Input.asOptionalInput<bool>(isGlobal),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'connectionTypeName': ?connectionTypeName,
      'fieldDefinitions': pulumi.Input.mapInputValue<Map<String, FieldDefinition>, Map<String, Map<String, dynamic>>>(fieldDefinitions, (value) => pulumi.Input.encodeMapValues<FieldDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isGlobal': ?isGlobal,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ConnectionTypeArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionTypeArgs(
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      connectionTypeName: map['connectionTypeName'] == null ? null : pulumi.Output.create<String>(map['connectionTypeName'] as String),
      fieldDefinitions: pulumi.Output.create<Map<String, FieldDefinition>>(pulumi.Input.decodeMapValues<FieldDefinition>(map['fieldDefinitions'], (value) => FieldDefinition.fromMap((value as Map).cast<String, dynamic>()))),
      isGlobal: map['isGlobal'] == null ? null : pulumi.Output.create<bool>(map['isGlobal'] as bool),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

