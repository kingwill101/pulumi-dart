// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by listAccountKeys.
class ListAccountKeysResult {
  /// Gets the value of key 1.
  final String? key1;

  /// Gets the value of key 2.
  final String? key2;

  /// Creates a new [ListAccountKeysResult].
  /// [key1] Gets the value of key 1.
  /// [key2] Gets the value of key 2.
  ListAccountKeysResult({this.key1, this.key2});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key1': ?key1, 'key2': ?key2};
  }

  factory ListAccountKeysResult.fromMap(Map<String, dynamic> map) {
    return ListAccountKeysResult(
      key1: (() {
        final guardedValue = map['key1'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      key2: (() {
        final guardedValue = map['key2'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
