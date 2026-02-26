// ignore_for_file: unused_element, unnecessary_cast

import '../workforce_pool_provider_extra_attributes_oauth2_client_client_secret_value/workforce_pool_provider_extra_attributes_oauth2_client_client_secret_value.dart';

class WorkforcePoolProviderExtraAttributesOauth2ClientClientSecret {
  /// The value of the client secret.
  /// Structure is documented below.
  final WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValue?
      value;

  WorkforcePoolProviderExtraAttributesOauth2ClientClientSecret({
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

  factory WorkforcePoolProviderExtraAttributesOauth2ClientClientSecret.fromMap(
      Map<String, dynamic> map) {
    return WorkforcePoolProviderExtraAttributesOauth2ClientClientSecret(
      value: map['value'] == null
          ? null
          : WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValue
              .fromMap((map['value'] as Map).cast<String, dynamic>()),
    );
  }
}
