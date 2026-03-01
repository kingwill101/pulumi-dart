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
  final EncryptionPreferences? encryptionPreferences;
  /// Preferences related to the Management resource.
  final ManagementResourcePreferences? managementResourcePreferences;
  /// Notification preferences.
  final List<NotificationPreference>? notificationPreferences;
  /// Preferences related to the Term commitment.
  final TermCommitmentPreferences? termCommitmentPreferences;
  /// Preferences related to the shipment logistics of the order.
  final TransportPreferences? transportPreferences;

  /// Creates a new [Preferences].
  /// [encryptionPreferences] Preferences related to the Encryption.
  /// [managementResourcePreferences] Preferences related to the Management resource.
  /// [notificationPreferences] Notification preferences.
  /// [termCommitmentPreferences] Preferences related to the Term commitment.
  /// [transportPreferences] Preferences related to the shipment logistics of the order.
  Preferences({
    this.encryptionPreferences,
    this.managementResourcePreferences,
    this.notificationPreferences,
    this.termCommitmentPreferences,
    this.transportPreferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionPreferences': ?encryptionPreferences == null ? null : encryptionPreferences!.toMap(),
      'managementResourcePreferences': ?managementResourcePreferences == null ? null : managementResourcePreferences!.toMap(),
      'notificationPreferences': ?notificationPreferences == null ? null : pulumi.Input.encodeList<NotificationPreference, Map<String, dynamic>>(notificationPreferences!, (value) => value.toMap()),
      'termCommitmentPreferences': ?termCommitmentPreferences == null ? null : termCommitmentPreferences!.toMap(),
      'transportPreferences': ?transportPreferences == null ? null : transportPreferences!.toMap(),
    };
  }

  factory Preferences.fromMap(Map<String, dynamic> map) {
    return Preferences(
      encryptionPreferences: map['encryptionPreferences'] == null ? null : EncryptionPreferences.fromMap((map['encryptionPreferences'] as Map).cast<String, dynamic>()),
      managementResourcePreferences: map['managementResourcePreferences'] == null ? null : ManagementResourcePreferences.fromMap((map['managementResourcePreferences'] as Map).cast<String, dynamic>()),
      notificationPreferences: map['notificationPreferences'] == null ? null : pulumi.Input.decodeList<NotificationPreference>(map['notificationPreferences'], (value) => NotificationPreference.fromMap((value as Map).cast<String, dynamic>())),
      termCommitmentPreferences: map['termCommitmentPreferences'] == null ? null : TermCommitmentPreferences.fromMap((map['termCommitmentPreferences'] as Map).cast<String, dynamic>()),
      transportPreferences: map['transportPreferences'] == null ? null : TransportPreferences.fromMap((map['transportPreferences'] as Map).cast<String, dynamic>()),
    );
  }
}

