// ignore_for_file: unused_element, unnecessary_cast

import 'as2_acknowledgement_connection_settings.dart';
import 'as2_envelope_settings.dart';
import 'as2_error_settings.dart';
import 'as2_mdn_settings.dart';
import 'as2_message_connection_settings.dart';
import 'as2_security_settings.dart';
import 'as2_validation_settings.dart';

/// The AS2 agreement protocol settings.
class AS2ProtocolSettings {
  /// The acknowledgement connection settings.
  final AS2AcknowledgementConnectionSettings acknowledgementConnectionSettings;
  /// The envelope settings.
  final AS2EnvelopeSettings envelopeSettings;
  /// The error settings.
  final AS2ErrorSettings errorSettings;
  /// The MDN settings.
  final AS2MdnSettings mdnSettings;
  /// The message connection settings.
  final AS2MessageConnectionSettings messageConnectionSettings;
  /// The security settings.
  final AS2SecuritySettings securitySettings;
  /// The validation settings.
  final AS2ValidationSettings validationSettings;

  /// Creates a new [AS2ProtocolSettings].
  /// [acknowledgementConnectionSettings] The acknowledgement connection settings.
  /// [envelopeSettings] The envelope settings.
  /// [errorSettings] The error settings.
  /// [mdnSettings] The MDN settings.
  /// [messageConnectionSettings] The message connection settings.
  /// [securitySettings] The security settings.
  /// [validationSettings] The validation settings.
  AS2ProtocolSettings({
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

  factory AS2ProtocolSettings.fromMap(Map<String, dynamic> map) {
    return AS2ProtocolSettings(
      acknowledgementConnectionSettings: AS2AcknowledgementConnectionSettings.fromMap((map['acknowledgementConnectionSettings'] as Map).cast<String, dynamic>()),
      envelopeSettings: AS2EnvelopeSettings.fromMap((map['envelopeSettings'] as Map).cast<String, dynamic>()),
      errorSettings: AS2ErrorSettings.fromMap((map['errorSettings'] as Map).cast<String, dynamic>()),
      mdnSettings: AS2MdnSettings.fromMap((map['mdnSettings'] as Map).cast<String, dynamic>()),
      messageConnectionSettings: AS2MessageConnectionSettings.fromMap((map['messageConnectionSettings'] as Map).cast<String, dynamic>()),
      securitySettings: AS2SecuritySettings.fromMap((map['securitySettings'] as Map).cast<String, dynamic>()),
      validationSettings: AS2ValidationSettings.fromMap((map['validationSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

