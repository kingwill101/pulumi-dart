// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listNamespaceSharedAccessKeys.
class ListNamespaceSharedAccessKeysResult {
  /// Shared access key1 for the namespace.
  final String? key1;
  /// Shared access key2 for the namespace.
  final String? key2;

  /// Creates a new [ListNamespaceSharedAccessKeysResult].
  /// [key1] Shared access key1 for the namespace.
  /// [key2] Shared access key2 for the namespace.
  ListNamespaceSharedAccessKeysResult({
    this.key1,
    this.key2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key1': ?key1,
      'key2': ?key2,
    };
  }

  factory ListNamespaceSharedAccessKeysResult.fromMap(Map<String, dynamic> map) {
    return ListNamespaceSharedAccessKeysResult(
      key1: (() { final guardedValue = map['key1']; if (guardedValue == null) return null; return guardedValue as String; })(),
      key2: (() { final guardedValue = map['key2']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

