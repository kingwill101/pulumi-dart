// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Alias resources.
class AliasState {
  /// The Amazon Resource Name (ARN) of the key alias.
  final pulumi.Input<String>? arn;
  /// The display name of the alias. The name must start with the word "alias" followed by a forward slash (alias/)
  final pulumi.Input<String>? name;
  /// Creates an unique alias beginning with the specified prefix.
  /// The name must start with the word "alias" followed by a forward slash (alias/).  Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of the target key identifier.
  final pulumi.Input<String>? targetKeyArn;
  /// Identifier for the key for which the alias is for, can be either an ARN or key_id.
  final pulumi.Input<String>? targetKeyId;

  /// Creates a new [AliasState].
  /// [arn] The Amazon Resource Name (ARN) of the key alias.
  /// [name] The display name of the alias. The name must start with the word "alias" followed by a forward slash (alias/)
  /// [namePrefix] Creates an unique alias beginning with the specified prefix.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetKeyArn] The Amazon Resource Name (ARN) of the target key identifier.
  /// [targetKeyId] Identifier for the key for which the alias is for, can be either an ARN or key_id.
  const AliasState({
    this.arn,
    this.name,
    this.namePrefix,
    this.region,
    this.targetKeyArn,
    this.targetKeyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'region': ?region,
      'targetKeyArn': ?targetKeyArn,
      'targetKeyId': ?targetKeyId,
    };
  }

  factory AliasState.fromMap(Map<String, dynamic> map) {
    return AliasState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetKeyArn: (() { final guardedValue = map['targetKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetKeyId: (() { final guardedValue = map['targetKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
