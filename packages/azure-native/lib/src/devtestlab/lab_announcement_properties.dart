// ignore_for_file: unused_element, unnecessary_cast


/// Properties of a lab's announcement banner
class LabAnnouncementProperties {
  /// Is the lab announcement active/enabled at this time?
  final String? enabled;
  /// The time at which the announcement expires (null for never)
  final String? expirationDate;
  /// Has this announcement expired?
  final bool? expired;
  /// The markdown text (if any) that this lab displays in the UI. If left empty/null, nothing will be shown.
  final String? markdown;
  /// The plain text title for the lab announcement
  final String? title;

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
      enabled: map['enabled'] == null ? null : map['enabled'] as String,
      expirationDate: map['expirationDate'] == null ? null : map['expirationDate'] as String,
      expired: map['expired'] == null ? null : map['expired'] as bool,
      markdown: map['markdown'] == null ? null : map['markdown'] as String,
      title: map['title'] == null ? null : map['title'] as String,
    );
  }
}

