// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_policy_engine_timeouts.dart';

/// {@template pulumi_bedrock_agentcore_policy_engine_agentcore_policy_engine_args_doc}
/// The set of arguments for AgentcorePolicyEngine.
/// {@endtemplate}
/// {@macro pulumi_bedrock_agentcore_policy_engine_agentcore_policy_engine_args_doc}
class AgentcorePolicyEngineArgs {
  /// Description of the policy engine.
  final pulumi.Input<String?>? description;
  /// ARN of the KMS key used to encrypt the policy engine. If not set, AWS uses an AWS managed key.
  final pulumi.Input<String?>? encryptionKeyArn;
  /// Name of the policy engine. Must start with a letter and contain only letters, numbers, and underscores. Maximum length of 48 characters.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<AgentcorePolicyEngineTimeouts?>? timeouts;

  /// Creates a new [AgentcorePolicyEngineArgs].
  /// [description] Description of the policy engine.
  /// [encryptionKeyArn] ARN of the KMS key used to encrypt the policy engine. If not set, AWS uses an AWS managed key.
  /// [name] Name of the policy engine. Must start with a letter and contain only letters, numbers, and underscores. Maximum length of 48 characters.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const AgentcorePolicyEngineArgs({
    this.description,
    this.encryptionKeyArn,
    this.name,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'encryptionKeyArn': ?encryptionKeyArn,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcorePolicyEngineTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcorePolicyEngineArgs.fromMap(Map<String, dynamic> map) {
    return AgentcorePolicyEngineArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionKeyArn: (() { final guardedValue = map['encryptionKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcorePolicyEngineTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
