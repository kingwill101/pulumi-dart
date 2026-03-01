// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_web_app_hybrid_connection_keys_args_doc}
/// Arguments for listWebAppHybridConnectionKeys.
/// {@endtemplate}
/// {@macro pulumi_web_list_web_app_hybrid_connection_keys_args_doc}
class ListWebAppHybridConnectionKeysArgs {
  /// The name of the web app.
  final pulumi.Input<String> name;
  /// The namespace for this hybrid connection.
  final pulumi.Input<String> namespaceName;
  /// The relay name for this hybrid connection.
  final pulumi.Input<String> relayName;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListWebAppHybridConnectionKeysArgs].
  /// [name] The name of the web app.
  /// [namespaceName] The namespace for this hybrid connection.
  /// [relayName] The relay name for this hybrid connection.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  ListWebAppHybridConnectionKeysArgs({
    required String name,
    required String namespaceName,
    required String relayName,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      relayName = pulumi.Input.asInput<String>(relayName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'namespaceName': namespaceName,
      'relayName': relayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListWebAppHybridConnectionKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListWebAppHybridConnectionKeysArgs(
      name: map['name'] as String,
      namespaceName: map['namespaceName'] as String,
      relayName: map['relayName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

