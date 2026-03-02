// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'base_image_trigger.dart';
import 'source_trigger.dart';
import 'timer_trigger.dart';

/// The properties of a trigger.
class TriggerProperties {
  /// The trigger based on base image dependencies.
  final pulumi.Input<BaseImageTrigger>? baseImageTrigger;
  /// The collection of triggers based on source code repository.
  final pulumi.Input<List<SourceTrigger>>? sourceTriggers;
  /// The collection of timer triggers.
  final pulumi.Input<List<TimerTrigger>>? timerTriggers;

  /// Creates a new [TriggerProperties].
  /// [baseImageTrigger] The trigger based on base image dependencies.
  /// [sourceTriggers] The collection of triggers based on source code repository.
  /// [timerTriggers] The collection of timer triggers.
  TriggerProperties({
    this.baseImageTrigger,
    this.sourceTriggers,
    this.timerTriggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseImageTrigger': ?pulumi.Input.mapOptionalInputValue<BaseImageTrigger, Map<String, dynamic>>(baseImageTrigger, (value) => value.toMap()),
      'sourceTriggers': ?pulumi.Input.mapOptionalInputValue<List<SourceTrigger>, List<Map<String, dynamic>>>(sourceTriggers, (value) => pulumi.Input.encodeList<SourceTrigger, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timerTriggers': ?pulumi.Input.mapOptionalInputValue<List<TimerTrigger>, List<Map<String, dynamic>>>(timerTriggers, (value) => pulumi.Input.encodeList<TimerTrigger, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TriggerProperties.fromMap(Map<String, dynamic> map) {
    return TriggerProperties(
      baseImageTrigger: map['baseImageTrigger'] == null ? null : (BaseImageTrigger.fromMap((map['baseImageTrigger'] as Map).cast<String, dynamic>())).input(),
      sourceTriggers: map['sourceTriggers'] == null ? null : (pulumi.Input.decodeList<SourceTrigger>(map['sourceTriggers'], (value) => SourceTrigger.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timerTriggers: map['timerTriggers'] == null ? null : (pulumi.Input.decodeList<TimerTrigger>(map['timerTriggers'], (value) => TimerTrigger.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

