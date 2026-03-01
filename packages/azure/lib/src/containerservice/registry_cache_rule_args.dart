// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_registry_cache_rule_registry_cache_rule_args_doc}
/// The set of arguments for RegistryCacheRule.
/// {@endtemplate}
/// {@macro pulumi_containerservice_registry_cache_rule_registry_cache_rule_args_doc}
class RegistryCacheRuleArgs {
  /// The ID of the Container Registry where the Cache Rule should apply. Changing this forces a new resource to be created.
  final pulumi.Input<String> containerRegistryId;
  /// The ARM resource ID of the Credential Store which is associated with the Cache Rule.
  final pulumi.Input<String>? credentialSetId;
  /// Specifies the name of the Container Registry Cache Rule. Only Alphanumeric characters allowed. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the source repository path. Changing this forces a new resource to be created.
  final pulumi.Input<String> sourceRepo;
  /// The name of the new repository path to store artifacts. Changing this forces a new resource to be created.
  final pulumi.Input<String> targetRepo;

  /// Creates a new [RegistryCacheRuleArgs].
  /// [containerRegistryId] The ID of the Container Registry where the Cache Rule should apply. Changing this forces a new resource to be created.
  /// [credentialSetId] The ARM resource ID of the Credential Store which is associated with the Cache Rule.
  /// [name] Specifies the name of the Container Registry Cache Rule. Only Alphanumeric characters allowed. Changing this forces a new resource to be created.
  /// [sourceRepo] The name of the source repository path. Changing this forces a new resource to be created.
  /// [targetRepo] The name of the new repository path to store artifacts. Changing this forces a new resource to be created.
  RegistryCacheRuleArgs({
    required String containerRegistryId,
    String? credentialSetId,
    String? name,
    required String sourceRepo,
    required String targetRepo,
  }) :
      containerRegistryId = pulumi.Input.asInput<String>(containerRegistryId),
      credentialSetId = pulumi.Input.asOptionalInput<String>(credentialSetId),
      name = pulumi.Input.asOptionalInput<String>(name),
      sourceRepo = pulumi.Input.asInput<String>(sourceRepo),
      targetRepo = pulumi.Input.asInput<String>(targetRepo);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistryId': containerRegistryId,
      'credentialSetId': ?credentialSetId,
      'name': ?name,
      'sourceRepo': sourceRepo,
      'targetRepo': targetRepo,
    };
  }

  factory RegistryCacheRuleArgs.fromMap(Map<String, dynamic> map) {
    return RegistryCacheRuleArgs(
      containerRegistryId: map['containerRegistryId'] as String,
      credentialSetId: map['credentialSetId'] == null ? null : map['credentialSetId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      sourceRepo: map['sourceRepo'] as String,
      targetRepo: map['targetRepo'] as String,
    );
  }
}

