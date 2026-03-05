// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_code_enum_value_response.dart';

/// Definition of InstanceStatusEvent
class InstanceStatusEventResponse {
  /// &lt;p&gt;The event code.&lt;/p&gt;
  final pulumi.Input<EventCodeEnumValueResponse>? code;
  /// &lt;p&gt;A description of the event.&lt;/p&gt; &lt;p&gt;After a scheduled event is completed, it can still be described for up to a week. If the event has been completed, this description starts with the following text: [Completed].&lt;/p&gt;
  final pulumi.Input<String>? description;
  /// &lt;p&gt;The ID of the event.&lt;/p&gt;
  final pulumi.Input<String>? instanceEventId;
  /// &lt;p&gt;The latest scheduled end time for the event.&lt;/p&gt;
  final pulumi.Input<String>? notAfter;
  /// &lt;p&gt;The earliest scheduled start time for the event.&lt;/p&gt;
  final pulumi.Input<String>? notBefore;
  /// &lt;p&gt;The deadline for starting the event.&lt;/p&gt;
  final pulumi.Input<String>? notBeforeDeadline;

  /// Creates a new [InstanceStatusEventResponse].
  /// [code] &lt;p&gt;The event code.&lt;/p&gt;
  /// [description] &lt;p&gt;A description of the event.&lt;/p&gt; &lt;p&gt;After a scheduled event is completed, it can still be described for up to a week. If the event has been completed, this description starts with the following text: [Completed].&lt;/p&gt;
  /// [instanceEventId] &lt;p&gt;The ID of the event.&lt;/p&gt;
  /// [notAfter] &lt;p&gt;The latest scheduled end time for the event.&lt;/p&gt;
  /// [notBefore] &lt;p&gt;The earliest scheduled start time for the event.&lt;/p&gt;
  /// [notBeforeDeadline] &lt;p&gt;The deadline for starting the event.&lt;/p&gt;
  InstanceStatusEventResponse({
    this.code,
    this.description,
    this.instanceEventId,
    this.notAfter,
    this.notBefore,
    this.notBeforeDeadline,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?pulumi.Input.mapOptionalInputValue<EventCodeEnumValueResponse, Map<String, dynamic>>(code, (value) => value.toMap()),
      'description': ?description,
      'instanceEventId': ?instanceEventId,
      'notAfter': ?notAfter,
      'notBefore': ?notBefore,
      'notBeforeDeadline': ?notBeforeDeadline,
    };
  }

  factory InstanceStatusEventResponse.fromMap(Map<String, dynamic> map) {
    return InstanceStatusEventResponse(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventCodeEnumValueResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceEventId: (() { final guardedValue = map['instanceEventId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notAfter: (() { final guardedValue = map['notAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notBefore: (() { final guardedValue = map['notBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notBeforeDeadline: (() { final guardedValue = map['notBeforeDeadline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

