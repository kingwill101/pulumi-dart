// ignore_for_file: unused_element, unnecessary_cast

class GetResponseHeadersPolicyCorsConfigAccessControlAllowOrigin {
  final List<String> items;

  /// Creates a new [GetResponseHeadersPolicyCorsConfigAccessControlAllowOrigin].
  /// [items] Required.
  GetResponseHeadersPolicyCorsConfigAccessControlAllowOrigin({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'items': items};
  }

  factory GetResponseHeadersPolicyCorsConfigAccessControlAllowOrigin.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetResponseHeadersPolicyCorsConfigAccessControlAllowOrigin(
      items: (map['items'] as List).cast<String>(),
    );
  }
}
