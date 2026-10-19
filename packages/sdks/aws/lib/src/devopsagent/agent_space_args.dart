// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devopsagent_agent_space_agent_space_args_doc}
/// The set of arguments for AgentSpace.
/// {@endtemplate}
/// {@macro pulumi_devopsagent_agent_space_agent_space_args_doc}
class AgentSpaceArgs {
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

  /// Creates a new [AgentSpaceArgs].
  /// [description] Description of the Agent Space.
  /// [kmsKeyArn] ARN of the AWS KMS key used to encrypt resources. Forces new resource.
  /// [locale] Locale for the Agent Space, which determines the language used in agent responses (e.g., `en`).
  /// [name] Name of the Agent Space.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const AgentSpaceArgs({
    this.description,
    this.kmsKeyArn,
    this.locale,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'kmsKeyArn': ?kmsKeyArn,
      'locale': ?locale,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory AgentSpaceArgs.fromMap(Map<String, dynamic> map) {
    return AgentSpaceArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locale: (() { final guardedValue = map['locale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
