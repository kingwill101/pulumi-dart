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
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> schemaGroupName,
  }) :
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      schemaGroupName = pulumi.Input.asInput<String>(schemaGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'schemaGroupName': schemaGroupName,
    };
  }

  factory GetSchemaRegistryArgs.fromMap(Map<String, dynamic> map) {
    return GetSchemaRegistryArgs(
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      schemaGroupName: pulumi.Output.create<String>(map['schemaGroupName'] as String),
    );
  }
}

