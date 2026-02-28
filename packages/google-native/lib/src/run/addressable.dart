// ignore_for_file: unused_element, unnecessary_cast

/// Information for connecting over HTTP(s).
class Addressable {
  final String? url;

  /// Creates a new [Addressable].
  /// [url] Optional.
  Addressable({
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

  factory Addressable.fromMap(Map<String, dynamic> map) {
    return Addressable(
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}
