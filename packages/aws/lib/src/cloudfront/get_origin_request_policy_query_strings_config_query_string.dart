// ignore_for_file: unused_element, unnecessary_cast

class GetOriginRequestPolicyQueryStringsConfigQueryString {
  final List<String> items;

  /// Creates a new [GetOriginRequestPolicyQueryStringsConfigQueryString].
  /// [items] Required.
  GetOriginRequestPolicyQueryStringsConfigQueryString({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['items'] = items;
    return map;
  }

  factory GetOriginRequestPolicyQueryStringsConfigQueryString.fromMap(
      Map<String, dynamic> map) {
    return GetOriginRequestPolicyQueryStringsConfigQueryString(
      items: (map['items'] as List).cast<String>(),
    );
  }
}
