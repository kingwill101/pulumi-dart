// ignore_for_file: unused_element, unnecessary_cast

import 'business_identity_response.dart';
import 'x12_protocol_settings_response.dart';

/// The X12 one-way agreement.
class X12OneWayAgreementResponse {
  /// The X12 protocol settings.
  final X12ProtocolSettingsResponse protocolSettings;
  /// The receiver business identity
  final BusinessIdentityResponse receiverBusinessIdentity;
  /// The sender business identity
  final BusinessIdentityResponse senderBusinessIdentity;

  /// Creates a new [X12OneWayAgreementResponse].
  /// [protocolSettings] The X12 protocol settings.
  /// [receiverBusinessIdentity] The receiver business identity
  /// [senderBusinessIdentity] The sender business identity
  X12OneWayAgreementResponse({
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

  factory X12OneWayAgreementResponse.fromMap(Map<String, dynamic> map) {
    return X12OneWayAgreementResponse(
      protocolSettings: X12ProtocolSettingsResponse.fromMap((map['protocolSettings'] as Map).cast<String, dynamic>()),
      receiverBusinessIdentity: BusinessIdentityResponse.fromMap((map['receiverBusinessIdentity'] as Map).cast<String, dynamic>()),
      senderBusinessIdentity: BusinessIdentityResponse.fromMap((map['senderBusinessIdentity'] as Map).cast<String, dynamic>()),
    );
  }
}

