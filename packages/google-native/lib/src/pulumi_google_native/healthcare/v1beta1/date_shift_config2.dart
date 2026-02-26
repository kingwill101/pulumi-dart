// ignore_for_file: unused_element, unnecessary_cast

import 'kms_wrapped_crypto_key2.dart';

/// Shift a date forward or backward in time by a random amount which is consistent for a given patient and crypto key combination.
class DateShiftConfig2 {
  /// An AES 128/192/256 bit key. The date shift is computed based on this key and the patient ID. If the patient ID is empty for a DICOM resource, the date shift is computed based on this key and the study instance UID. If crypto_key is not set, then kms_wrapped is used to calculate the date shift. If neither is set, a default key is generated for each de-identify operation. Must not be set if kms_wrapped is set.
  final String? cryptoKey;

  /// KMS wrapped key. If kms_wrapped is not set, then crypto_key is used to calculate the date shift. If neither is set, a default key is generated for each de-identify operation. Must not be set if crypto_key is set.
  final KmsWrappedCryptoKey2? kmsWrapped;

  DateShiftConfig2({
    this.cryptoKey,
    this.kmsWrapped,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cryptoKeyValue = cryptoKey;
    if (cryptoKeyValue != null) {
      map['cryptoKey'] = cryptoKeyValue;
    }
    final kmsWrappedValue = kmsWrapped;
    if (kmsWrappedValue != null) {
      map['kmsWrapped'] = kmsWrappedValue.toMap();
    }
    return map;
  }

  factory DateShiftConfig2.fromMap(Map<String, dynamic> map) {
    return DateShiftConfig2(
      cryptoKey: map['cryptoKey'] == null ? null : map['cryptoKey'] as String,
      kmsWrapped: map['kmsWrapped'] == null
          ? null
          : KmsWrappedCryptoKey2.fromMap(
              (map['kmsWrapped'] as Map).cast<String, dynamic>()),
    );
  }
}
