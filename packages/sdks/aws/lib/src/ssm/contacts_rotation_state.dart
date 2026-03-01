// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contacts_rotation_recurrence.dart';

/// Input properties used for looking up and filtering ContactsRotation resources.
class ContactsRotationState {
  /// The Amazon Resource Name (ARN) of the rotation.
  final pulumi.Input<String>? arn;
  /// Amazon Resource Names (ARNs) of the contacts to add to the rotation. The order in which you list the contacts is their shift order in the rotation schedule.
  final pulumi.Input<List<String>>? contactIds;
  /// The name for the rotation.
  final pulumi.Input<String>? name;
  /// Information about when an on-call rotation is in effect and how long the rotation period lasts. Exactly one of either `daily_settings`, `monthly_settings`, or `weekly_settings` must be populated. See Recurrence for more details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<ContactsRotationRecurrence>? recurrence;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The date and time, in RFC 3339 format, that the rotation goes into effect.
  final pulumi.Input<String>? startTime;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The time zone to base the rotation’s activity on in Internet Assigned Numbers Authority (IANA) format.
  final pulumi.Input<String>? timeZoneId;

  /// Creates a new [ContactsRotationState].
  /// [arn] The Amazon Resource Name (ARN) of the rotation.
  /// [contactIds] Amazon Resource Names (ARNs) of the contacts to add to the rotation. The order in which you list the contacts is their shift order in the rotation schedule.
  /// [name] The name for the rotation.
  /// [recurrence] Information about when an on-call rotation is in effect and how long the rotation period lasts. Exactly one of either `daily_settings`, `monthly_settings`, or `weekly_settings` must be populated. See Recurrence for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [startTime] The date and time, in RFC 3339 format, that the rotation goes into effect.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeZoneId] The time zone to base the rotation’s activity on in Internet Assigned Numbers Authority (IANA) format.
  ContactsRotationState({
    pulumi.Output<String>? arn,
    pulumi.Output<List<String>>? contactIds,
    pulumi.Output<String>? name,
    pulumi.Output<ContactsRotationRecurrence>? recurrence,
    pulumi.Output<String>? region,
    pulumi.Output<String>? startTime,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? timeZoneId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      contactIds = pulumi.Input.asOptionalInput<List<String>>(contactIds),
      name = pulumi.Input.asOptionalInput<String>(name),
      recurrence = pulumi.Input.asOptionalInput<ContactsRotationRecurrence>(recurrence),
      region = pulumi.Input.asOptionalInput<String>(region),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeZoneId = pulumi.Input.asOptionalInput<String>(timeZoneId);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      contactIds: map['contactIds'] == null ? null : pulumi.Output.create<List<String>>((map['contactIds'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      recurrence: map['recurrence'] == null ? null : pulumi.Output.create<ContactsRotationRecurrence>(ContactsRotationRecurrence.fromMap((map['recurrence'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeZoneId: map['timeZoneId'] == null ? null : pulumi.Output.create<String>(map['timeZoneId'] as String),
    );
  }
}

