// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_relay_list_wcfrelay_keys_args_doc}
/// Arguments for listWCFRelayKeys.
/// {@endtemplate}
/// {@macro pulumi_relay_list_wcfrelay_keys_args_doc}
class ListWCFRelayKeysArgs {
  /// The authorization rule name.
  final pulumi.Input<String> authorizationRuleName;
  /// The namespace name
  final pulumi.Input<String> namespaceName;
  /// The relay name.
  final pulumi.Input<String> relayName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListWCFRelayKeysArgs].
  /// [authorizationRuleName] The authorization rule name.
  /// [namespaceName] The namespace name
  /// [relayName] The relay name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListWCFRelayKeysArgs({
    required String authorizationRuleName,
    required String namespaceName,
    required String relayName,
    required String resourceGroupName,
  }) :
      authorizationRuleName = pulumi.Input.asInput<String>(authorizationRuleName),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      relayName = pulumi.Input.asInput<String>(relayName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRuleName': authorizationRuleName,
      'namespaceName': namespaceName,
      'relayName': relayName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListWCFRelayKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListWCFRelayKeysArgs(
      authorizationRuleName: map['authorizationRuleName'] as String,
      namespaceName: map['namespaceName'] as String,
      relayName: map['relayName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

