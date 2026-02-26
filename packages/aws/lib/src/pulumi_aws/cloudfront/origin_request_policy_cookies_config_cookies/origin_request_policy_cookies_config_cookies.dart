// ignore_for_file: unused_element, unnecessary_cast

class OriginRequestPolicyCookiesConfigCookies {
  final List<String>? items;

  OriginRequestPolicyCookiesConfigCookies({
    this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = itemsValue;
    }
    return map;
  }

  factory OriginRequestPolicyCookiesConfigCookies.fromMap(
      Map<String, dynamic> map) {
    return OriginRequestPolicyCookiesConfigCookies(
      items:
          map['items'] == null ? null : (map['items'] as List).cast<String>(),
    );
  }
}
