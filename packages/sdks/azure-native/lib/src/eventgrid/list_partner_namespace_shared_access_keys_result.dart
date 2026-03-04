// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by listPartnerNamespaceSharedAccessKeys.
class ListPartnerNamespaceSharedAccessKeysResult {
  /// Shared access key1 for the partner namespace.
  final String? key1;

  /// Shared access key2 for the partner namespace.
  final String? key2;

  /// Creates a new [ListPartnerNamespaceSharedAccessKeysResult].
  /// [key1] Shared access key1 for the partner namespace.
  /// [key2] Shared access key2 for the partner namespace.
  ListPartnerNamespaceSharedAccessKeysResult({this.key1, this.key2});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key1': ?key1, 'key2': ?key2};
  }

  factory ListPartnerNamespaceSharedAccessKeysResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListPartnerNamespaceSharedAccessKeysResult(
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
