// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_code_enum_value.dart';

/// Definition of InstanceStatusEvent
class InstanceStatusEvent {
  /// <p>The event code.</p>
  final pulumi.Input<EventCodeEnumValue>? code;
  /// <p>A description of the event.</p> <p>After a scheduled event is completed, it can still be described for up to a week. If the event has been completed, this description starts with the following text: [Completed].</p>
  final pulumi.Input<String>? description;
  /// <p>The ID of the event.</p>
  final pulumi.Input<String>? instanceEventId;
  /// <p>The latest scheduled end time for the event.</p>
  final pulumi.Input<String>? notAfter;
  /// <p>The earliest scheduled start time for the event.</p>
  final pulumi.Input<String>? notBefore;
  /// <p>The deadline for starting the event.</p>
  final pulumi.Input<String>? notBeforeDeadline;

  /// Creates a new [InstanceStatusEvent].
  /// [code] <p>The event code.</p>
  /// [description] <p>A description of the event.</p> <p>After a scheduled event is completed, it can still be described for up to a week. If the event has been completed, this description starts with the following text: [Completed].</p>
  /// [instanceEventId] <p>The ID of the event.</p>
  /// [notAfter] <p>The latest scheduled end time for the event.</p>
  /// [notBefore] <p>The earliest scheduled start time for the event.</p>
  /// [notBeforeDeadline] <p>The deadline for starting the event.</p>
  InstanceStatusEvent({
    this.code,
    this.description,
    this.instanceEventId,
    this.notAfter,
    this.notBefore,
    this.notBeforeDeadline,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?pulumi.Input.mapOptionalInputValue<EventCodeEnumValue, Map<String, dynamic>>(code, (value) => value.toMap()),
      'description': ?description,
      'instanceEventId': ?instanceEventId,
      'notAfter': ?notAfter,
      'notBefore': ?notBefore,
      'notBeforeDeadline': ?notBeforeDeadline,
    };
  }

  factory InstanceStatusEvent.fromMap(Map<String, dynamic> map) {
    return InstanceStatusEvent(
      code: map['code'] == null ? null : (EventCodeEnumValue.fromMap((map['code'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      instanceEventId: map['instanceEventId'] == null ? null : (map['instanceEventId'] as String).input(),
      notAfter: map['notAfter'] == null ? null : (map['notAfter'] as String).input(),
      notBefore: map['notBefore'] == null ? null : (map['notBefore'] as String).input(),
      notBeforeDeadline: map['notBeforeDeadline'] == null ? null : (map['notBeforeDeadline'] as String).input(),
    );
  }
}

