// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_policy_engine_timeouts.dart';

/// Input properties used for looking up and filtering AgentcorePolicyEngine resources.
class AgentcorePolicyEngineState {
  /// Description of the policy engine.
  final pulumi.Input<String?>? description;
  /// ARN of the KMS key used to encrypt the policy engine. If not set, AWS uses an AWS managed key.
  final pulumi.Input<String?>? encryptionKeyArn;
  /// Name of the policy engine. Must start with a letter and contain only letters, numbers, and underscores. Maximum length of 48 characters.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// ARN of the Policy Engine.
  final pulumi.Input<String?>? policyEngineArn;
  /// Unique identifier of the Policy Engine.
  final pulumi.Input<String?>? policyEngineId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<AgentcorePolicyEngineTimeouts?>? timeouts;

  /// Creates a new [AgentcorePolicyEngineState].
  /// [description] Description of the policy engine.
  /// [encryptionKeyArn] ARN of the KMS key used to encrypt the policy engine. If not set, AWS uses an AWS managed key.
  /// [name] Name of the policy engine. Must start with a letter and contain only letters, numbers, and underscores. Maximum length of 48 characters.
  /// [policyEngineArn] ARN of the Policy Engine.
  /// [policyEngineId] Unique identifier of the Policy Engine.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const AgentcorePolicyEngineState({
    this.description,
    this.encryptionKeyArn,
    this.name,
    this.policyEngineArn,
    this.policyEngineId,
    this.region,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'encryptionKeyArn': ?encryptionKeyArn,
      'name': ?name,
      'policyEngineArn': ?policyEngineArn,
      'policyEngineId': ?policyEngineId,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcorePolicyEngineTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AgentcorePolicyEngineState.fromMap(Map<String, dynamic> map) {
    return AgentcorePolicyEngineState(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionKeyArn: (() { final guardedValue = map['encryptionKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyEngineArn: (() { final guardedValue = map['policyEngineArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyEngineId: (() { final guardedValue = map['policyEngineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcorePolicyEngineTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
