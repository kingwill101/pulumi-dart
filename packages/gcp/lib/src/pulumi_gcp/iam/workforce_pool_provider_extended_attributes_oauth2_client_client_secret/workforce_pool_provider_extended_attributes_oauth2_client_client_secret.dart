// ignore_for_file: unused_element, unnecessary_cast

import '../workforce_pool_provider_extended_attributes_oauth2_client_client_secret_value/workforce_pool_provider_extended_attributes_oauth2_client_client_secret_value.dart';

class WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecret {
  /// The value of the client secret.
  /// Structure is documented below.
  final WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValue?
      value;

  WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecret({
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

  factory WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecret.fromMap(
      Map<String, dynamic> map) {
    return WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecret(
      value: map['value'] == null
          ? null
          : WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValue
              .fromMap((map['value'] as Map).cast<String, dynamic>()),
    );
  }
}
