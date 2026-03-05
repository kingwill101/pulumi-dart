// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by listWorkflowAccessKeySecretKeys.
class ListWorkflowAccessKeySecretKeysResult {
  /// Gets the primary secret key.
  final String primarySecretKey;

  /// Gets the secondary secret key.
  final String secondarySecretKey;

  /// Creates a new [ListWorkflowAccessKeySecretKeysResult].
  /// [primarySecretKey] Gets the primary secret key.
  /// [secondarySecretKey] Gets the secondary secret key.
  ListWorkflowAccessKeySecretKeysResult({
    required this.primarySecretKey,
    required this.secondarySecretKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primarySecretKey': primarySecretKey,
      'secondarySecretKey': secondarySecretKey,
    };
  }

  factory ListWorkflowAccessKeySecretKeysResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListWorkflowAccessKeySecretKeysResult(
      primarySecretKey: map['primarySecretKey'] as String,
      secondarySecretKey: map['secondarySecretKey'] as String,
    );
  }
}
