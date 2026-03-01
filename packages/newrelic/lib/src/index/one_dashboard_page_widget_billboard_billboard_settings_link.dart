// ignore_for_file: unused_element, unnecessary_cast


class OneDashboardPageWidgetBillboardBillboardSettingsLink {
  /// (Optional) Boolean value indicating whether the link should open in a new tab. Defaults to `false`.
  final bool? newTab;
  /// (Optional) A human-friendly display string for this value.
  final String? title;
  /// (Optional) The URL to navigate to when the billboard is clicked.
  final String? url;

  /// Creates a new [OneDashboardPageWidgetBillboardBillboardSettingsLink].
  /// [newTab] (Optional) Boolean value indicating whether the link should open in a new tab. Defaults to `false`.
  /// [title] (Optional) A human-friendly display string for this value.
  /// [url] (Optional) The URL to navigate to when the billboard is clicked.
  OneDashboardPageWidgetBillboardBillboardSettingsLink({
    this.newTab,
    this.title,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newTab': ?newTab,
      'title': ?title,
      'url': ?url,
    };
  }

  factory OneDashboardPageWidgetBillboardBillboardSettingsLink.fromMap(Map<String, dynamic> map) {
    return OneDashboardPageWidgetBillboardBillboardSettingsLink(
      newTab: map['newTab'] == null ? null : map['newTab'] as bool,
      title: map['title'] == null ? null : map['title'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

