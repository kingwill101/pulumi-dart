// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_type_association_property.dart';

/// {@template pulumi_automation_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_automation_connection_args_doc}
class ConnectionArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// The parameters supplied to the create or update connection operation.
  final pulumi.Input<String>? connectionName;
  /// Gets or sets the connectionType of the connection.
  final pulumi.Input<ConnectionTypeAssociationProperty> connectionType;
  /// Gets or sets the description of the connection.
  final pulumi.Input<String>? description;
  /// Gets or sets the field definition properties of the connection.
  final pulumi.Input<Map<String, String>>? fieldDefinitionValues;
  /// Gets or sets the name of the connection.
  final pulumi.Input<String> name;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ConnectionArgs].
  /// [automationAccountName] The name of the automation account.
  /// [connectionName] The parameters supplied to the create or update connection operation.
  /// [connectionType] Gets or sets the connectionType of the connection.
  /// [description] Gets or sets the description of the connection.
  /// [fieldDefinitionValues] Gets or sets the field definition properties of the connection.
  /// [name] Gets or sets the name of the connection.
  /// [resourceGroupName] Name of an Azure Resource group.
  ConnectionArgs({
    required this.automationAccountName,
    this.connectionName,
    required this.connectionType,
    this.description,
    this.fieldDefinitionValues,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'connectionName': ?connectionName,
      'connectionType': pulumi.Input.mapInputValue<ConnectionTypeAssociationProperty, Map<String, dynamic>>(connectionType, (value) => value.toMap()),
      'description': ?description,
      'fieldDefinitionValues': ?fieldDefinitionValues,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      automationAccountName: (map['automationAccountName'] as String).input(),
      connectionName: map['connectionName'] == null ? null : (map['connectionName'] as String).input(),
      connectionType: (ConnectionTypeAssociationProperty.fromMap((map['connectionType'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      fieldDefinitionValues: map['fieldDefinitionValues'] == null ? null : ((map['fieldDefinitionValues'] as Map).cast<String, String>()).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

