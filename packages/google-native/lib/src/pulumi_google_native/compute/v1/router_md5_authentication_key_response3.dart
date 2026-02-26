// ignore_for_file: unused_element, unnecessary_cast

class RouterMd5AuthenticationKeyResponse3 {
  /// [Input only] Value of the key. For patch and update calls, it can be skipped to copy the value from the previous configuration. This is allowed if the key with the same name existed before the operation. Maximum length is 80 characters. Can only contain printable ASCII characters.
  final String key;

  /// Name used to identify the key. Must be unique within a router. Must be referenced by exactly one bgpPeer. Must comply with RFC1035.
  final String name;

  RouterMd5AuthenticationKeyResponse3({
    required this.key,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['name'] = name;
    return map;
  }

  factory RouterMd5AuthenticationKeyResponse3.fromMap(
      Map<String, dynamic> map) {
    return RouterMd5AuthenticationKeyResponse3(
      key: map['key'] as String,
      name: map['name'] as String,
    );
  }
}
