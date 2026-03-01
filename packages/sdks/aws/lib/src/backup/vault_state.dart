// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Vault resources.
class VaultState {
  /// The ARN of the vault.
  final pulumi.Input<String>? arn;
  /// A boolean that indicates that all recovery points stored in the vault are deleted so that the vault can be destroyed without error.
  final pulumi.Input<bool>? forceDestroy;
  /// The server-side encryption key that is used to protect your backups.
  final pulumi.Input<String>? kmsKeyArn;
  /// Name of the backup vault to create.
  final pulumi.Input<String>? name;
  /// The number of recovery points that are stored in a backup vault.
  final pulumi.Input<int>? recoveryPoints;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Metadata that you can assign to help organize the resources that you create. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [VaultState].
  /// [arn] The ARN of the vault.
  /// [forceDestroy] A boolean that indicates that all recovery points stored in the vault are deleted so that the vault can be destroyed without error.
  /// [kmsKeyArn] The server-side encryption key that is used to protect your backups.
  /// [name] Name of the backup vault to create.
  /// [recoveryPoints] The number of recovery points that are stored in a backup vault.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Metadata that you can assign to help organize the resources that you create. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  VaultState({
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<String>? kmsKeyArn,
    pulumi.Output<String>? name,
    pulumi.Output<int>? recoveryPoints,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      kmsKeyArn = pulumi.Input.asOptionalInput<String>(kmsKeyArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      recoveryPoints = pulumi.Input.asOptionalInput<int>(recoveryPoints),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'forceDestroy': ?forceDestroy,
      'kmsKeyArn': ?kmsKeyArn,
      'name': ?name,
      'recoveryPoints': ?recoveryPoints,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory VaultState.fromMap(Map<String, dynamic> map) {
    return VaultState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : pulumi.Output.create<String>(map['kmsKeyArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      recoveryPoints: map['recoveryPoints'] == null ? null : pulumi.Output.create<int>(map['recoveryPoints'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

