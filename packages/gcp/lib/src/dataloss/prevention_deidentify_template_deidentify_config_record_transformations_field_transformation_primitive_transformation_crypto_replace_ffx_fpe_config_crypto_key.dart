// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation_crypto_replace_ffx_fpe_config_crypto_key_kms_wrapped.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation_crypto_replace_ffx_fpe_config_crypto_key_transient.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_primitive_transformation_crypto_replace_ffx_fpe_config_crypto_key_unwrapped.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKey {
  /// KMS wrapped key.
  /// Include to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM permissions when sending a request to perform a crypto transformation using a KMS-wrapped crypto key: dlp.kms.encrypt
  /// For more information, see [Creating a wrapped key](https://cloud.google.com/dlp/docs/create-wrapped-key). Only one of this, `transient` or `unwrapped` must be specified.
  /// Note: When you use Cloud KMS for cryptographic operations, [charges apply](https://cloud.google.com/kms/pricing).
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyKmsWrapped?
  kmsWrapped;

  /// Transient crypto key. Use this to have a random data crypto key generated. It will be discarded after the request finishes. Only one of this, `unwrapped` or `kms_wrapped` must be specified.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyTransient?
  transient;

  /// Unwrapped crypto key. Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible. Only one of this, `transient` or `kms_wrapped` must be specified.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyUnwrapped?
  unwrapped;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKey].
  /// [kmsWrapped] KMS wrapped key.
  /// [transient] Transient crypto key. Use this to have a random data crypto key generated. It will be discarded after the request finishes. Only one of this, `unwrapped` or `kms_wrapped` must be specified.
  /// [unwrapped] Unwrapped crypto key. Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible. Only one of this, `transient` or `kms_wrapped` must be specified.
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKey({
    this.kmsWrapped,
    this.transient,
    this.unwrapped,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsWrapped': ?kmsWrapped == null ? null : kmsWrapped!.toMap(),
      'transient': ?transient == null ? null : transient!.toMap(),
      'unwrapped': ?unwrapped == null ? null : unwrapped!.toMap(),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKey.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKey(
      kmsWrapped: map['kmsWrapped'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyKmsWrapped.fromMap(
              (map['kmsWrapped'] as Map).cast<String, dynamic>(),
            ),
      transient: map['transient'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyTransient.fromMap(
              (map['transient'] as Map).cast<String, dynamic>(),
            ),
      unwrapped: map['unwrapped'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyUnwrapped.fromMap(
              (map['unwrapped'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
