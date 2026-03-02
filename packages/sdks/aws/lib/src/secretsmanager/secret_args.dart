// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_replica.dart';

/// {@template pulumi_secretsmanager_secret_secret_args_doc}
/// The set of arguments for Secret.
/// {@endtemplate}
/// {@macro pulumi_secretsmanager_secret_secret_args_doc}
class SecretArgs {
  /// Description of the secret.
  final pulumi.Input<String>? description;
  /// Accepts boolean value to specify whether to overwrite a secret with the same name in the destination Region.
  final pulumi.Input<bool>? forceOverwriteReplicaSecret;
  /// ARN or Id of the AWS KMS key to be used to encrypt the secret values in the versions stored in this secret. If you need to reference a CMK in a different account, you can use only the key ARN. If you don't specify this value, then Secrets Manager defaults to using the AWS account's default KMS key (the one named `aws/secretsmanager`). If the default KMS key with that name doesn't yet exist, then AWS Secrets Manager creates it for you automatically the first time.
  final pulumi.Input<String>? kmsKeyId;
  /// Friendly name of the new secret. The secret name can consist of uppercase letters, lowercase letters, digits, and any of the following characters: `/_+=.@-` Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// Valid JSON document representing a [resource policy](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-based-policies.html). Removing `policy` from your configuration or setting `policy` to null or an empty string (i.e., `policy = ""`) _will not_ delete the policy since it could have been set by `aws.secretsmanager.SecretPolicy`. To delete the `policy`, set it to `"{}"` (an empty JSON document).
  final pulumi.Input<String>? policy;
  /// Number of days that AWS Secrets Manager waits before it can delete the secret. This value can be `0` to force deletion without recovery or range from `7` to `30` days. The default value is `30`.
  final pulumi.Input<int>? recoveryWindowInDays;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block to support secret replication. See details below.
  final pulumi.Input<List<SecretReplica>>? replicas;
  /// Key-value map of user-defined tags that are attached to the secret. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SecretArgs].
  /// [description] Description of the secret.
  /// [forceOverwriteReplicaSecret] Accepts boolean value to specify whether to overwrite a secret with the same name in the destination Region.
  /// [kmsKeyId] ARN or Id of the AWS KMS key to be used to encrypt the secret values in the versions stored in this secret. If you need to reference a CMK in a different account, you can use only the key ARN. If you don't specify this value, then Secrets Manager defaults to using the AWS account's default KMS key (the one named `aws/secretsmanager`). If the default KMS key with that name doesn't yet exist, then AWS Secrets Manager creates it for you automatically the first time.
  /// [name] Friendly name of the new secret. The secret name can consist of uppercase letters, lowercase letters, digits, and any of the following characters: `/_+=.@-` Conflicts with `name_prefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [policy] Valid JSON document representing a [resource policy](https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-based-policies.html). Removing `policy` from your configuration or setting `policy` to null or an empty string (i.e., `policy = ""`) _will not_ delete the policy since it could have been set by `aws.secretsmanager.SecretPolicy`. To delete the `policy`, set it to `"{}"` (an empty JSON document).
  /// [recoveryWindowInDays] Number of days that AWS Secrets Manager waits before it can delete the secret. This value can be `0` to force deletion without recovery or range from `7` to `30` days. The default value is `30`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [replicas] Configuration block to support secret replication. See details below.
  /// [tags] Key-value map of user-defined tags that are attached to the secret. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
    return <String, dynamic>{
      'description': ?description,
      'forceOverwriteReplicaSecret': ?forceOverwriteReplicaSecret,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'policy': ?policy,
      'recoveryWindowInDays': ?recoveryWindowInDays,
      'region': ?region,
      'replicas': ?pulumi.Input.mapOptionalInputValue<List<SecretReplica>, List<Map<String, dynamic>>>(replicas, (value) => pulumi.Input.encodeList<SecretReplica, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory SecretArgs.fromMap(Map<String, dynamic> map) {
    return SecretArgs(
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      forceOverwriteReplicaSecret: map['forceOverwriteReplicaSecret'] == null ? null : ((map['forceOverwriteReplicaSecret'] as bool).input()).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : ((map['kmsKeyId'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      namePrefix: map['namePrefix'] == null ? null : ((map['namePrefix'] as String).input()).input(),
      policy: map['policy'] == null ? null : ((map['policy'] as String).input()).input(),
      recoveryWindowInDays: map['recoveryWindowInDays'] == null ? null : ((map['recoveryWindowInDays'] as int).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      replicas: map['replicas'] == null ? null : ((pulumi.Input.decodeList<SecretReplica>(map['replicas']!, (value) => SecretReplica.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

