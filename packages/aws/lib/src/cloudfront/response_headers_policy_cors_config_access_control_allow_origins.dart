// ignore_for_file: unused_element, unnecessary_cast

class ResponseHeadersPolicyCorsConfigAccessControlAllowOrigins {
  final List<String>? items;

  /// Creates a new [ResponseHeadersPolicyCorsConfigAccessControlAllowOrigins].
  /// [items] Optional.
  ResponseHeadersPolicyCorsConfigAccessControlAllowOrigins({
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

  factory ResponseHeadersPolicyCorsConfigAccessControlAllowOrigins.fromMap(
      Map<String, dynamic> map) {
    return ResponseHeadersPolicyCorsConfigAccessControlAllowOrigins(
      items:
          map['items'] == null ? null : (map['items'] as List).cast<String>(),
    );
  }
}
