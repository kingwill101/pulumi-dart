// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contacts_rotation_recurrence.dart';

/// Input properties used for looking up and filtering ContactsRotation resources.
class ContactsRotationState {
  /// ARN of the rotation.
  final pulumi.Input<String?>? arn;
  /// ARNs of the contacts to add to the rotation. The order in which you list the contacts is their shift order in the rotation schedule.
  final pulumi.Input<List<String>?>? contactIds;
  /// The name for the rotation.
  final pulumi.Input<String?>? name;
  /// Information about when an on-call rotation is in effect and how long the rotation period lasts. Exactly one of either `dailySettings`, `monthlySettings`, or `weeklySettings` must be populated. See Recurrence for more details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ContactsRotationRecurrence?>? recurrence;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The date and time, in RFC 3339 format, that the rotation goes into effect.
  final pulumi.Input<String?>? startTime;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// The time zone to base the rotation’s activity on in Internet Assigned Numbers Authority (IANA) format.
  final pulumi.Input<String?>? timeZoneId;

  /// Creates a new [ContactsRotationState].
  /// [arn] ARN of the rotation.
  /// [contactIds] ARNs of the contacts to add to the rotation. The order in which you list the contacts is their shift order in the rotation schedule.
  /// [name] The name for the rotation.
  /// [recurrence] Information about when an on-call rotation is in effect and how long the rotation period lasts. Exactly one of either `dailySettings`, `monthlySettings`, or `weeklySettings` must be populated. See Recurrence for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [startTime] The date and time, in RFC 3339 format, that the rotation goes into effect.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeZoneId] The time zone to base the rotation’s activity on in Internet Assigned Numbers Authority (IANA) format.
  const ContactsRotationState({
    this.arn,
    this.contactIds,
    this.name,
    this.recurrence,
    this.region,
    this.startTime,
    this.tags,
    this.tagsAll,
    this.timeZoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'contactIds': ?contactIds,
      'name': ?name,
      'recurrence': ?pulumi.Input.mapOptionalInputValue<ContactsRotationRecurrence, Map<String, dynamic>>(recurrence, (value) => value.toMap()),
      'region': ?region,
      'startTime': ?startTime,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeZoneId': ?timeZoneId,
    };
  }

  factory ContactsRotationState.fromMap(Map<String, dynamic> map) {
    return ContactsRotationState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contactIds: (() { final guardedValue = map['contactIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recurrence: (() { final guardedValue = map['recurrence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContactsRotationRecurrence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeZoneId: (() { final guardedValue = map['timeZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
