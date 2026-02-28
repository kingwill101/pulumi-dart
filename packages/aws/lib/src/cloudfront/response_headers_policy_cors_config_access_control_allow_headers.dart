// ignore_for_file: unused_element, unnecessary_cast

class ResponseHeadersPolicyCorsConfigAccessControlAllowHeaders {
  final List<String>? items;

  /// Creates a new [ResponseHeadersPolicyCorsConfigAccessControlAllowHeaders].
  /// [items] Optional.
  ResponseHeadersPolicyCorsConfigAccessControlAllowHeaders({
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

  factory ResponseHeadersPolicyCorsConfigAccessControlAllowHeaders.fromMap(
      Map<String, dynamic> map) {
    return ResponseHeadersPolicyCorsConfigAccessControlAllowHeaders(
      items:
          map['items'] == null ? null : (map['items'] as List).cast<String>(),
    );
  }
}
