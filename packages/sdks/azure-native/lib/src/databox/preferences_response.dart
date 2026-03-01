// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_preferences_response.dart';
import 'transport_preferences_response.dart';

/// Preferences related to the order
class PreferencesResponse {
  /// Preferences related to the Encryption.
  final EncryptionPreferencesResponse? encryptionPreferences;
  /// Preferred data center region.
  final List<String>? preferredDataCenterRegion;
  /// Optional Preferences related to the reverse shipment logistics of the sku.
  final TransportPreferencesResponse? reverseTransportPreferences;
  /// Preferences related to the Access Tier of storage accounts.
  final List<String>? storageAccountAccessTierPreferences;
  /// Preferences related to the shipment logistics of the sku.
  final TransportPreferencesResponse? transportPreferences;

  /// Creates a new [PreferencesResponse].
  /// [encryptionPreferences] Preferences related to the Encryption.
  /// [preferredDataCenterRegion] Preferred data center region.
  /// [reverseTransportPreferences] Optional Preferences related to the reverse shipment logistics of the sku.
  /// [storageAccountAccessTierPreferences] Preferences related to the Access Tier of storage accounts.
  /// [transportPreferences] Preferences related to the shipment logistics of the sku.
  PreferencesResponse({
    this.encryptionPreferences,
    this.preferredDataCenterRegion,
    this.reverseTransportPreferences,
    this.storageAccountAccessTierPreferences,
    this.transportPreferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionPreferences': ?encryptionPreferences == null ? null : encryptionPreferences!.toMap(),
      'preferredDataCenterRegion': ?preferredDataCenterRegion,
      'reverseTransportPreferences': ?reverseTransportPreferences == null ? null : reverseTransportPreferences!.toMap(),
      'storageAccountAccessTierPreferences': ?storageAccountAccessTierPreferences,
      'transportPreferences': ?transportPreferences == null ? null : transportPreferences!.toMap(),
    };
  }

  factory PreferencesResponse.fromMap(Map<String, dynamic> map) {
    return PreferencesResponse(
      encryptionPreferences: map['encryptionPreferences'] == null ? null : EncryptionPreferencesResponse.fromMap((map['encryptionPreferences'] as Map).cast<String, dynamic>()),
      preferredDataCenterRegion: map['preferredDataCenterRegion'] == null ? null : (map['preferredDataCenterRegion'] as List).cast<String>(),
      reverseTransportPreferences: map['reverseTransportPreferences'] == null ? null : TransportPreferencesResponse.fromMap((map['reverseTransportPreferences'] as Map).cast<String, dynamic>()),
      storageAccountAccessTierPreferences: map['storageAccountAccessTierPreferences'] == null ? null : (map['storageAccountAccessTierPreferences'] as List).cast<String>(),
      transportPreferences: map['transportPreferences'] == null ? null : TransportPreferencesResponse.fromMap((map['transportPreferences'] as Map).cast<String, dynamic>()),
    );
  }
}

