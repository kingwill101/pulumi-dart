// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../contacts_rotation_recurrence/contacts_rotation_recurrence.dart';

/// The set of arguments for ContactsRotation.
class ContactsRotationArgs {
  /// Amazon Resource Names (ARNs) of the contacts to add to the rotation. The order in which you list the contacts is their shift order in the rotation schedule.
  final Input<List<String>> contactIds;

  /// The name for the rotation.
  final Input<String>? name;

  /// Information about when an on-call rotation is in effect and how long the rotation period lasts. Exactly one of either `daily_settings`, `monthly_settings`, or `weekly_settings` must be populated. See Recurrence for more details.
  ///
  /// The following arguments are optional:
  final Input<ContactsRotationRecurrence> recurrence;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The date and time, in RFC 3339 format, that the rotation goes into effect.
  final Input<String>? startTime;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The time zone to base the rotation’s activity on in Internet Assigned Numbers Authority (IANA) format.
  final Input<String> timeZoneId;

  ContactsRotationArgs({
    required this.contactIds,
    this.name,
    required this.recurrence,
    this.region,
    this.startTime,
    this.tags,
    required this.timeZoneId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contactIds'] = contactIds;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['recurrence'] =
        Input.mapInputValue<ContactsRotationRecurrence, Map<String, dynamic>>(
            recurrence, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['timeZoneId'] = timeZoneId;
    return map;
  }

  factory ContactsRotationArgs.fromMap(Map<String, dynamic> map) {
    return ContactsRotationArgs(
      contactIds: Input.asInput<List<String>>(map['contactIds']),
      name: Input.asOptionalInput<String>(map['name']),
      recurrence: Input.asInput<ContactsRotationRecurrence>(map['recurrence']),
      region: Input.asOptionalInput<String>(map['region']),
      startTime: Input.asOptionalInput<String>(map['startTime']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeZoneId: Input.asInput<String>(map['timeZoneId']),
    );
  }
}
