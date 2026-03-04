// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssmcontacts_contact_contact_args_doc}
/// The set of arguments for Contact.
/// {@endtemplate}
/// {@macro pulumi_ssmcontacts_contact_contact_args_doc}
class ContactArgs {
  /// A unique and identifiable alias for the contact or escalation plan. Must be between 1 and 255 characters, and may contain alphanumerics, underscores (`_`), and hyphens (`-`).
  final pulumi.Input<String> alias;

  /// Full friendly name of the contact or escalation plan. If set, must be between 1 and 255 characters, and may contain alphanumerics, underscores (`_`), hyphens (`-`), periods (`.`), and spaces.
  final pulumi.Input<String>? displayName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value tags for the monitor. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The type of contact engaged. A single contact is type PERSONAL and an escalation
  /// plan is type ESCALATION.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> type;

  /// Creates a new [ContactArgs].
  /// [alias] A unique and identifiable alias for the contact or escalation plan. Must be between 1 and 255 characters, and may contain alphanumerics, underscores (`_`), and hyphens (`-`).
  /// [displayName] Full friendly name of the contact or escalation plan. If set, must be between 1 and 255 characters, and may contain alphanumerics, underscores (`_`), hyphens (`-`), periods (`.`), and spaces.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the monitor. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] The type of contact engaged. A single contact is type PERSONAL and an escalation
  ContactArgs({
    required this.alias,
    this.displayName,
    this.region,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'displayName': ?displayName,
      'region': ?region,
      'tags': ?tags,
      'type': type,
    };
  }

  factory ContactArgs.fromMap(Map<String, dynamic> map) {
    return ContactArgs(
      alias: pulumi.Input.fromValue(map['alias'] as String),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
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
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
