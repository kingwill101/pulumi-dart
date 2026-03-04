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
    this.arn,
    this.forceDestroy,
    this.kmsKeyArn,
    this.name,
    this.recoveryPoints,
    this.region,
    this.tags,
    this.tagsAll,
  });

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
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      forceDestroy: (() {
        final guardedValue = map['forceDestroy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      kmsKeyArn: (() {
        final guardedValue = map['kmsKeyArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryPoints: (() {
        final guardedValue = map['recoveryPoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
