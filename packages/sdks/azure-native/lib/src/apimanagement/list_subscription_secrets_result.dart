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
  ListSubscriptionSecretsResult({this.primaryKey, this.secondaryKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryKey': ?primaryKey,
      'secondaryKey': ?secondaryKey,
    };
  }

  factory ListSubscriptionSecretsResult.fromMap(Map<String, dynamic> map) {
    return ListSubscriptionSecretsResult(
      primaryKey: (() {
        final guardedValue = map['primaryKey'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      secondaryKey: (() {
        final guardedValue = map['secondaryKey'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
