// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_contacts_rotation_recurrence/get_contacts_rotation_recurrence.dart';

/// Result data returned by getContactsRotation.
class GetContactsRotationResult {
  final String arn;

  /// The Amazon Resource Names (ARNs) of the contacts to add to the rotation. The order in which you list the contacts is their shift order in the rotation schedule.
  final List<String> contactIds;
  final String id;

  /// The name for the rotation.
  final String name;

  /// Information about when an on-call rotation is in effect and how long the rotation period lasts.
  final List<GetContactsRotationRecurrence> recurrences;
  final String region;

  /// The date and time, in RFC 3339 format, that the rotation goes into effect.
  final String startTime;

  /// A map of tags to assign to the resource.
  final Map<String, String> tags;

  /// The time zone to base the rotation’s activity on in Internet Assigned Numbers Authority (IANA) format.
  final String timeZoneId;

  GetContactsRotationResult({
    required this.arn,
    required this.contactIds,
    required this.id,
    required this.name,
    required this.recurrences,
    required this.region,
    required this.startTime,
    required this.tags,
    required this.timeZoneId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['contactIds'] = contactIds;
    map['id'] = id;
    map['name'] = name;
    map['recurrences'] =
        Input.encodeList<GetContactsRotationRecurrence, Map<String, dynamic>>(
            recurrences, (value) => value.toMap());
    map['region'] = region;
    map['startTime'] = startTime;
    map['tags'] = tags;
    map['timeZoneId'] = timeZoneId;
    return map;
  }

  factory GetContactsRotationResult.fromMap(Map<String, dynamic> map) {
    return GetContactsRotationResult(
      arn: map['arn'] as String,
      contactIds: (map['contactIds'] as List).cast<String>(),
      id: map['id'] as String,
      name: map['name'] as String,
      recurrences: Input.decodeList<GetContactsRotationRecurrence>(
          map['recurrences'],
          (value) => GetContactsRotationRecurrence.fromMap(
              (value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      startTime: map['startTime'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      timeZoneId: map['timeZoneId'] as String,
    );
  }
}
