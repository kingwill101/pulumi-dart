// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a lab's announcement banner
class LabAnnouncementProperties {
  /// Is the lab announcement active/enabled at this time?
  final pulumi.Input<dynamic>? enabled;
  /// The time at which the announcement expires (null for never)
  final pulumi.Input<String?>? expirationDate;
  /// Has this announcement expired?
  final pulumi.Input<bool?>? expired;
  /// The markdown text (if any) that this lab displays in the UI. If left empty/null, nothing will be shown.
  final pulumi.Input<String?>? markdown;
  /// The plain text title for the lab announcement
  final pulumi.Input<String?>? title;

  /// Creates a new [LabAnnouncementProperties].
  /// [enabled] Is the lab announcement active/enabled at this time?
  /// [expirationDate] The time at which the announcement expires (null for never)
  /// [expired] Has this announcement expired?
  /// [markdown] The markdown text (if any) that this lab displays in the UI. If left empty/null, nothing will be shown.
  /// [title] The plain text title for the lab announcement
  const LabAnnouncementProperties({
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
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      expirationDate: (() { final guardedValue = map['expirationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expired: (() { final guardedValue = map['expired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      markdown: (() { final guardedValue = map['markdown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
