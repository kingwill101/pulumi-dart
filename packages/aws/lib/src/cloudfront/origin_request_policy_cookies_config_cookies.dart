// ignore_for_file: unused_element, unnecessary_cast

class OriginRequestPolicyCookiesConfigCookies {
  final List<String>? items;

  /// Creates a new [OriginRequestPolicyCookiesConfigCookies].
  /// [items] Optional.
  OriginRequestPolicyCookiesConfigCookies({this.items});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'items': ?items};
  }

  factory OriginRequestPolicyCookiesConfigCookies.fromMap(
    Map<String, dynamic> map,
  ) {
    return OriginRequestPolicyCookiesConfigCookies(
      items: map['items'] == null
          ? null
          : (map['items'] as List).cast<String>(),
    );
  }
}
