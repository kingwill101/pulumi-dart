// ignore_for_file: unused_element, unnecessary_cast

class GetOriginRequestPolicyHeadersConfigHeader {
  final List<String> items;

  /// Creates a new [GetOriginRequestPolicyHeadersConfigHeader].
  /// [items] Required.
  GetOriginRequestPolicyHeadersConfigHeader({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['items'] = items;
    return map;
  }

  factory GetOriginRequestPolicyHeadersConfigHeader.fromMap(
      Map<String, dynamic> map) {
    return GetOriginRequestPolicyHeadersConfigHeader(
      items: (map['items'] as List).cast<String>(),
    );
  }
}
