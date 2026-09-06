// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listWorkflowAccessKeySecretKeys.
class ListWorkflowAccessKeySecretKeysResult {
  /// Gets the primary secret key.
  final String? primarySecretKey;
  /// Gets the secondary secret key.
  final String? secondarySecretKey;

  /// Creates a new [ListWorkflowAccessKeySecretKeysResult].
  /// [primarySecretKey] Gets the primary secret key.
  /// [secondarySecretKey] Gets the secondary secret key.
  const ListWorkflowAccessKeySecretKeysResult({
    this.primarySecretKey,
    this.secondarySecretKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primarySecretKey': ?primarySecretKey,
      'secondarySecretKey': ?secondarySecretKey,
    };
  }

  factory ListWorkflowAccessKeySecretKeysResult.fromMap(Map<String, dynamic> map) {
    return ListWorkflowAccessKeySecretKeysResult(
      primarySecretKey: (() { final guardedValue = map['primarySecretKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondarySecretKey: (() { final guardedValue = map['secondarySecretKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
