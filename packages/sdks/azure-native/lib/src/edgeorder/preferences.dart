// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_preferences.dart';
import 'management_resource_preferences.dart';
import 'notification_preference.dart';
import 'term_commitment_preferences.dart';
import 'transport_preferences.dart';

/// Preferences related to the order.
class Preferences {
  /// Preferences related to the Encryption.
  final pulumi.Input<EncryptionPreferences>? encryptionPreferences;
  /// Preferences related to the Management resource.
  final pulumi.Input<ManagementResourcePreferences>? managementResourcePreferences;
  /// Notification preferences.
  final pulumi.Input<List<NotificationPreference>>? notificationPreferences;
  /// Preferences related to the Term commitment.
  final pulumi.Input<TermCommitmentPreferences>? termCommitmentPreferences;
  /// Preferences related to the shipment logistics of the order.
  final pulumi.Input<TransportPreferences>? transportPreferences;

  /// Creates a new [Preferences].
  /// [encryptionPreferences] Preferences related to the Encryption.
  /// [managementResourcePreferences] Preferences related to the Management resource.
  /// [notificationPreferences] Notification preferences.
  /// [termCommitmentPreferences] Preferences related to the Term commitment.
  /// [transportPreferences] Preferences related to the shipment logistics of the order.
  const Preferences({
    this.encryptionPreferences,
    this.managementResourcePreferences,
    this.notificationPreferences,
    this.termCommitmentPreferences,
    this.transportPreferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionPreferences': ?pulumi.Input.mapOptionalInputValue<EncryptionPreferences, Map<String, dynamic>>(encryptionPreferences, (value) => value.toMap()),
      'managementResourcePreferences': ?pulumi.Input.mapOptionalInputValue<ManagementResourcePreferences, Map<String, dynamic>>(managementResourcePreferences, (value) => value.toMap()),
      'notificationPreferences': ?pulumi.Input.mapOptionalInputValue<List<NotificationPreference>, List<Map<String, dynamic>>>(notificationPreferences, (value) => pulumi.Input.encodeList<NotificationPreference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'termCommitmentPreferences': ?pulumi.Input.mapOptionalInputValue<TermCommitmentPreferences, Map<String, dynamic>>(termCommitmentPreferences, (value) => value.toMap()),
      'transportPreferences': ?pulumi.Input.mapOptionalInputValue<TransportPreferences, Map<String, dynamic>>(transportPreferences, (value) => value.toMap()),
    };
  }

  factory Preferences.fromMap(Map<String, dynamic> map) {
    return Preferences(
      encryptionPreferences: (() { final guardedValue = map['encryptionPreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionPreferences.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managementResourcePreferences: (() { final guardedValue = map['managementResourcePreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagementResourcePreferences.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      notificationPreferences: (() { final guardedValue = map['notificationPreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NotificationPreference>(guardedValue, (value) => NotificationPreference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      termCommitmentPreferences: (() { final guardedValue = map['termCommitmentPreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TermCommitmentPreferences.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      transportPreferences: (() { final guardedValue = map['transportPreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TransportPreferences.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
