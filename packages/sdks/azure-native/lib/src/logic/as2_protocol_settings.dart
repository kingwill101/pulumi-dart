// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<AS2AcknowledgementConnectionSettings> acknowledgementConnectionSettings;
  /// The envelope settings.
  final pulumi.Input<AS2EnvelopeSettings> envelopeSettings;
  /// The error settings.
  final pulumi.Input<AS2ErrorSettings> errorSettings;
  /// The MDN settings.
  final pulumi.Input<AS2MdnSettings> mdnSettings;
  /// The message connection settings.
  final pulumi.Input<AS2MessageConnectionSettings> messageConnectionSettings;
  /// The security settings.
  final pulumi.Input<AS2SecuritySettings> securitySettings;
  /// The validation settings.
  final pulumi.Input<AS2ValidationSettings> validationSettings;

  /// Creates a new [AS2ProtocolSettings].
  /// [acknowledgementConnectionSettings] The acknowledgement connection settings.
  /// [envelopeSettings] The envelope settings.
  /// [errorSettings] The error settings.
  /// [mdnSettings] The MDN settings.
  /// [messageConnectionSettings] The message connection settings.
  /// [securitySettings] The security settings.
  /// [validationSettings] The validation settings.
  const AS2ProtocolSettings({
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
      'acknowledgementConnectionSettings': pulumi.Input.mapInputValue<AS2AcknowledgementConnectionSettings, Map<String, dynamic>>(acknowledgementConnectionSettings, (value) => value.toMap()),
      'envelopeSettings': pulumi.Input.mapInputValue<AS2EnvelopeSettings, Map<String, dynamic>>(envelopeSettings, (value) => value.toMap()),
      'errorSettings': pulumi.Input.mapInputValue<AS2ErrorSettings, Map<String, dynamic>>(errorSettings, (value) => value.toMap()),
      'mdnSettings': pulumi.Input.mapInputValue<AS2MdnSettings, Map<String, dynamic>>(mdnSettings, (value) => value.toMap()),
      'messageConnectionSettings': pulumi.Input.mapInputValue<AS2MessageConnectionSettings, Map<String, dynamic>>(messageConnectionSettings, (value) => value.toMap()),
      'securitySettings': pulumi.Input.mapInputValue<AS2SecuritySettings, Map<String, dynamic>>(securitySettings, (value) => value.toMap()),
      'validationSettings': pulumi.Input.mapInputValue<AS2ValidationSettings, Map<String, dynamic>>(validationSettings, (value) => value.toMap()),
    };
  }

  factory AS2ProtocolSettings.fromMap(Map<String, dynamic> map) {
    return AS2ProtocolSettings(
      acknowledgementConnectionSettings: pulumi.Input.fromValue(AS2AcknowledgementConnectionSettings.fromMap((map['acknowledgementConnectionSettings']! as Map).cast<String, dynamic>())),
      envelopeSettings: pulumi.Input.fromValue(AS2EnvelopeSettings.fromMap((map['envelopeSettings']! as Map).cast<String, dynamic>())),
      errorSettings: pulumi.Input.fromValue(AS2ErrorSettings.fromMap((map['errorSettings']! as Map).cast<String, dynamic>())),
      mdnSettings: pulumi.Input.fromValue(AS2MdnSettings.fromMap((map['mdnSettings']! as Map).cast<String, dynamic>())),
      messageConnectionSettings: pulumi.Input.fromValue(AS2MessageConnectionSettings.fromMap((map['messageConnectionSettings']! as Map).cast<String, dynamic>())),
      securitySettings: pulumi.Input.fromValue(AS2SecuritySettings.fromMap((map['securitySettings']! as Map).cast<String, dynamic>())),
      validationSettings: pulumi.Input.fromValue(AS2ValidationSettings.fromMap((map['validationSettings']! as Map).cast<String, dynamic>())),
    );
  }
}

