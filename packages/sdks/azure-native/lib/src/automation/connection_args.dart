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
    required pulumi.Output<String> automationAccountName,
    pulumi.Output<String>? connectionName,
    required pulumi.Output<ConnectionTypeAssociationProperty> connectionType,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? fieldDefinitionValues,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      connectionName = pulumi.Input.asOptionalInput<String>(connectionName),
      connectionType = pulumi.Input.asInput<ConnectionTypeAssociationProperty>(connectionType),
      description = pulumi.Input.asOptionalInput<String>(description),
      fieldDefinitionValues = pulumi.Input.asOptionalInput<Map<String, String>>(fieldDefinitionValues),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      automationAccountName: pulumi.Output.create<String>(map['automationAccountName'] as String),
      connectionName: map['connectionName'] == null ? null : pulumi.Output.create<String>(map['connectionName'] as String),
      connectionType: pulumi.Output.create<ConnectionTypeAssociationProperty>(ConnectionTypeAssociationProperty.fromMap((map['connectionType'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      fieldDefinitionValues: map['fieldDefinitionValues'] == null ? null : pulumi.Output.create<Map<String, String>>((map['fieldDefinitionValues'] as Map).cast<String, String>()),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

