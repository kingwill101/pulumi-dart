// ignore_for_file: unused_element, unnecessary_cast


class GetResponseHeadersPolicyCorsConfigAccessControlAllowMethod {
  final List<String> items;

  /// Creates a new [GetResponseHeadersPolicyCorsConfigAccessControlAllowMethod].
  /// [items] Required.
  GetResponseHeadersPolicyCorsConfigAccessControlAllowMethod({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items,
    };
  }

  factory GetResponseHeadersPolicyCorsConfigAccessControlAllowMethod.fromMap(Map<String, dynamic> map) {
    return GetResponseHeadersPolicyCorsConfigAccessControlAllowMethod(
      items: (map['items'] as List).cast<String>(),
    );
  }
}

