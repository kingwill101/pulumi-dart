// ignore_for_file: unused_element, unnecessary_cast

class GetResponseHeadersPolicyCorsConfigAccessControlExposeHeader {
  final List<String> items;

  /// Creates a new [GetResponseHeadersPolicyCorsConfigAccessControlExposeHeader].
  /// [items] Required.
  GetResponseHeadersPolicyCorsConfigAccessControlExposeHeader({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['items'] = items;
    return map;
  }

  factory GetResponseHeadersPolicyCorsConfigAccessControlExposeHeader.fromMap(
      Map<String, dynamic> map) {
    return GetResponseHeadersPolicyCorsConfigAccessControlExposeHeader(
      items: (map['items'] as List).cast<String>(),
    );
  }
}
