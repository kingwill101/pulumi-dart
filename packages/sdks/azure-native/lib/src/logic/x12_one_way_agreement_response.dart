// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'business_identity_response.dart';
import 'x12_protocol_settings_response.dart';

/// The X12 one-way agreement.
class X12OneWayAgreementResponse {
  /// The X12 protocol settings.
  final pulumi.Input<X12ProtocolSettingsResponse> protocolSettings;
  /// The receiver business identity
  final pulumi.Input<BusinessIdentityResponse> receiverBusinessIdentity;
  /// The sender business identity
  final pulumi.Input<BusinessIdentityResponse> senderBusinessIdentity;

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
      'protocolSettings': pulumi.Input.mapInputValue<X12ProtocolSettingsResponse, Map<String, dynamic>>(protocolSettings, (value) => value.toMap()),
      'receiverBusinessIdentity': pulumi.Input.mapInputValue<BusinessIdentityResponse, Map<String, dynamic>>(receiverBusinessIdentity, (value) => value.toMap()),
      'senderBusinessIdentity': pulumi.Input.mapInputValue<BusinessIdentityResponse, Map<String, dynamic>>(senderBusinessIdentity, (value) => value.toMap()),
    };
  }

  factory X12OneWayAgreementResponse.fromMap(Map<String, dynamic> map) {
    return X12OneWayAgreementResponse(
      protocolSettings: pulumi.Input.fromValue(X12ProtocolSettingsResponse.fromMap((map['protocolSettings']! as Map).cast<String, dynamic>())),
      receiverBusinessIdentity: pulumi.Input.fromValue(BusinessIdentityResponse.fromMap((map['receiverBusinessIdentity']! as Map).cast<String, dynamic>())),
      senderBusinessIdentity: pulumi.Input.fromValue(BusinessIdentityResponse.fromMap((map['senderBusinessIdentity']! as Map).cast<String, dynamic>())),
    );
  }
}

