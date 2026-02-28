// ignore_for_file: unused_element, unnecessary_cast

class GetRoutersRouterMd5AuthenticationKey {
  final String key;
  final String name;

  /// Creates a new [GetRoutersRouterMd5AuthenticationKey].
  /// [key] Required.
  /// [name] Required.
  GetRoutersRouterMd5AuthenticationKey({
    required this.key,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['name'] = name;
    return map;
  }

  factory GetRoutersRouterMd5AuthenticationKey.fromMap(
      Map<String, dynamic> map) {
    return GetRoutersRouterMd5AuthenticationKey(
      key: map['key'] as String,
      name: map['name'] as String,
    );
  }
}
