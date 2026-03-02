// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_get_schema_registry_args_doc}
/// Arguments for getSchemaRegistry.
/// {@endtemplate}
/// {@macro pulumi_eventhub_get_schema_registry_args_doc}
class GetSchemaRegistryArgs {
  /// The Namespace name
  final pulumi.Input<String> namespaceName;
  /// Name of the resource group within the azure subscription.
  final pulumi.Input<String> resourceGroupName;
  /// The Schema Group name
  final pulumi.Input<String> schemaGroupName;

  /// Creates a new [GetSchemaRegistryArgs].
  /// [namespaceName] The Namespace name
  /// [resourceGroupName] Name of the resource group within the azure subscription.
  /// [schemaGroupName] The Schema Group name
  GetSchemaRegistryArgs({
    required this.namespaceName,
    required this.resourceGroupName,
    required this.schemaGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'schemaGroupName': schemaGroupName,
    };
  }

  factory GetSchemaRegistryArgs.fromMap(Map<String, dynamic> map) {
    return GetSchemaRegistryArgs(
      namespaceName: (map['namespaceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      schemaGroupName: (map['schemaGroupName'] as String).input(),
    );
  }
}

