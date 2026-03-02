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
  final pulumi.Input<EncryptionPreferencesResponse>? encryptionPreferences;
  /// Preferences related to the Management resource.
  final pulumi.Input<ManagementResourcePreferencesResponse>? managementResourcePreferences;
  /// Notification preferences.
  final pulumi.Input<List<NotificationPreferenceResponse>>? notificationPreferences;
  /// Preferences related to the Term commitment.
  final pulumi.Input<TermCommitmentPreferencesResponse>? termCommitmentPreferences;
  /// Preferences related to the shipment logistics of the order.
  final pulumi.Input<TransportPreferencesResponse>? transportPreferences;

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
      'encryptionPreferences': ?pulumi.Input.mapOptionalInputValue<EncryptionPreferencesResponse, Map<String, dynamic>>(encryptionPreferences, (value) => value.toMap()),
      'managementResourcePreferences': ?pulumi.Input.mapOptionalInputValue<ManagementResourcePreferencesResponse, Map<String, dynamic>>(managementResourcePreferences, (value) => value.toMap()),
      'notificationPreferences': ?pulumi.Input.mapOptionalInputValue<List<NotificationPreferenceResponse>, List<Map<String, dynamic>>>(notificationPreferences, (value) => pulumi.Input.encodeList<NotificationPreferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'termCommitmentPreferences': ?pulumi.Input.mapOptionalInputValue<TermCommitmentPreferencesResponse, Map<String, dynamic>>(termCommitmentPreferences, (value) => value.toMap()),
      'transportPreferences': ?pulumi.Input.mapOptionalInputValue<TransportPreferencesResponse, Map<String, dynamic>>(transportPreferences, (value) => value.toMap()),
    };
  }

  factory PreferencesResponse.fromMap(Map<String, dynamic> map) {
    return PreferencesResponse(
      encryptionPreferences: map['encryptionPreferences'] == null ? null : (EncryptionPreferencesResponse.fromMap((map['encryptionPreferences'] as Map).cast<String, dynamic>())).input(),
      managementResourcePreferences: map['managementResourcePreferences'] == null ? null : (ManagementResourcePreferencesResponse.fromMap((map['managementResourcePreferences'] as Map).cast<String, dynamic>())).input(),
      notificationPreferences: map['notificationPreferences'] == null ? null : (pulumi.Input.decodeList<NotificationPreferenceResponse>(map['notificationPreferences'], (value) => NotificationPreferenceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      termCommitmentPreferences: map['termCommitmentPreferences'] == null ? null : (TermCommitmentPreferencesResponse.fromMap((map['termCommitmentPreferences'] as Map).cast<String, dynamic>())).input(),
      transportPreferences: map['transportPreferences'] == null ? null : (TransportPreferencesResponse.fromMap((map['transportPreferences'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

