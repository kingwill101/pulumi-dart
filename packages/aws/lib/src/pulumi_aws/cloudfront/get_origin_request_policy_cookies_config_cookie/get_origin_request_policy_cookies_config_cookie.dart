// ignore_for_file: unused_element, unnecessary_cast

class GetOriginRequestPolicyCookiesConfigCookie {
  final List<String> items;

  GetOriginRequestPolicyCookiesConfigCookie({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['items'] = items;
    return map;
  }

  factory GetOriginRequestPolicyCookiesConfigCookie.fromMap(
      Map<String, dynamic> map) {
    return GetOriginRequestPolicyCookiesConfigCookie(
      items: (map['items'] as List).cast<String>(),
    );
  }
}
