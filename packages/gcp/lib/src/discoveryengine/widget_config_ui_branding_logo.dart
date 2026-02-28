// ignore_for_file: unused_element, unnecessary_cast

class WidgetConfigUiBrandingLogo {
  /// Image URL.
  final String? url;

  /// Creates a new [WidgetConfigUiBrandingLogo].
  /// [url] Image URL.
  WidgetConfigUiBrandingLogo({
    this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final urlValue = url;
    if (urlValue != null) {
      map['url'] = urlValue;
    }
    return map;
  }

  factory WidgetConfigUiBrandingLogo.fromMap(Map<String, dynamic> map) {
    return WidgetConfigUiBrandingLogo(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}
