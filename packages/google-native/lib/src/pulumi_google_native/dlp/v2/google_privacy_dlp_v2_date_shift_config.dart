// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_crypto_key.dart';
import 'google_privacy_dlp_v2_field_id.dart';

/// Shifts dates by random number of days, with option to be consistent for the same context. See https://cloud.google.com/dlp/docs/concepts-date-shifting to learn more.
class GooglePrivacyDlpV2DateShiftConfig {
  /// Points to the field that contains the context, for example, an entity id. If set, must also set cryptoKey. If set, shift will be consistent for the given context.
  final GooglePrivacyDlpV2FieldId? context;

  /// Causes the shift to be computed based on this key and the context. This results in the same shift for the same context and crypto_key. If set, must also set context. Can only be applied to table items.
  final GooglePrivacyDlpV2CryptoKey? cryptoKey;

  /// For example, -5 means shift date to at most 5 days back in the past.
  final int lowerBoundDays;

  /// Range of shift in days. Actual shift will be selected at random within this range (inclusive ends). Negative means shift to earlier in time. Must not be more than 365250 days (1000 years) each direction. For example, 3 means shift date to at most 3 days into the future.
  final int upperBoundDays;

  GooglePrivacyDlpV2DateShiftConfig({
    this.context,
    this.cryptoKey,
    required this.lowerBoundDays,
    required this.upperBoundDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contextValue = context;
    if (contextValue != null) {
      map['context'] = contextValue.toMap();
    }
    final cryptoKeyValue = cryptoKey;
    if (cryptoKeyValue != null) {
      map['cryptoKey'] = cryptoKeyValue.toMap();
    }
    map['lowerBoundDays'] = lowerBoundDays;
    map['upperBoundDays'] = upperBoundDays;
    return map;
  }

  factory GooglePrivacyDlpV2DateShiftConfig.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DateShiftConfig(
      context: map['context'] == null
          ? null
          : GooglePrivacyDlpV2FieldId.fromMap(
              (map['context'] as Map).cast<String, dynamic>()),
      cryptoKey: map['cryptoKey'] == null
          ? null
          : GooglePrivacyDlpV2CryptoKey.fromMap(
              (map['cryptoKey'] as Map).cast<String, dynamic>()),
      lowerBoundDays: map['lowerBoundDays'] as int,
      upperBoundDays: map['upperBoundDays'] as int,
    );
  }
}
