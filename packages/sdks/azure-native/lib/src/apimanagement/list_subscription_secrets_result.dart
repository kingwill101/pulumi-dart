// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listSubscriptionSecrets.
class ListSubscriptionSecretsResult {
  /// Subscription primary key.
  final String? primaryKey;
  /// Subscription secondary key.
  final String? secondaryKey;

  /// Creates a new [ListSubscriptionSecretsResult].
  /// [primaryKey] Subscription primary key.
  /// [secondaryKey] Subscription secondary key.
  ListSubscriptionSecretsResult({
    this.primaryKey,
    this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryKey': ?primaryKey,
      'secondaryKey': ?secondaryKey,
    };
  }

  factory ListSubscriptionSecretsResult.fromMap(Map<String, dynamic> map) {
    return ListSubscriptionSecretsResult(
      primaryKey: map['primaryKey'] == null ? null : map['primaryKey'] as String,
      secondaryKey: map['secondaryKey'] == null ? null : map['secondaryKey'] as String,
    );
  }
}

