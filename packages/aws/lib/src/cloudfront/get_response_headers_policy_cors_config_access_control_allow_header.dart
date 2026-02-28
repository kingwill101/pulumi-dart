// ignore_for_file: unused_element, unnecessary_cast

class GetResponseHeadersPolicyCorsConfigAccessControlAllowHeader {
  final List<String> items;

  /// Creates a new [GetResponseHeadersPolicyCorsConfigAccessControlAllowHeader].
  /// [items] Required.
  GetResponseHeadersPolicyCorsConfigAccessControlAllowHeader({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['items'] = items;
    return map;
  }

  factory GetResponseHeadersPolicyCorsConfigAccessControlAllowHeader.fromMap(
      Map<String, dynamic> map) {
    return GetResponseHeadersPolicyCorsConfigAccessControlAllowHeader(
      items: (map['items'] as List).cast<String>(),
    );
  }
}
