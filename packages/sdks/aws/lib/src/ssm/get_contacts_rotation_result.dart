// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_contacts_rotation_recurrence.dart';

/// Result data returned by getContactsRotation.
class GetContactsRotationResult {
  final String? arn;
  /// ARNs of the contacts to add to the rotation. The order in which you list the contacts is their shift order in the rotation schedule.
  final List<String>? contactIds;
  final String? id;
  /// The name for the rotation.
  final String? name;
  /// Information about when an on-call rotation is in effect and how long the rotation period lasts.
  final List<GetContactsRotationRecurrence>? recurrences;
  final String? region;
  /// The date and time, in RFC 3339 format, that the rotation goes into effect.
  final String? startTime;
  /// A map of tags to assign to the resource.
  final Map<String, String>? tags;
  /// The time zone to base the rotation’s activity on in Internet Assigned Numbers Authority (IANA) format.
  final String? timeZoneId;

  /// Creates a new [GetContactsRotationResult].
  /// [arn] Optional.
  /// [contactIds] ARNs of the contacts to add to the rotation. The order in which you list the contacts is their shift order in the rotation schedule.
  /// [id] Optional.
  /// [name] The name for the rotation.
  /// [recurrences] Information about when an on-call rotation is in effect and how long the rotation period lasts.
  /// [region] Optional.
  /// [startTime] The date and time, in RFC 3339 format, that the rotation goes into effect.
  /// [tags] A map of tags to assign to the resource.
  /// [timeZoneId] The time zone to base the rotation’s activity on in Internet Assigned Numbers Authority (IANA) format.
  const GetContactsRotationResult({
    this.arn,
    this.contactIds,
    this.id,
    this.name,
    this.recurrences,
    this.region,
    this.startTime,
    this.tags,
    this.timeZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'contactIds': ?contactIds,
      'id': ?id,
      'name': ?name,
      'recurrences': ?(() { final guardedValue = recurrences; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetContactsRotationRecurrence, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'startTime': ?startTime,
      'tags': ?tags,
      'timeZoneId': ?timeZoneId,
    };
  }

  factory GetContactsRotationResult.fromMap(Map<String, dynamic> map) {
    return GetContactsRotationResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contactIds: (() { final guardedValue = map['contactIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recurrences: (() { final guardedValue = map['recurrences']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetContactsRotationRecurrence>(guardedValue, (value) => GetContactsRotationRecurrence.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timeZoneId: (() { final guardedValue = map['timeZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
