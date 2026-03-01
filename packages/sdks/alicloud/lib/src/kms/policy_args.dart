// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_policy_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_kms_policy_policy_args_doc}
class PolicyArgs {
  /// Network Rules in JSON struct.
  final pulumi.Input<String> accessControlRules;
  /// Description.
  final pulumi.Input<String>? description;
  /// KMS instance .
  final pulumi.Input<String> kmsInstanceId;
  /// Allowed permissions (RBAC)Optional values:"RbacPermission/Template/CryptoServiceKeyUser" and "RbacPermission/Template/CryptoServiceSecretUser".
  final pulumi.Input<List<String>> permissions;
  /// Policy Name.
  final pulumi.Input<String> policyName;
  /// The resources that the permission policy allows to access.Use "key/${KeyId}" or "key/*"  to specify a key or all keys.Use "secret/${SecretName}" or "secret/*" to specify a secret or all secrets.
  final pulumi.Input<List<String>> resources;

  /// Creates a new [PolicyArgs].
  /// [accessControlRules] Network Rules in JSON struct.
  /// [description] Description.
  /// [kmsInstanceId] KMS instance .
  /// [permissions] Allowed permissions (RBAC)Optional values:"RbacPermission/Template/CryptoServiceKeyUser" and "RbacPermission/Template/CryptoServiceSecretUser".
  /// [policyName] Policy Name.
  /// [resources] The resources that the permission policy allows to access.Use "key/${KeyId}" or "key/*"  to specify a key or all keys.Use "secret/${SecretName}" or "secret/*" to specify a secret or all secrets.
  PolicyArgs({
    required pulumi.Output<String> accessControlRules,
    pulumi.Output<String>? description,
    required pulumi.Output<String> kmsInstanceId,
    required pulumi.Output<List<String>> permissions,
    required pulumi.Output<String> policyName,
    required pulumi.Output<List<String>> resources,
  }) :
      accessControlRules = pulumi.Input.asInput<String>(accessControlRules),
      description = pulumi.Input.asOptionalInput<String>(description),
      kmsInstanceId = pulumi.Input.asInput<String>(kmsInstanceId),
      permissions = pulumi.Input.asInput<List<String>>(permissions),
      policyName = pulumi.Input.asInput<String>(policyName),
      resources = pulumi.Input.asInput<List<String>>(resources);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControlRules': accessControlRules,
      'description': ?description,
      'kmsInstanceId': kmsInstanceId,
      'permissions': permissions,
      'policyName': policyName,
      'resources': resources,
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      accessControlRules: pulumi.Output.create<String>(map['accessControlRules'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      kmsInstanceId: pulumi.Output.create<String>(map['kmsInstanceId'] as String),
      permissions: pulumi.Output.create<List<String>>((map['permissions'] as List).cast<String>()),
      policyName: pulumi.Output.create<String>(map['policyName'] as String),
      resources: pulumi.Output.create<List<String>>((map['resources'] as List).cast<String>()),
    );
  }
}

