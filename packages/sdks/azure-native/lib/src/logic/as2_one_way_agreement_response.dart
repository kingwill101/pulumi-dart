// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'as2_protocol_settings_response.dart';
import 'business_identity_response.dart';

/// The integration account AS2 one-way agreement.
class AS2OneWayAgreementResponse {
  /// The AS2 protocol settings.
  final pulumi.Input<AS2ProtocolSettingsResponse> protocolSettings;
  /// The receiver business identity
  final pulumi.Input<BusinessIdentityResponse> receiverBusinessIdentity;
  /// The sender business identity
  final pulumi.Input<BusinessIdentityResponse> senderBusinessIdentity;

  /// Creates a new [AS2OneWayAgreementResponse].
  /// [protocolSettings] The AS2 protocol settings.
  /// [receiverBusinessIdentity] The receiver business identity
  /// [senderBusinessIdentity] The sender business identity
  const AS2OneWayAgreementResponse({
    required this.protocolSettings,
    required this.receiverBusinessIdentity,
    required this.senderBusinessIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protocolSettings': pulumi.Input.mapInputValue<AS2ProtocolSettingsResponse, Map<String, dynamic>>(protocolSettings, (value) => value.toMap()),
      'receiverBusinessIdentity': pulumi.Input.mapInputValue<BusinessIdentityResponse, Map<String, dynamic>>(receiverBusinessIdentity, (value) => value.toMap()),
      'senderBusinessIdentity': pulumi.Input.mapInputValue<BusinessIdentityResponse, Map<String, dynamic>>(senderBusinessIdentity, (value) => value.toMap()),
    };
  }

  factory AS2OneWayAgreementResponse.fromMap(Map<String, dynamic> map) {
    return AS2OneWayAgreementResponse(
      protocolSettings: pulumi.Input.fromValue(AS2ProtocolSettingsResponse.fromMap((map['protocolSettings']! as Map).cast<String, dynamic>())),
      receiverBusinessIdentity: pulumi.Input.fromValue(BusinessIdentityResponse.fromMap((map['receiverBusinessIdentity']! as Map).cast<String, dynamic>())),
      senderBusinessIdentity: pulumi.Input.fromValue(BusinessIdentityResponse.fromMap((map['senderBusinessIdentity']! as Map).cast<String, dynamic>())),
    );
  }
}
