// ignore_for_file: unused_element, unnecessary_cast

class ResponseHeadersPolicyCorsConfigAccessControlExposeHeaders {
  final List<String>? items;

  /// Creates a new [ResponseHeadersPolicyCorsConfigAccessControlExposeHeaders].
  /// [items] Optional.
  ResponseHeadersPolicyCorsConfigAccessControlExposeHeaders({this.items});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'items': ?items};
  }

  factory ResponseHeadersPolicyCorsConfigAccessControlExposeHeaders.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResponseHeadersPolicyCorsConfigAccessControlExposeHeaders(
      items: map['items'] == null
          ? null
          : (map['items'] as List).cast<String>(),
    );
  }
}
