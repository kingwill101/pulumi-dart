// ignore_for_file: unused_element, unnecessary_cast

class GetResponseHeadersPolicyCorsConfigAccessControlAllowOrigin {
  final List<String> items;

  GetResponseHeadersPolicyCorsConfigAccessControlAllowOrigin({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['items'] = items;
    return map;
  }

  factory GetResponseHeadersPolicyCorsConfigAccessControlAllowOrigin.fromMap(
      Map<String, dynamic> map) {
    return GetResponseHeadersPolicyCorsConfigAccessControlAllowOrigin(
      items: (map['items'] as List).cast<String>(),
    );
  }
}
