// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_relay_list_hybrid_connection_keys_args_doc}
/// Arguments for listHybridConnectionKeys.
/// {@endtemplate}
/// {@macro pulumi_relay_list_hybrid_connection_keys_args_doc}
class ListHybridConnectionKeysArgs {
  /// The authorization rule name.
  final pulumi.Input<String> authorizationRuleName;
  /// The hybrid connection name.
  final pulumi.Input<String> hybridConnectionName;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListHybridConnectionKeysArgs].
  /// [authorizationRuleName] The authorization rule name.
  /// [hybridConnectionName] The hybrid connection name.
  /// [namespaceName] The namespace name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListHybridConnectionKeysArgs({
    required String authorizationRuleName,
    required String hybridConnectionName,
    required String namespaceName,
    required String resourceGroupName,
  }) :
      authorizationRuleName = pulumi.Input.asInput<String>(authorizationRuleName),
      hybridConnectionName = pulumi.Input.asInput<String>(hybridConnectionName),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRuleName': authorizationRuleName,
      'hybridConnectionName': hybridConnectionName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListHybridConnectionKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListHybridConnectionKeysArgs(
      authorizationRuleName: map['authorizationRuleName'] as String,
      hybridConnectionName: map['hybridConnectionName'] as String,
      namespaceName: map['namespaceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

