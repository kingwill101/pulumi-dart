// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_policy_definition.dart';
import 'agentcore_policy_timeouts.dart';

/// Input properties used for looking up and filtering AgentcorePolicy resources.
class AgentcorePolicyState {
  /// Policy definition. See `definition` Block for details.
  final pulumi.Input<AgentcorePolicyDefinition?>? definition;
  /// Description of the policy.
  final pulumi.Input<String?>? description;
  /// Name of the policy. Must be 1-48 characters and match the pattern `^[A-Za-z][A-Za-z0-9_]*$`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// ARN of the Policy.
  final pulumi.Input<String?>? policyArn;
  /// Identifier of the Policy Engine that owns this policy. Changing this forces a new resource to be created.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? policyEngineId;
  /// Identifier of the Policy.
  final pulumi.Input<String?>? policyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  final pulumi.Input<AgentcorePolicyTimeouts?>? timeouts;
  /// Controls whether validation findings cause policy creation or update to fail. Valid values: `FAIL_ON_ANY_FINDINGS`, `IGNORE_ALL_FINDINGS`. Defaults to `FAIL_ON_ANY_FINDINGS`.
  final pulumi.Input<String?>? validationMode;

  /// Creates a new [AgentcorePolicyState].
  /// [definition] Policy definition. See `definition` Block for details.
  /// [description] Description of the policy.
  /// [name] Name of the policy. Must be 1-48 characters and match the pattern `^[A-Za-z][A-Za-z0-9_]*$`. Changing this forces a new resource to be created.
  /// [policyArn] ARN of the Policy.
  /// [policyEngineId] Identifier of the Policy Engine that owns this policy. Changing this forces a new resource to be created.
  /// [policyId] Identifier of the Policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  /// [validationMode] Controls whether validation findings cause policy creation or update to fail. Valid values: `FAIL_ON_ANY_FINDINGS`, `IGNORE_ALL_FINDINGS`. Defaults to `FAIL_ON_ANY_FINDINGS`.
  const AgentcorePolicyState({
    this.definition,
    this.description,
    this.name,
    this.policyArn,
    this.policyEngineId,
    this.policyId,
    this.region,
    this.timeouts,
    this.validationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': ?pulumi.Input.mapOptionalInputValue<AgentcorePolicyDefinition, Map<String, dynamic>>(definition, (value) => value.toMap()),
      'description': ?description,
      'name': ?name,
      'policyArn': ?policyArn,
      'policyEngineId': ?policyEngineId,
      'policyId': ?policyId,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AgentcorePolicyTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'validationMode': ?validationMode,
    };
  }

  factory AgentcorePolicyState.fromMap(Map<String, dynamic> map) {
    return AgentcorePolicyState(
      definition: (() { final guardedValue = map['definition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcorePolicyDefinition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyArn: (() { final guardedValue = map['policyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyEngineId: (() { final guardedValue = map['policyEngineId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyId: (() { final guardedValue = map['policyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcorePolicyTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      validationMode: (() { final guardedValue = map['validationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
