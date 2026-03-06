// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_preferences.dart';
import 'transport_preferences.dart';

/// Preferences related to the order
class Preferences {
  /// Preferences related to the Encryption.
  final pulumi.Input<EncryptionPreferences>? encryptionPreferences;
  /// Preferred data center region.
  final pulumi.Input<List<String>>? preferredDataCenterRegion;
  /// Optional Preferences related to the reverse shipment logistics of the sku.
  final pulumi.Input<TransportPreferences>? reverseTransportPreferences;
  /// Preferences related to the Access Tier of storage accounts.
  final pulumi.Input<List<String>>? storageAccountAccessTierPreferences;
  /// Preferences related to the shipment logistics of the sku.
  final pulumi.Input<TransportPreferences>? transportPreferences;

  /// Creates a new [Preferences].
  /// [encryptionPreferences] Preferences related to the Encryption.
  /// [preferredDataCenterRegion] Preferred data center region.
  /// [reverseTransportPreferences] Optional Preferences related to the reverse shipment logistics of the sku.
  /// [storageAccountAccessTierPreferences] Preferences related to the Access Tier of storage accounts.
  /// [transportPreferences] Preferences related to the shipment logistics of the sku.
  const Preferences({
    this.encryptionPreferences,
    this.preferredDataCenterRegion,
    this.reverseTransportPreferences,
    this.storageAccountAccessTierPreferences,
    this.transportPreferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionPreferences': ?pulumi.Input.mapOptionalInputValue<EncryptionPreferences, Map<String, dynamic>>(encryptionPreferences, (value) => value.toMap()),
      'preferredDataCenterRegion': ?preferredDataCenterRegion,
      'reverseTransportPreferences': ?pulumi.Input.mapOptionalInputValue<TransportPreferences, Map<String, dynamic>>(reverseTransportPreferences, (value) => value.toMap()),
      'storageAccountAccessTierPreferences': ?storageAccountAccessTierPreferences,
      'transportPreferences': ?pulumi.Input.mapOptionalInputValue<TransportPreferences, Map<String, dynamic>>(transportPreferences, (value) => value.toMap()),
    };
  }

  factory Preferences.fromMap(Map<String, dynamic> map) {
    return Preferences(
      encryptionPreferences: (() { final guardedValue = map['encryptionPreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionPreferences.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preferredDataCenterRegion: (() { final guardedValue = map['preferredDataCenterRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      reverseTransportPreferences: (() { final guardedValue = map['reverseTransportPreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TransportPreferences.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageAccountAccessTierPreferences: (() { final guardedValue = map['storageAccountAccessTierPreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      transportPreferences: (() { final guardedValue = map['transportPreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TransportPreferences.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

