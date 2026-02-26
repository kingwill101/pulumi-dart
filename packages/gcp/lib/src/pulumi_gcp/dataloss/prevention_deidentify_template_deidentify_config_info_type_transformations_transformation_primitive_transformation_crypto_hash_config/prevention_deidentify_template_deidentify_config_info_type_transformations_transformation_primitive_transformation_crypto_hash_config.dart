// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_crypto_hash_config_crypto_key/prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_crypto_hash_config_crypto_key.dart';

class PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoHashConfig {
  /// The key used by the encryption function.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoHashConfigCryptoKey?
      cryptoKey;

  PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoHashConfig({
    this.cryptoKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cryptoKeyValue = cryptoKey;
    if (cryptoKeyValue != null) {
      map['cryptoKey'] = cryptoKeyValue.toMap();
    }
    return map;
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoHashConfig.fromMap(
      Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoHashConfig(
      cryptoKey: map['cryptoKey'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoHashConfigCryptoKey
              .fromMap((map['cryptoKey'] as Map).cast<String, dynamic>()),
    );
  }
}
