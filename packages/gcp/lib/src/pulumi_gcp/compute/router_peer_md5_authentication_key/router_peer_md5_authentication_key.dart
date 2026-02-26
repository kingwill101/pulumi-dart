// ignore_for_file: unused_element, unnecessary_cast

class RouterPeerMd5AuthenticationKey {
  /// Value of the key.
  final String key;

  /// Name of this BGP peer. The name must be 1-63 characters long,
  /// and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which
  /// means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final String name;

  RouterPeerMd5AuthenticationKey({
    required this.key,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['name'] = name;
    return map;
  }

  factory RouterPeerMd5AuthenticationKey.fromMap(Map<String, dynamic> map) {
    return RouterPeerMd5AuthenticationKey(
      key: map['key'] as String,
      name: map['name'] as String,
    );
  }
}
