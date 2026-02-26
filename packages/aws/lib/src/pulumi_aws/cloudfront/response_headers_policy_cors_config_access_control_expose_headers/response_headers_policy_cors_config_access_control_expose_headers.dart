// ignore_for_file: unused_element, unnecessary_cast

class ResponseHeadersPolicyCorsConfigAccessControlExposeHeaders {
  final List<String>? items;

  ResponseHeadersPolicyCorsConfigAccessControlExposeHeaders({
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

  factory ResponseHeadersPolicyCorsConfigAccessControlExposeHeaders.fromMap(
      Map<String, dynamic> map) {
    return ResponseHeadersPolicyCorsConfigAccessControlExposeHeaders(
      items:
          map['items'] == null ? null : (map['items'] as List).cast<String>(),
    );
  }
}
