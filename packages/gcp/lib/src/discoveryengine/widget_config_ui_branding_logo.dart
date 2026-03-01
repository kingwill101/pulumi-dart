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
    return <String, dynamic>{
      'url': ?url,
    };
  }

  factory WidgetConfigUiBrandingLogo.fromMap(Map<String, dynamic> map) {
    return WidgetConfigUiBrandingLogo(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

