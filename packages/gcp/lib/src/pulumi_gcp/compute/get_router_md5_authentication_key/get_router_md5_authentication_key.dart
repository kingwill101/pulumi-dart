// ignore_for_file: unused_element, unnecessary_cast

class GetRouterMd5AuthenticationKey {
  /// Value of the key used for MD5 authentication.
  final String key;

  /// The name of the router.
  final String name;

  GetRouterMd5AuthenticationKey({
    required this.key,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['name'] = name;
    return map;
  }

  factory GetRouterMd5AuthenticationKey.fromMap(Map<String, dynamic> map) {
    return GetRouterMd5AuthenticationKey(
      key: map['key'] as String,
      name: map['name'] as String,
    );
  }
}
