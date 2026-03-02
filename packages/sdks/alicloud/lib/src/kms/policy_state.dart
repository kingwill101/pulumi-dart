// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Policy resources.
class PolicyState {
  /// Network Rules in JSON struct.
  final pulumi.Input<String>? accessControlRules;
  /// Description.
  final pulumi.Input<String>? description;
  /// KMS instance .
  final pulumi.Input<String>? kmsInstanceId;
  /// Allowed permissions (RBAC)Optional values:"RbacPermission/Template/CryptoServiceKeyUser" and "RbacPermission/Template/CryptoServiceSecretUser".
  final pulumi.Input<List<String>>? permissions;
  /// Policy Name.
  final pulumi.Input<String>? policyName;
  /// The resources that the permission policy allows to access.Use "key/${KeyId}" or "key/*"  to specify a key or all keys.Use "secret/${SecretName}" or "secret/*" to specify a secret or all secrets.
  final pulumi.Input<List<String>>? resources;

  /// Creates a new [PolicyState].
  /// [accessControlRules] Network Rules in JSON struct.
  /// [description] Description.
  /// [kmsInstanceId] KMS instance .
  /// [permissions] Allowed permissions (RBAC)Optional values:"RbacPermission/Template/CryptoServiceKeyUser" and "RbacPermission/Template/CryptoServiceSecretUser".
  /// [policyName] Policy Name.
  /// [resources] The resources that the permission policy allows to access.Use "key/${KeyId}" or "key/*"  to specify a key or all keys.Use "secret/${SecretName}" or "secret/*" to specify a secret or all secrets.
  PolicyState({
    this.accessControlRules,
    this.description,
    this.kmsInstanceId,
    this.permissions,
    this.policyName,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControlRules': ?accessControlRules,
      'description': ?description,
      'kmsInstanceId': ?kmsInstanceId,
      'permissions': ?permissions,
      'policyName': ?policyName,
      'resources': ?resources,
    };
  }

  factory PolicyState.fromMap(Map<String, dynamic> map) {
    return PolicyState(
      accessControlRules: map['accessControlRules'] == null ? null : (map['accessControlRules'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      kmsInstanceId: map['kmsInstanceId'] == null ? null : (map['kmsInstanceId'] as String).input(),
      permissions: map['permissions'] == null ? null : ((map['permissions'] as List).cast<String>()).input(),
      policyName: map['policyName'] == null ? null : (map['policyName'] as String).input(),
      resources: map['resources'] == null ? null : ((map['resources'] as List).cast<String>()).input(),
    );
  }
}

