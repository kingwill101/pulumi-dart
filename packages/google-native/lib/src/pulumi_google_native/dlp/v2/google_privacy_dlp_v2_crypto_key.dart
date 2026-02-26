// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_kms_wrapped_crypto_key.dart';
import 'google_privacy_dlp_v2_transient_crypto_key.dart';
import 'google_privacy_dlp_v2_unwrapped_crypto_key.dart';

/// This is a data encryption key (DEK) (as opposed to a key encryption key (KEK) stored by Cloud Key Management Service (Cloud KMS). When using Cloud KMS to wrap or unwrap a DEK, be sure to set an appropriate IAM policy on the KEK to ensure an attacker cannot unwrap the DEK.
class GooglePrivacyDlpV2CryptoKey {
  /// Key wrapped using Cloud KMS
  final GooglePrivacyDlpV2KmsWrappedCryptoKey? kmsWrapped;

  /// Transient crypto key
  final GooglePrivacyDlpV2TransientCryptoKey? transient;

  /// Unwrapped crypto key
  final GooglePrivacyDlpV2UnwrappedCryptoKey? unwrapped;

  GooglePrivacyDlpV2CryptoKey({
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

  factory GooglePrivacyDlpV2CryptoKey.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CryptoKey(
      kmsWrapped: map['kmsWrapped'] == null
          ? null
          : GooglePrivacyDlpV2KmsWrappedCryptoKey.fromMap(
              (map['kmsWrapped'] as Map).cast<String, dynamic>()),
      transient: map['transient'] == null
          ? null
          : GooglePrivacyDlpV2TransientCryptoKey.fromMap(
              (map['transient'] as Map).cast<String, dynamic>()),
      unwrapped: map['unwrapped'] == null
          ? null
          : GooglePrivacyDlpV2UnwrappedCryptoKey.fromMap(
              (map['unwrapped'] as Map).cast<String, dynamic>()),
    );
  }
}
