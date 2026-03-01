// ignore_for_file: unused_element, unnecessary_cast

import 'business_identity_response.dart';
import 'edifact_protocol_settings_response.dart';

/// The Edifact one way agreement.
class EdifactOneWayAgreementResponse {
  /// The EDIFACT protocol settings.
  final EdifactProtocolSettingsResponse protocolSettings;
  /// The receiver business identity
  final BusinessIdentityResponse receiverBusinessIdentity;
  /// The sender business identity
  final BusinessIdentityResponse senderBusinessIdentity;

  /// Creates a new [EdifactOneWayAgreementResponse].
  /// [protocolSettings] The EDIFACT protocol settings.
  /// [receiverBusinessIdentity] The receiver business identity
  /// [senderBusinessIdentity] The sender business identity
  EdifactOneWayAgreementResponse({
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

  factory EdifactOneWayAgreementResponse.fromMap(Map<String, dynamic> map) {
    return EdifactOneWayAgreementResponse(
      protocolSettings: EdifactProtocolSettingsResponse.fromMap((map['protocolSettings'] as Map).cast<String, dynamic>()),
      receiverBusinessIdentity: BusinessIdentityResponse.fromMap((map['receiverBusinessIdentity'] as Map).cast<String, dynamic>()),
      senderBusinessIdentity: BusinessIdentityResponse.fromMap((map['senderBusinessIdentity'] as Map).cast<String, dynamic>()),
    );
  }
}

