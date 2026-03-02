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
      groupProperties: map['groupProperties'] == null ? null : ((map['groupProperties'] as Map).cast<String, String>()).input(),
      namespaceName: (map['namespaceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      schemaCompatibility: map['schemaCompatibility'] == null ? null : (map['schemaCompatibility'] as String).input(),
      schemaGroupName: map['schemaGroupName'] == null ? null : (map['schemaGroupName'] as String).input(),
      schemaType: map['schemaType'] == null ? null : (map['schemaType'] as String).input(),
    );
  }
}

