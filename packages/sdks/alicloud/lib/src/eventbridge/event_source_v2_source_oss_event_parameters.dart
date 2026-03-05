// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_source_v2_source_oss_event_parameters_match_rule.dart';

class EventSourceV2SourceOssEventParameters {
  /// OSS event type list.
  final pulumi.Input<List<String>>? eventTypes;
  /// Matching rules. The event source will deliver OSS events that meet the matching requirements to the bus.
  final pulumi.Input<List<List<EventSourceV2SourceOssEventParametersMatchRule>>>? matchRules;
  /// The ARN of the role. EventBridge will use this role to create MNS resources and deliver events to the corresponding bus.
  final pulumi.Input<String>? stsRoleArn;

  /// Creates a new [EventSourceV2SourceOssEventParameters].
  /// [eventTypes] OSS event type list.
  /// [matchRules] Matching rules. The event source will deliver OSS events that meet the matching requirements to the bus.
  /// [stsRoleArn] The ARN of the role. EventBridge will use this role to create MNS resources and deliver events to the corresponding bus.
  EventSourceV2SourceOssEventParameters({
    this.eventTypes,
    this.matchRules,
    this.stsRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventTypes': ?eventTypes,
      'matchRules': ?pulumi.Input.mapOptionalInputValue<List<List<EventSourceV2SourceOssEventParametersMatchRule>>, List<List<Map<String, dynamic>>>>(matchRules, (value) => pulumi.Input.encodeList<List<EventSourceV2SourceOssEventParametersMatchRule>, List<Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeList<EventSourceV2SourceOssEventParametersMatchRule, Map<String, dynamic>>(value, (value) => value.toMap()))),
      'stsRoleArn': ?stsRoleArn,
    };
  }

  factory EventSourceV2SourceOssEventParameters.fromMap(Map<String, dynamic> map) {
    return EventSourceV2SourceOssEventParameters(
      eventTypes: (() { final guardedValue = map['eventTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      matchRules: (() { final guardedValue = map['matchRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<List<EventSourceV2SourceOssEventParametersMatchRule>>(guardedValue, (value) => pulumi.Input.decodeList<EventSourceV2SourceOssEventParametersMatchRule>(value, (value) => EventSourceV2SourceOssEventParametersMatchRule.fromMap((value as Map).cast<String, dynamic>())))); })(),
      stsRoleArn: (() { final guardedValue = map['stsRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

