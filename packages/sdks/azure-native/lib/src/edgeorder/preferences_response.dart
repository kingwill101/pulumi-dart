// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_preferences_response.dart';
import 'management_resource_preferences_response.dart';
import 'notification_preference_response.dart';
import 'term_commitment_preferences_response.dart';
import 'transport_preferences_response.dart';

/// Preferences related to the order.
class PreferencesResponse {
  /// Preferences related to the Encryption.
  final EncryptionPreferencesResponse? encryptionPreferences;
  /// Preferences related to the Management resource.
  final ManagementResourcePreferencesResponse? managementResourcePreferences;
  /// Notification preferences.
  final List<NotificationPreferenceResponse>? notificationPreferences;
  /// Preferences related to the Term commitment.
  final TermCommitmentPreferencesResponse? termCommitmentPreferences;
  /// Preferences related to the shipment logistics of the order.
  final TransportPreferencesResponse? transportPreferences;

  /// Creates a new [PreferencesResponse].
  /// [encryptionPreferences] Preferences related to the Encryption.
  /// [managementResourcePreferences] Preferences related to the Management resource.
  /// [notificationPreferences] Notification preferences.
  /// [termCommitmentPreferences] Preferences related to the Term commitment.
  /// [transportPreferences] Preferences related to the shipment logistics of the order.
  PreferencesResponse({
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
      'notificationPreferences': ?notificationPreferences == null ? null : pulumi.Input.encodeList<NotificationPreferenceResponse, Map<String, dynamic>>(notificationPreferences!, (value) => value.toMap()),
      'termCommitmentPreferences': ?termCommitmentPreferences == null ? null : termCommitmentPreferences!.toMap(),
      'transportPreferences': ?transportPreferences == null ? null : transportPreferences!.toMap(),
    };
  }

  factory PreferencesResponse.fromMap(Map<String, dynamic> map) {
    return PreferencesResponse(
      encryptionPreferences: map['encryptionPreferences'] == null ? null : EncryptionPreferencesResponse.fromMap((map['encryptionPreferences'] as Map).cast<String, dynamic>()),
      managementResourcePreferences: map['managementResourcePreferences'] == null ? null : ManagementResourcePreferencesResponse.fromMap((map['managementResourcePreferences'] as Map).cast<String, dynamic>()),
      notificationPreferences: map['notificationPreferences'] == null ? null : pulumi.Input.decodeList<NotificationPreferenceResponse>(map['notificationPreferences'], (value) => NotificationPreferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      termCommitmentPreferences: map['termCommitmentPreferences'] == null ? null : TermCommitmentPreferencesResponse.fromMap((map['termCommitmentPreferences'] as Map).cast<String, dynamic>()),
      transportPreferences: map['transportPreferences'] == null ? null : TransportPreferencesResponse.fromMap((map['transportPreferences'] as Map).cast<String, dynamic>()),
    );
  }
}

