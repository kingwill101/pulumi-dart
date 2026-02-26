// ignore_for_file: unused_element, unnecessary_cast

import 'kms_wrapped_crypto_key_response.dart';

/// Shift a date forward or backward in time by a random amount which is consistent for a given patient and crypto key combination.
class DateShiftConfigResponse {
  /// An AES 128/192/256 bit key. The date shift is computed based on this key and the patient ID. If the patient ID is empty for a DICOM resource, the date shift is computed based on this key and the study instance UID. If `crypto_key` is not set, then `kms_wrapped` is used to calculate the date shift. If neither is set, a default key is generated for each de-identify operation. Must not be set if `kms_wrapped` is set.
  final String cryptoKey;

  /// KMS wrapped key. If `kms_wrapped` is not set, then `crypto_key` is used to calculate the date shift. If neither is set, a default key is generated for each de-identify operation. Must not be set if `crypto_key` is set.
  final KmsWrappedCryptoKeyResponse kmsWrapped;

  DateShiftConfigResponse({
    required this.cryptoKey,
    required this.kmsWrapped,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cryptoKey'] = cryptoKey;
    map['kmsWrapped'] = kmsWrapped.toMap();
    return map;
  }

  factory DateShiftConfigResponse.fromMap(Map<String, dynamic> map) {
    return DateShiftConfigResponse(
      cryptoKey: map['cryptoKey'] as String,
      kmsWrapped: KmsWrappedCryptoKeyResponse.fromMap(
          (map['kmsWrapped'] as Map).cast<String, dynamic>()),
    );
  }
}
