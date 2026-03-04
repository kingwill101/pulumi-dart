// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contacts_rotation_recurrence.dart';

/// {@template pulumi_ssm_contacts_rotation_contacts_rotation_args_doc}
/// The set of arguments for ContactsRotation.
/// {@endtemplate}
/// {@macro pulumi_ssm_contacts_rotation_contacts_rotation_args_doc}
class ContactsRotationArgs {
  /// Amazon Resource Names (ARNs) of the contacts to add to the rotation. The order in which you list the contacts is their shift order in the rotation schedule.
  final pulumi.Input<List<String>> contactIds;

  /// The name for the rotation.
  final pulumi.Input<String>? name;

  /// Information about when an on-call rotation is in effect and how long the rotation period lasts. Exactly one of either `daily_settings`, `monthly_settings`, or `weekly_settings` must be populated. See Recurrence for more details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ContactsRotationRecurrence> recurrence;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The date and time, in RFC 3339 format, that the rotation goes into effect.
  final pulumi.Input<String>? startTime;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The time zone to base the rotation’s activity on in Internet Assigned Numbers Authority (IANA) format.
  final pulumi.Input<String> timeZoneId;

  /// Creates a new [ContactsRotationArgs].
  /// [contactIds] Amazon Resource Names (ARNs) of the contacts to add to the rotation. The order in which you list the contacts is their shift order in the rotation schedule.
  /// [name] The name for the rotation.
  /// [recurrence] Information about when an on-call rotation is in effect and how long the rotation period lasts. Exactly one of either `daily_settings`, `monthly_settings`, or `weekly_settings` must be populated. See Recurrence for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [startTime] The date and time, in RFC 3339 format, that the rotation goes into effect.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeZoneId] The time zone to base the rotation’s activity on in Internet Assigned Numbers Authority (IANA) format.
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
    return <String, dynamic>{
      'contactIds': contactIds,
      'name': ?name,
      'recurrence':
          pulumi.Input.mapInputValue<
            ContactsRotationRecurrence,
            Map<String, dynamic>
          >(recurrence, (value) => value.toMap()),
      'region': ?region,
      'startTime': ?startTime,
      'tags': ?tags,
      'timeZoneId': timeZoneId,
    };
  }

  factory ContactsRotationArgs.fromMap(Map<String, dynamic> map) {
    return ContactsRotationArgs(
      contactIds: pulumi.Input.fromValue(
        (map['contactIds'] as List).cast<String>(),
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recurrence: pulumi.Input.fromValue(
        ContactsRotationRecurrence.fromMap(
          (map['recurrence']! as Map).cast<String, dynamic>(),
        ),
      ),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      timeZoneId: pulumi.Input.fromValue(map['timeZoneId'] as String),
    );
  }
}
