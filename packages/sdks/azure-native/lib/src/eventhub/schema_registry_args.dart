// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_schema_registry_args_doc}
/// The set of arguments for SchemaRegistry.
/// {@endtemplate}
/// {@macro pulumi_eventhub_schema_registry_args_doc}
class SchemaRegistryArgs {
  /// dictionary object for SchemaGroup group properties
  final pulumi.Input<Map<String, String>>? groupProperties;

  /// The Namespace name
  final pulumi.Input<String> namespaceName;

  /// Name of the resource group within the azure subscription.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<String>? schemaCompatibility;

  /// The Schema Group name
  final pulumi.Input<String>? schemaGroupName;
  final pulumi.Input<String>? schemaType;

  /// Creates a new [SchemaRegistryArgs].
  /// [groupProperties] dictionary object for SchemaGroup group properties
  /// [namespaceName] The Namespace name
  /// [resourceGroupName] Name of the resource group within the azure subscription.
  /// [schemaCompatibility] Optional.
  /// [schemaGroupName] The Schema Group name
  /// [schemaType] Optional.
  SchemaRegistryArgs({
    this.groupProperties,
    required this.namespaceName,
    required this.resourceGroupName,
    this.schemaCompatibility,
    this.schemaGroupName,
    this.schemaType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupProperties': ?groupProperties,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'schemaCompatibility': ?schemaCompatibility,
      'schemaGroupName': ?schemaGroupName,
      'schemaType': ?schemaType,
    };
  }

  factory SchemaRegistryArgs.fromMap(Map<String, dynamic> map) {
    return SchemaRegistryArgs(
      groupProperties: (() {
        final guardedValue = map['groupProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      schemaCompatibility: (() {
        final guardedValue = map['schemaCompatibility'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      schemaGroupName: (() {
        final guardedValue = map['schemaGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      schemaType: (() {
        final guardedValue = map['schemaType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
