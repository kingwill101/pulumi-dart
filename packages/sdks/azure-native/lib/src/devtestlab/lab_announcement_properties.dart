// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a lab's announcement banner
class LabAnnouncementProperties {
  /// Is the lab announcement active/enabled at this time?
  final pulumi.Input<String>? enabled;
  /// The time at which the announcement expires (null for never)
  final pulumi.Input<String>? expirationDate;
  /// Has this announcement expired?
  final pulumi.Input<bool>? expired;
  /// The markdown text (if any) that this lab displays in the UI. If left empty/null, nothing will be shown.
  final pulumi.Input<String>? markdown;
  /// The plain text title for the lab announcement
  final pulumi.Input<String>? title;

  /// Creates a new [LabAnnouncementProperties].
  /// [enabled] Is the lab announcement active/enabled at this time?
  /// [expirationDate] The time at which the announcement expires (null for never)
  /// [expired] Has this announcement expired?
  /// [markdown] The markdown text (if any) that this lab displays in the UI. If left empty/null, nothing will be shown.
  /// [title] The plain text title for the lab announcement
  LabAnnouncementProperties({
    this.enabled,
    this.expirationDate,
    this.expired,
    this.markdown,
    this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'expirationDate': ?expirationDate,
      'expired': ?expired,
      'markdown': ?markdown,
      'title': ?title,
    };
  }

  factory LabAnnouncementProperties.fromMap(Map<String, dynamic> map) {
    return LabAnnouncementProperties(
      enabled: map['enabled'] == null ? null : (map['enabled']! as String).input(),
      expirationDate: map['expirationDate'] == null ? null : (map['expirationDate']! as String).input(),
      expired: map['expired'] == null ? null : (map['expired']! as bool).input(),
      markdown: map['markdown'] == null ? null : (map['markdown']! as String).input(),
      title: map['title'] == null ? null : (map['title']! as String).input(),
    );
  }
}

