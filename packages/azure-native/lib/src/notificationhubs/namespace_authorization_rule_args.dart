// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_notificationhubs_namespace_authorization_rule_args_doc}
/// The set of arguments for NamespaceAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_notificationhubs_namespace_authorization_rule_args_doc}
class NamespaceAuthorizationRuleArgs {
  /// Authorization Rule Name
  final pulumi.Input<String>? authorizationRuleName;
  final pulumi.Input<String>? location;
  /// Namespace name
  final pulumi.Input<String> namespaceName;
  /// Gets a base64-encoded 256-bit primary key for signing and
  /// validating the SAS token.
  final pulumi.Input<String>? primaryKey;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the rights associated with the rule.
  final pulumi.Input<List<String>> rights;
  /// Gets a base64-encoded 256-bit primary key for signing and
  /// validating the SAS token.
  final pulumi.Input<String>? secondaryKey;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NamespaceAuthorizationRuleArgs].
  /// [authorizationRuleName] Authorization Rule Name
  /// [location] Optional.
  /// [namespaceName] Namespace name
  /// [primaryKey] Gets a base64-encoded 256-bit primary key for signing and
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [rights] Gets or sets the rights associated with the rule.
  /// [secondaryKey] Gets a base64-encoded 256-bit primary key for signing and
  /// [tags] Optional.
  NamespaceAuthorizationRuleArgs({
    String? authorizationRuleName,
    String? location,
    required String namespaceName,
    String? primaryKey,
    required String resourceGroupName,
    required List<String> rights,
    String? secondaryKey,
    Map<String, String>? tags,
  }) :
      authorizationRuleName = pulumi.Input.asOptionalInput<String>(authorizationRuleName),
      location = pulumi.Input.asOptionalInput<String>(location),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      primaryKey = pulumi.Input.asOptionalInput<String>(primaryKey),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      rights = pulumi.Input.asInput<List<String>>(rights),
      secondaryKey = pulumi.Input.asOptionalInput<String>(secondaryKey),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRuleName': ?authorizationRuleName,
      'location': ?location,
      'namespaceName': namespaceName,
      'primaryKey': ?primaryKey,
      'resourceGroupName': resourceGroupName,
      'rights': rights,
      'secondaryKey': ?secondaryKey,
      'tags': ?tags,
    };
  }

  factory NamespaceAuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceAuthorizationRuleArgs(
      authorizationRuleName: map['authorizationRuleName'] == null ? null : map['authorizationRuleName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      namespaceName: map['namespaceName'] as String,
      primaryKey: map['primaryKey'] == null ? null : map['primaryKey'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      rights: (map['rights'] as List).cast<String>(),
      secondaryKey: map['secondaryKey'] == null ? null : map['secondaryKey'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

