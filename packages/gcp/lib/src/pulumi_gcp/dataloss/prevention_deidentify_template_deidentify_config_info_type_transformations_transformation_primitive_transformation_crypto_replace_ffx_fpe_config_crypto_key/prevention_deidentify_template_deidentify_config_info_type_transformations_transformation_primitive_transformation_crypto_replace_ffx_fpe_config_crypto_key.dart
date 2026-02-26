// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_crypto_replace_ffx_fpe_config_crypto_key_kms_wrapped/prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_crypto_replace_ffx_fpe_config_crypto_key_kms_wrapped.dart';
import '../prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_crypto_replace_ffx_fpe_config_crypto_key_transient/prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_crypto_replace_ffx_fpe_config_crypto_key_transient.dart';
import '../prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_crypto_replace_ffx_fpe_config_crypto_key_unwrapped/prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_crypto_replace_ffx_fpe_config_crypto_key_unwrapped.dart';

class PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKey {
  /// KMS wrapped key.
  /// Include to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM permissions when sending a request to perform a crypto transformation using a KMS-wrapped crypto key: dlp.kms.encrypt
  /// For more information, see [Creating a wrapped key](https://cloud.google.com/dlp/docs/create-wrapped-key). Only one of this, <span pulumi-lang-nodejs="`transient`" pulumi-lang-dotnet="`Transient`" pulumi-lang-go="`transient`" pulumi-lang-python="`transient`" pulumi-lang-yaml="`transient`" pulumi-lang-java="`transient`">`transient`</span> or <span pulumi-lang-nodejs="`unwrapped`" pulumi-lang-dotnet="`Unwrapped`" pulumi-lang-go="`unwrapped`" pulumi-lang-python="`unwrapped`" pulumi-lang-yaml="`unwrapped`" pulumi-lang-java="`unwrapped`">`unwrapped`</span> must be specified.
  /// Note: When you use Cloud KMS for cryptographic operations, [charges apply](https://cloud.google.com/kms/pricing).
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyKmsWrapped?
      kmsWrapped;

  /// Transient crypto key. Use this to have a random data crypto key generated. It will be discarded after the request finishes. Only one of this, <span pulumi-lang-nodejs="`unwrapped`" pulumi-lang-dotnet="`Unwrapped`" pulumi-lang-go="`unwrapped`" pulumi-lang-python="`unwrapped`" pulumi-lang-yaml="`unwrapped`" pulumi-lang-java="`unwrapped`">`unwrapped`</span> or <span pulumi-lang-nodejs="`kmsWrapped`" pulumi-lang-dotnet="`KmsWrapped`" pulumi-lang-go="`kmsWrapped`" pulumi-lang-python="`kms_wrapped`" pulumi-lang-yaml="`kmsWrapped`" pulumi-lang-java="`kmsWrapped`">`kms_wrapped`</span> must be specified.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyTransient?
      transient;

  /// Unwrapped crypto key. Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible. Only one of this, <span pulumi-lang-nodejs="`transient`" pulumi-lang-dotnet="`Transient`" pulumi-lang-go="`transient`" pulumi-lang-python="`transient`" pulumi-lang-yaml="`transient`" pulumi-lang-java="`transient`">`transient`</span> or <span pulumi-lang-nodejs="`kmsWrapped`" pulumi-lang-dotnet="`KmsWrapped`" pulumi-lang-go="`kmsWrapped`" pulumi-lang-python="`kms_wrapped`" pulumi-lang-yaml="`kmsWrapped`" pulumi-lang-java="`kmsWrapped`">`kms_wrapped`</span> must be specified.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyUnwrapped?
      unwrapped;

  PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKey({
    this.kmsWrapped,
    this.transient,
    this.unwrapped,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsWrappedValue = kmsWrapped;
    if (kmsWrappedValue != null) {
      map['kmsWrapped'] = kmsWrappedValue.toMap();
    }
    final transientValue = transient;
    if (transientValue != null) {
      map['transient'] = transientValue.toMap();
    }
    final unwrappedValue = unwrapped;
    if (unwrappedValue != null) {
      map['unwrapped'] = unwrappedValue.toMap();
    }
    return map;
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKey.fromMap(
      Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKey(
      kmsWrapped: map['kmsWrapped'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyKmsWrapped
              .fromMap((map['kmsWrapped'] as Map).cast<String, dynamic>()),
      transient: map['transient'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyTransient
              .fromMap((map['transient'] as Map).cast<String, dynamic>()),
      unwrapped: map['unwrapped'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyUnwrapped
              .fromMap((map['unwrapped'] as Map).cast<String, dynamic>()),
    );
  }
}
