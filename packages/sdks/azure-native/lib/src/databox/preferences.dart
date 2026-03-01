// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_preferences.dart';
import 'transport_preferences.dart';

/// Preferences related to the order
class Preferences {
  /// Preferences related to the Encryption.
  final EncryptionPreferences? encryptionPreferences;
  /// Preferred data center region.
  final List<String>? preferredDataCenterRegion;
  /// Optional Preferences related to the reverse shipment logistics of the sku.
  final TransportPreferences? reverseTransportPreferences;
  /// Preferences related to the Access Tier of storage accounts.
  final List<String>? storageAccountAccessTierPreferences;
  /// Preferences related to the shipment logistics of the sku.
  final TransportPreferences? transportPreferences;

  /// Creates a new [Preferences].
  /// [encryptionPreferences] Preferences related to the Encryption.
  /// [preferredDataCenterRegion] Preferred data center region.
  /// [reverseTransportPreferences] Optional Preferences related to the reverse shipment logistics of the sku.
  /// [storageAccountAccessTierPreferences] Preferences related to the Access Tier of storage accounts.
  /// [transportPreferences] Preferences related to the shipment logistics of the sku.
  Preferences({
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

  factory Preferences.fromMap(Map<String, dynamic> map) {
    return Preferences(
      encryptionPreferences: map['encryptionPreferences'] == null ? null : EncryptionPreferences.fromMap((map['encryptionPreferences'] as Map).cast<String, dynamic>()),
      preferredDataCenterRegion: map['preferredDataCenterRegion'] == null ? null : (map['preferredDataCenterRegion'] as List).cast<String>(),
      reverseTransportPreferences: map['reverseTransportPreferences'] == null ? null : TransportPreferences.fromMap((map['reverseTransportPreferences'] as Map).cast<String, dynamic>()),
      storageAccountAccessTierPreferences: map['storageAccountAccessTierPreferences'] == null ? null : (map['storageAccountAccessTierPreferences'] as List).cast<String>(),
      transportPreferences: map['transportPreferences'] == null ? null : TransportPreferences.fromMap((map['transportPreferences'] as Map).cast<String, dynamic>()),
    );
  }
}

