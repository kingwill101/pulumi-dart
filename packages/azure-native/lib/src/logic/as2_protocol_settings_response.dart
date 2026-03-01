// ignore_for_file: unused_element, unnecessary_cast

import 'as2_acknowledgement_connection_settings_response.dart';
import 'as2_envelope_settings_response.dart';
import 'as2_error_settings_response.dart';
import 'as2_mdn_settings_response.dart';
import 'as2_message_connection_settings_response.dart';
import 'as2_security_settings_response.dart';
import 'as2_validation_settings_response.dart';

/// The AS2 agreement protocol settings.
class AS2ProtocolSettingsResponse {
  /// The acknowledgement connection settings.
  final AS2AcknowledgementConnectionSettingsResponse acknowledgementConnectionSettings;
  /// The envelope settings.
  final AS2EnvelopeSettingsResponse envelopeSettings;
  /// The error settings.
  final AS2ErrorSettingsResponse errorSettings;
  /// The MDN settings.
  final AS2MdnSettingsResponse mdnSettings;
  /// The message connection settings.
  final AS2MessageConnectionSettingsResponse messageConnectionSettings;
  /// The security settings.
  final AS2SecuritySettingsResponse securitySettings;
  /// The validation settings.
  final AS2ValidationSettingsResponse validationSettings;

  /// Creates a new [AS2ProtocolSettingsResponse].
  /// [acknowledgementConnectionSettings] The acknowledgement connection settings.
  /// [envelopeSettings] The envelope settings.
  /// [errorSettings] The error settings.
  /// [mdnSettings] The MDN settings.
  /// [messageConnectionSettings] The message connection settings.
  /// [securitySettings] The security settings.
  /// [validationSettings] The validation settings.
  AS2ProtocolSettingsResponse({
    required this.acknowledgementConnectionSettings,
    required this.envelopeSettings,
    required this.errorSettings,
    required this.mdnSettings,
    required this.messageConnectionSettings,
    required this.securitySettings,
    required this.validationSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acknowledgementConnectionSettings': acknowledgementConnectionSettings.toMap(),
      'envelopeSettings': envelopeSettings.toMap(),
      'errorSettings': errorSettings.toMap(),
      'mdnSettings': mdnSettings.toMap(),
      'messageConnectionSettings': messageConnectionSettings.toMap(),
      'securitySettings': securitySettings.toMap(),
      'validationSettings': validationSettings.toMap(),
    };
  }

  factory AS2ProtocolSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AS2ProtocolSettingsResponse(
      acknowledgementConnectionSettings: AS2AcknowledgementConnectionSettingsResponse.fromMap((map['acknowledgementConnectionSettings'] as Map).cast<String, dynamic>()),
      envelopeSettings: AS2EnvelopeSettingsResponse.fromMap((map['envelopeSettings'] as Map).cast<String, dynamic>()),
      errorSettings: AS2ErrorSettingsResponse.fromMap((map['errorSettings'] as Map).cast<String, dynamic>()),
      mdnSettings: AS2MdnSettingsResponse.fromMap((map['mdnSettings'] as Map).cast<String, dynamic>()),
      messageConnectionSettings: AS2MessageConnectionSettingsResponse.fromMap((map['messageConnectionSettings'] as Map).cast<String, dynamic>()),
      securitySettings: AS2SecuritySettingsResponse.fromMap((map['securitySettings'] as Map).cast<String, dynamic>()),
      validationSettings: AS2ValidationSettingsResponse.fromMap((map['validationSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

