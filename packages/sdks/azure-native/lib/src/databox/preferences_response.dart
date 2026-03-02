// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_preferences_response.dart';
import 'transport_preferences_response.dart';

/// Preferences related to the order
class PreferencesResponse {
  /// Preferences related to the Encryption.
  final pulumi.Input<EncryptionPreferencesResponse>? encryptionPreferences;
  /// Preferred data center region.
  final pulumi.Input<List<String>>? preferredDataCenterRegion;
  /// Optional Preferences related to the reverse shipment logistics of the sku.
  final pulumi.Input<TransportPreferencesResponse>? reverseTransportPreferences;
  /// Preferences related to the Access Tier of storage accounts.
  final pulumi.Input<List<String>>? storageAccountAccessTierPreferences;
  /// Preferences related to the shipment logistics of the sku.
  final pulumi.Input<TransportPreferencesResponse>? transportPreferences;

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
      'encryptionPreferences': ?pulumi.Input.mapOptionalInputValue<EncryptionPreferencesResponse, Map<String, dynamic>>(encryptionPreferences, (value) => value.toMap()),
      'preferredDataCenterRegion': ?preferredDataCenterRegion,
      'reverseTransportPreferences': ?pulumi.Input.mapOptionalInputValue<TransportPreferencesResponse, Map<String, dynamic>>(reverseTransportPreferences, (value) => value.toMap()),
      'storageAccountAccessTierPreferences': ?storageAccountAccessTierPreferences,
      'transportPreferences': ?pulumi.Input.mapOptionalInputValue<TransportPreferencesResponse, Map<String, dynamic>>(transportPreferences, (value) => value.toMap()),
    };
  }

  factory PreferencesResponse.fromMap(Map<String, dynamic> map) {
    return PreferencesResponse(
      encryptionPreferences: map['encryptionPreferences'] == null ? null : (EncryptionPreferencesResponse.fromMap((map['encryptionPreferences'] as Map).cast<String, dynamic>())).input(),
      preferredDataCenterRegion: map['preferredDataCenterRegion'] == null ? null : ((map['preferredDataCenterRegion'] as List).cast<String>()).input(),
      reverseTransportPreferences: map['reverseTransportPreferences'] == null ? null : (TransportPreferencesResponse.fromMap((map['reverseTransportPreferences'] as Map).cast<String, dynamic>())).input(),
      storageAccountAccessTierPreferences: map['storageAccountAccessTierPreferences'] == null ? null : ((map['storageAccountAccessTierPreferences'] as List).cast<String>()).input(),
      transportPreferences: map['transportPreferences'] == null ? null : (TransportPreferencesResponse.fromMap((map['transportPreferences'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

