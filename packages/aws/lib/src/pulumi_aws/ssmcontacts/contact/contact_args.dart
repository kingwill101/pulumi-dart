// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Contact.
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

  ContactArgs({
    required this.alias,
    this.displayName,
    this.region,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alias'] = alias;
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['type'] = type;
    return map;
  }

  factory ContactArgs.fromMap(Map<String, dynamic> map) {
    return ContactArgs(
      alias: pulumi.Input.asInput<String>(map['alias']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
