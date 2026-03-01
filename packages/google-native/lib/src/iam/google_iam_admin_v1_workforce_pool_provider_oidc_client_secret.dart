// ignore_for_file: unused_element, unnecessary_cast

import 'google_iam_admin_v1_workforce_pool_provider_oidc_client_secret_value.dart';

/// Representation of a client secret configured for the OIDC provider.
class GoogleIamAdminV1WorkforcePoolProviderOidcClientSecret {
  /// The value of the client secret.
  final GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue? value;

  /// Creates a new [GoogleIamAdminV1WorkforcePoolProviderOidcClientSecret].
  /// [value] The value of the client secret.
  GoogleIamAdminV1WorkforcePoolProviderOidcClientSecret({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value == null ? null : value!.toMap()};
  }

  factory GoogleIamAdminV1WorkforcePoolProviderOidcClientSecret.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleIamAdminV1WorkforcePoolProviderOidcClientSecret(
      value: map['value'] == null
          ? null
          : GoogleIamAdminV1WorkforcePoolProviderOidcClientSecretValue.fromMap(
              (map['value'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
