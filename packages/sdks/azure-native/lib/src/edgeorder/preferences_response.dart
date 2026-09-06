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
  final pulumi.Input<EncryptionPreferencesResponse?>? encryptionPreferences;
  /// Preferences related to the Management resource.
  final pulumi.Input<ManagementResourcePreferencesResponse?>? managementResourcePreferences;
  /// Notification preferences.
  final pulumi.Input<List<NotificationPreferenceResponse>?>? notificationPreferences;
  /// Preferences related to the Term commitment.
  final pulumi.Input<TermCommitmentPreferencesResponse?>? termCommitmentPreferences;
  /// Preferences related to the shipment logistics of the order.
  final pulumi.Input<TransportPreferencesResponse?>? transportPreferences;

  /// Creates a new [PreferencesResponse].
  /// [encryptionPreferences] Preferences related to the Encryption.
  /// [managementResourcePreferences] Preferences related to the Management resource.
  /// [notificationPreferences] Notification preferences.
  /// [termCommitmentPreferences] Preferences related to the Term commitment.
  /// [transportPreferences] Preferences related to the shipment logistics of the order.
  const PreferencesResponse({
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
      encryptionPreferences: (() { final guardedValue = map['encryptionPreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionPreferencesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managementResourcePreferences: (() { final guardedValue = map['managementResourcePreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagementResourcePreferencesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      notificationPreferences: (() { final guardedValue = map['notificationPreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NotificationPreferenceResponse>(guardedValue, (value) => NotificationPreferenceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      termCommitmentPreferences: (() { final guardedValue = map['termCommitmentPreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TermCommitmentPreferencesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      transportPreferences: (() { final guardedValue = map['transportPreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TransportPreferencesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
