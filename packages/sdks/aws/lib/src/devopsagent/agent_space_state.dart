// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AgentSpace resources.
class AgentSpaceState {
  /// Unique identifier of the Agent Space.
  final pulumi.Input<String?>? agentSpaceId;
  /// ARN of the Agent Space.
  final pulumi.Input<String?>? arn;
  /// Timestamp when the Agent Space was created.
  final pulumi.Input<String?>? createdAt;
  /// Description of the Agent Space.
  final pulumi.Input<String?>? description;
  /// ARN of the AWS KMS key used to encrypt resources. Forces new resource.
  final pulumi.Input<String?>? kmsKeyArn;
  /// Locale for the Agent Space, which determines the language used in agent responses (e.g., `en`).
  final pulumi.Input<String?>? locale;
  /// Name of the Agent Space.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Timestamp when the Agent Space was last updated.
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [AgentSpaceState].
  /// [agentSpaceId] Unique identifier of the Agent Space.
  /// [arn] ARN of the Agent Space.
  /// [createdAt] Timestamp when the Agent Space was created.
  /// [description] Description of the Agent Space.
  /// [kmsKeyArn] ARN of the AWS KMS key used to encrypt resources. Forces new resource.
  /// [locale] Locale for the Agent Space, which determines the language used in agent responses (e.g., `en`).
  /// [name] Name of the Agent Space.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [updatedAt] Timestamp when the Agent Space was last updated.
  const AgentSpaceState({
    this.agentSpaceId,
    this.arn,
    this.createdAt,
    this.description,
    this.kmsKeyArn,
    this.locale,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentSpaceId': ?agentSpaceId,
      'arn': ?arn,
      'createdAt': ?createdAt,
      'description': ?description,
      'kmsKeyArn': ?kmsKeyArn,
      'locale': ?locale,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'updatedAt': ?updatedAt,
    };
  }

  factory AgentSpaceState.fromMap(Map<String, dynamic> map) {
    return AgentSpaceState(
      agentSpaceId: (() { final guardedValue = map['agentSpaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locale: (() { final guardedValue = map['locale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
