// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listDomainSharedAccessKeys.
class ListDomainSharedAccessKeysResult {
  /// Shared access key1 for the domain.
  final String? key1;
  /// Shared access key2 for the domain.
  final String? key2;

  /// Creates a new [ListDomainSharedAccessKeysResult].
  /// [key1] Shared access key1 for the domain.
  /// [key2] Shared access key2 for the domain.
  const ListDomainSharedAccessKeysResult({
    this.key1,
    this.key2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key1': ?key1,
      'key2': ?key2,
    };
  }

  factory ListDomainSharedAccessKeysResult.fromMap(Map<String, dynamic> map) {
    return ListDomainSharedAccessKeysResult(
      key1: (() { final guardedValue = map['key1']; if (guardedValue == null) return null; return guardedValue as String; })(),
      key2: (() { final guardedValue = map['key2']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
