// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<AS2AcknowledgementConnectionSettingsResponse> acknowledgementConnectionSettings;
  /// The envelope settings.
  final pulumi.Input<AS2EnvelopeSettingsResponse> envelopeSettings;
  /// The error settings.
  final pulumi.Input<AS2ErrorSettingsResponse> errorSettings;
  /// The MDN settings.
  final pulumi.Input<AS2MdnSettingsResponse> mdnSettings;
  /// The message connection settings.
  final pulumi.Input<AS2MessageConnectionSettingsResponse> messageConnectionSettings;
  /// The security settings.
  final pulumi.Input<AS2SecuritySettingsResponse> securitySettings;
  /// The validation settings.
  final pulumi.Input<AS2ValidationSettingsResponse> validationSettings;

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
      'acknowledgementConnectionSettings': pulumi.Input.mapInputValue<AS2AcknowledgementConnectionSettingsResponse, Map<String, dynamic>>(acknowledgementConnectionSettings, (value) => value.toMap()),
      'envelopeSettings': pulumi.Input.mapInputValue<AS2EnvelopeSettingsResponse, Map<String, dynamic>>(envelopeSettings, (value) => value.toMap()),
      'errorSettings': pulumi.Input.mapInputValue<AS2ErrorSettingsResponse, Map<String, dynamic>>(errorSettings, (value) => value.toMap()),
      'mdnSettings': pulumi.Input.mapInputValue<AS2MdnSettingsResponse, Map<String, dynamic>>(mdnSettings, (value) => value.toMap()),
      'messageConnectionSettings': pulumi.Input.mapInputValue<AS2MessageConnectionSettingsResponse, Map<String, dynamic>>(messageConnectionSettings, (value) => value.toMap()),
      'securitySettings': pulumi.Input.mapInputValue<AS2SecuritySettingsResponse, Map<String, dynamic>>(securitySettings, (value) => value.toMap()),
      'validationSettings': pulumi.Input.mapInputValue<AS2ValidationSettingsResponse, Map<String, dynamic>>(validationSettings, (value) => value.toMap()),
    };
  }

  factory AS2ProtocolSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AS2ProtocolSettingsResponse(
      acknowledgementConnectionSettings: (AS2AcknowledgementConnectionSettingsResponse.fromMap((map['acknowledgementConnectionSettings'] as Map).cast<String, dynamic>())).input(),
      envelopeSettings: (AS2EnvelopeSettingsResponse.fromMap((map['envelopeSettings'] as Map).cast<String, dynamic>())).input(),
      errorSettings: (AS2ErrorSettingsResponse.fromMap((map['errorSettings'] as Map).cast<String, dynamic>())).input(),
      mdnSettings: (AS2MdnSettingsResponse.fromMap((map['mdnSettings'] as Map).cast<String, dynamic>())).input(),
      messageConnectionSettings: (AS2MessageConnectionSettingsResponse.fromMap((map['messageConnectionSettings'] as Map).cast<String, dynamic>())).input(),
      securitySettings: (AS2SecuritySettingsResponse.fromMap((map['securitySettings'] as Map).cast<String, dynamic>())).input(),
      validationSettings: (AS2ValidationSettingsResponse.fromMap((map['validationSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

