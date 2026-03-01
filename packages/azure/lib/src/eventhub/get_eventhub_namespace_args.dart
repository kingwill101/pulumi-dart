// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_get_eventhub_namespace_get_eventhub_namespace_args_doc}
/// Arguments for getEventhubNamespace.
/// {@endtemplate}
/// {@macro pulumi_eventhub_get_eventhub_namespace_get_eventhub_namespace_args_doc}
class GetEventhubNamespaceArgs {
  /// The name of the EventHub Namespace.
  final pulumi.Input<String> name;
  /// The Name of the Resource Group where the EventHub Namespace exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEventhubNamespaceArgs].
  /// [name] The name of the EventHub Namespace.
  /// [resourceGroupName] The Name of the Resource Group where the EventHub Namespace exists.
  GetEventhubNamespaceArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEventhubNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return GetEventhubNamespaceArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

