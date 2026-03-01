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
    pulumi.Output<String>? accessControlRules,
    pulumi.Output<String>? description,
    pulumi.Output<String>? kmsInstanceId,
    pulumi.Output<List<String>>? permissions,
    pulumi.Output<String>? policyName,
    pulumi.Output<List<String>>? resources,
  }) :
      accessControlRules = pulumi.Input.asOptionalInput<String>(accessControlRules),
      description = pulumi.Input.asOptionalInput<String>(description),
      kmsInstanceId = pulumi.Input.asOptionalInput<String>(kmsInstanceId),
      permissions = pulumi.Input.asOptionalInput<List<String>>(permissions),
      policyName = pulumi.Input.asOptionalInput<String>(policyName),
      resources = pulumi.Input.asOptionalInput<List<String>>(resources);

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
      accessControlRules: map['accessControlRules'] == null ? null : pulumi.Output.create<String>(map['accessControlRules'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      kmsInstanceId: map['kmsInstanceId'] == null ? null : pulumi.Output.create<String>(map['kmsInstanceId'] as String),
      permissions: map['permissions'] == null ? null : pulumi.Output.create<List<String>>((map['permissions'] as List).cast<String>()),
      policyName: map['policyName'] == null ? null : pulumi.Output.create<String>(map['policyName'] as String),
      resources: map['resources'] == null ? null : pulumi.Output.create<List<String>>((map['resources'] as List).cast<String>()),
    );
  }
}

