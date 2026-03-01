// ignore_for_file: unused_element, unnecessary_cast

import 'as2_protocol_settings_response.dart';
import 'business_identity_response.dart';

/// The integration account AS2 one-way agreement.
class AS2OneWayAgreementResponse {
  /// The AS2 protocol settings.
  final AS2ProtocolSettingsResponse protocolSettings;
  /// The receiver business identity
  final BusinessIdentityResponse receiverBusinessIdentity;
  /// The sender business identity
  final BusinessIdentityResponse senderBusinessIdentity;

  /// Creates a new [AS2OneWayAgreementResponse].
  /// [protocolSettings] The AS2 protocol settings.
  /// [receiverBusinessIdentity] The receiver business identity
  /// [senderBusinessIdentity] The sender business identity
  AS2OneWayAgreementResponse({
    required this.protocolSettings,
    required this.receiverBusinessIdentity,
    required this.senderBusinessIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protocolSettings': protocolSettings.toMap(),
      'receiverBusinessIdentity': receiverBusinessIdentity.toMap(),
      'senderBusinessIdentity': senderBusinessIdentity.toMap(),
    };
  }

  factory AS2OneWayAgreementResponse.fromMap(Map<String, dynamic> map) {
    return AS2OneWayAgreementResponse(
      protocolSettings: AS2ProtocolSettingsResponse.fromMap((map['protocolSettings'] as Map).cast<String, dynamic>()),
      receiverBusinessIdentity: BusinessIdentityResponse.fromMap((map['receiverBusinessIdentity'] as Map).cast<String, dynamic>()),
      senderBusinessIdentity: BusinessIdentityResponse.fromMap((map['senderBusinessIdentity'] as Map).cast<String, dynamic>()),
    );
  }
}

