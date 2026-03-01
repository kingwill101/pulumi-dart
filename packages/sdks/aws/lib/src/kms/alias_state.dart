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
  AliasState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? region,
    pulumi.Output<String>? targetKeyArn,
    pulumi.Output<String>? targetKeyId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      region = pulumi.Input.asOptionalInput<String>(region),
      targetKeyArn = pulumi.Input.asOptionalInput<String>(targetKeyArn),
      targetKeyId = pulumi.Input.asOptionalInput<String>(targetKeyId);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      targetKeyArn: map['targetKeyArn'] == null ? null : pulumi.Output.create<String>(map['targetKeyArn'] as String),
      targetKeyId: map['targetKeyId'] == null ? null : pulumi.Output.create<String>(map['targetKeyId'] as String),
    );
  }
}

