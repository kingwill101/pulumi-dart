// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../secret_replica/secret_replica.dart';

/// The set of arguments for Secret.
class SecretArgs {
  /// Description of the secret.
  final Input<String>? description;

  /// Accepts boolean value to specify whether to overwrite a secret with the same name in the destination Region.
  final Input<bool>? forceOverwriteReplicaSecret;

  /// ARN or Id of the AWS KMS key to be used to encrypt the secret values in the versions stored in this secret. If you need to reference a CMK in a different account, you can use only the key ARN. If you don't specify this value, then Secrets Manager defaults to using the AWS account's default KMS key (the one named `aws/secretsmanager`). If the default KMS key with that name doesn't yet exist, then AWS Secrets Manager creates it for you automatically the first time.
  final Input<String>? kmsKeyId;

  /// Friendly name of the new secret. The secret name can consist of uppercase letters, lowercase letters, digits, and any of the following characters: `/_+=.@-` Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  final Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  final Input<String>? namePrefix;

  /// Valid JSON document representing a [resource policy](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-based-policies.html). Removing <span pulumi-lang-nodejs="`policy`" pulumi-lang-dotnet="`Policy`" pulumi-lang-go="`policy`" pulumi-lang-python="`policy`" pulumi-lang-yaml="`policy`" pulumi-lang-java="`policy`">`policy`</span> from your configuration or setting <span pulumi-lang-nodejs="`policy`" pulumi-lang-dotnet="`Policy`" pulumi-lang-go="`policy`" pulumi-lang-python="`policy`" pulumi-lang-yaml="`policy`" pulumi-lang-java="`policy`">`policy`</span> to null or an empty string (i.e., `policy = ""`) _will not_ delete the policy since it could have been set by <span pulumi-lang-nodejs="`aws.secretsmanager.SecretPolicy`" pulumi-lang-dotnet="`aws.secretsmanager.SecretPolicy`" pulumi-lang-go="`secretsmanager.SecretPolicy`" pulumi-lang-python="`secretsmanager.SecretPolicy`" pulumi-lang-yaml="`aws.secretsmanager.SecretPolicy`" pulumi-lang-java="`aws.secretsmanager.SecretPolicy`">`aws.secretsmanager.SecretPolicy`</span>. To delete the <span pulumi-lang-nodejs="`policy`" pulumi-lang-dotnet="`Policy`" pulumi-lang-go="`policy`" pulumi-lang-python="`policy`" pulumi-lang-yaml="`policy`" pulumi-lang-java="`policy`">`policy`</span>, set it to `"{}"` (an empty JSON document).
  final Input<String>? policy;

  /// Number of days that AWS Secrets Manager waits before it can delete the secret. This value can be <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> to force deletion without recovery or range from <span pulumi-lang-nodejs="`7`" pulumi-lang-dotnet="`7`" pulumi-lang-go="`7`" pulumi-lang-python="`7`" pulumi-lang-yaml="`7`" pulumi-lang-java="`7`">`7`</span> to <span pulumi-lang-nodejs="`30`" pulumi-lang-dotnet="`30`" pulumi-lang-go="`30`" pulumi-lang-python="`30`" pulumi-lang-yaml="`30`" pulumi-lang-java="`30`">`30`</span> days. The default value is <span pulumi-lang-nodejs="`30`" pulumi-lang-dotnet="`30`" pulumi-lang-go="`30`" pulumi-lang-python="`30`" pulumi-lang-yaml="`30`" pulumi-lang-java="`30`">`30`</span>.
  final Input<int>? recoveryWindowInDays;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configuration block to support secret replication. See details below.
  final Input<List<SecretReplica>>? replicas;

  /// Key-value map of user-defined tags that are attached to the secret. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  SecretArgs({
    this.description,
    this.forceOverwriteReplicaSecret,
    this.kmsKeyId,
    this.name,
    this.namePrefix,
    this.policy,
    this.recoveryWindowInDays,
    this.region,
    this.replicas,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final forceOverwriteReplicaSecretValue = forceOverwriteReplicaSecret;
    if (forceOverwriteReplicaSecretValue != null) {
      map['forceOverwriteReplicaSecret'] = forceOverwriteReplicaSecretValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] = policyValue;
    }
    final recoveryWindowInDaysValue = recoveryWindowInDays;
    if (recoveryWindowInDaysValue != null) {
      map['recoveryWindowInDays'] = recoveryWindowInDaysValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final replicasValue = replicas;
    if (replicasValue != null) {
      map['replicas'] = Input.mapOptionalInputValue<List<SecretReplica>,
              List<Map<String, dynamic>>>(
          replicasValue,
          (value) => Input.encodeList<SecretReplica, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory SecretArgs.fromMap(Map<String, dynamic> map) {
    return SecretArgs(
      description: Input.asOptionalInput<String>(map['description']),
      forceOverwriteReplicaSecret:
          Input.asOptionalInput<bool>(map['forceOverwriteReplicaSecret']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      policy: Input.asOptionalInput<String>(map['policy']),
      recoveryWindowInDays:
          Input.asOptionalInput<int>(map['recoveryWindowInDays']),
      region: Input.asOptionalInput<String>(map['region']),
      replicas: Input.asOptionalInput<List<SecretReplica>>(map['replicas']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
