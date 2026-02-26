// ignore_for_file: unused_element, unnecessary_cast

class RouterMd5AuthenticationKey2 {
  /// [Input only] Value of the key. For patch and update calls, it can be skipped to copy the value from the previous configuration. This is allowed if the key with the same name existed before the operation. Maximum length is 80 characters. Can only contain printable ASCII characters.
  final String? key;

  /// Name used to identify the key. Must be unique within a router. Must be referenced by exactly one bgpPeer. Must comply with RFC1035.
  final String? name;

  RouterMd5AuthenticationKey2({
    this.key,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory RouterMd5AuthenticationKey2.fromMap(Map<String, dynamic> map) {
    return RouterMd5AuthenticationKey2(
      key: map['key'] == null ? null : map['key'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
