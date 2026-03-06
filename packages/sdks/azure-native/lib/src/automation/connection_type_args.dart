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
  const ConnectionTypeArgs({
    required this.automationAccountName,
    this.connectionTypeName,
    required this.fieldDefinitions,
    this.isGlobal,
    required this.name,
    required this.resourceGroupName,
  });

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
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      connectionTypeName: (() { final guardedValue = map['connectionTypeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fieldDefinitions: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<FieldDefinition>(map['fieldDefinitions']!, (value) => FieldDefinition.fromMap((value as Map).cast<String, dynamic>()))),
      isGlobal: (() { final guardedValue = map['isGlobal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

