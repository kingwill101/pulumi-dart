// ignore_for_file: unused_element, unnecessary_cast

import 'workforce_pool_provider_oidc_client_secret_value.dart';

class WorkforcePoolProviderOidcClientSecret {
  /// The value of the client secret.
  /// Structure is documented below.
  final WorkforcePoolProviderOidcClientSecretValue? value;

  /// Creates a new [WorkforcePoolProviderOidcClientSecret].
  /// [value] The value of the client secret.
  WorkforcePoolProviderOidcClientSecret({
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue.toMap();
    }
    return map;
  }

  factory WorkforcePoolProviderOidcClientSecret.fromMap(
      Map<String, dynamic> map) {
    return WorkforcePoolProviderOidcClientSecret(
      value: map['value'] == null
          ? null
          : WorkforcePoolProviderOidcClientSecretValue.fromMap(
              (map['value'] as Map).cast<String, dynamic>()),
    );
  }
}
