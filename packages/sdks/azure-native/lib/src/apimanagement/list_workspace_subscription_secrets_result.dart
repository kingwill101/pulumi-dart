// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listWorkspaceSubscriptionSecrets.
class ListWorkspaceSubscriptionSecretsResult {
  /// Subscription primary key.
  final String? primaryKey;
  /// Subscription secondary key.
  final String? secondaryKey;

  /// Creates a new [ListWorkspaceSubscriptionSecretsResult].
  /// [primaryKey] Subscription primary key.
  /// [secondaryKey] Subscription secondary key.
  ListWorkspaceSubscriptionSecretsResult({
    this.primaryKey,
    this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryKey': ?primaryKey,
      'secondaryKey': ?secondaryKey,
    };
  }

  factory ListWorkspaceSubscriptionSecretsResult.fromMap(Map<String, dynamic> map) {
    return ListWorkspaceSubscriptionSecretsResult(
      primaryKey: map['primaryKey'] == null ? null : map['primaryKey']! as String,
      secondaryKey: map['secondaryKey'] == null ? null : map['secondaryKey']! as String,
    );
  }
}

