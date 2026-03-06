// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_trigger.dart';

/// Input properties used for looking up and filtering Trigger resources.
class TriggerState {
  /// System-generated unique identifier.
  final pulumi.Input<String>? configurationId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name for the repository. This needs to be less than 100 characters.
  final pulumi.Input<String>? repositoryName;
  /// The name of the trigger.
  final pulumi.Input<List<TriggerTrigger>>? triggers;

  /// Creates a new [TriggerState].
  /// [configurationId] System-generated unique identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [repositoryName] The name for the repository. This needs to be less than 100 characters.
  /// [triggers] The name of the trigger.
  const TriggerState({
    this.configurationId,
    this.region,
    this.repositoryName,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationId': ?configurationId,
      'region': ?region,
      'repositoryName': ?repositoryName,
      'triggers': ?pulumi.Input.mapOptionalInputValue<List<TriggerTrigger>, List<Map<String, dynamic>>>(triggers, (value) => pulumi.Input.encodeList<TriggerTrigger, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TriggerState.fromMap(Map<String, dynamic> map) {
    return TriggerState(
      configurationId: (() { final guardedValue = map['configurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryName: (() { final guardedValue = map['repositoryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggers: (() { final guardedValue = map['triggers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TriggerTrigger>(guardedValue, (value) => TriggerTrigger.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

