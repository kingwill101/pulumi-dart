// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'base_image_trigger_response.dart';
import 'source_trigger_response.dart';
import 'timer_trigger_response.dart';

/// The properties of a trigger.
class TriggerPropertiesResponse {
  /// The trigger based on base image dependencies.
  final BaseImageTriggerResponse? baseImageTrigger;
  /// The collection of triggers based on source code repository.
  final List<SourceTriggerResponse>? sourceTriggers;
  /// The collection of timer triggers.
  final List<TimerTriggerResponse>? timerTriggers;

  /// Creates a new [TriggerPropertiesResponse].
  /// [baseImageTrigger] The trigger based on base image dependencies.
  /// [sourceTriggers] The collection of triggers based on source code repository.
  /// [timerTriggers] The collection of timer triggers.
  TriggerPropertiesResponse({
    this.baseImageTrigger,
    this.sourceTriggers,
    this.timerTriggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseImageTrigger': ?baseImageTrigger == null ? null : baseImageTrigger!.toMap(),
      'sourceTriggers': ?sourceTriggers == null ? null : pulumi.Input.encodeList<SourceTriggerResponse, Map<String, dynamic>>(sourceTriggers!, (value) => value.toMap()),
      'timerTriggers': ?timerTriggers == null ? null : pulumi.Input.encodeList<TimerTriggerResponse, Map<String, dynamic>>(timerTriggers!, (value) => value.toMap()),
    };
  }

  factory TriggerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TriggerPropertiesResponse(
      baseImageTrigger: map['baseImageTrigger'] == null ? null : BaseImageTriggerResponse.fromMap((map['baseImageTrigger'] as Map).cast<String, dynamic>()),
      sourceTriggers: map['sourceTriggers'] == null ? null : pulumi.Input.decodeList<SourceTriggerResponse>(map['sourceTriggers'], (value) => SourceTriggerResponse.fromMap((value as Map).cast<String, dynamic>())),
      timerTriggers: map['timerTriggers'] == null ? null : pulumi.Input.decodeList<TimerTriggerResponse>(map['timerTriggers'], (value) => TimerTriggerResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

