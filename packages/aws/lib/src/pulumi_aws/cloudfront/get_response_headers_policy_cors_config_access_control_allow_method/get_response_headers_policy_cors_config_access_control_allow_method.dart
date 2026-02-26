// ignore_for_file: unused_element, unnecessary_cast

class GetResponseHeadersPolicyCorsConfigAccessControlAllowMethod {
  final List<String> items;

  GetResponseHeadersPolicyCorsConfigAccessControlAllowMethod({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['items'] = items;
    return map;
  }

  factory GetResponseHeadersPolicyCorsConfigAccessControlAllowMethod.fromMap(
      Map<String, dynamic> map) {
    return GetResponseHeadersPolicyCorsConfigAccessControlAllowMethod(
      items: (map['items'] as List).cast<String>(),
    );
  }
}
