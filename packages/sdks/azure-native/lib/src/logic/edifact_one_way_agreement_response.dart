// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'business_identity_response.dart';
import 'edifact_protocol_settings_response.dart';

/// The Edifact one way agreement.
class EdifactOneWayAgreementResponse {
  /// The EDIFACT protocol settings.
  final pulumi.Input<EdifactProtocolSettingsResponse> protocolSettings;
  /// The receiver business identity
  final pulumi.Input<BusinessIdentityResponse> receiverBusinessIdentity;
  /// The sender business identity
  final pulumi.Input<BusinessIdentityResponse> senderBusinessIdentity;

  /// Creates a new [EdifactOneWayAgreementResponse].
  /// [protocolSettings] The EDIFACT protocol settings.
  /// [receiverBusinessIdentity] The receiver business identity
  /// [senderBusinessIdentity] The sender business identity
  const EdifactOneWayAgreementResponse({
    required this.protocolSettings,
    required this.receiverBusinessIdentity,
    required this.senderBusinessIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protocolSettings': pulumi.Input.mapInputValue<EdifactProtocolSettingsResponse, Map<String, dynamic>>(protocolSettings, (value) => value.toMap()),
      'receiverBusinessIdentity': pulumi.Input.mapInputValue<BusinessIdentityResponse, Map<String, dynamic>>(receiverBusinessIdentity, (value) => value.toMap()),
      'senderBusinessIdentity': pulumi.Input.mapInputValue<BusinessIdentityResponse, Map<String, dynamic>>(senderBusinessIdentity, (value) => value.toMap()),
    };
  }

  factory EdifactOneWayAgreementResponse.fromMap(Map<String, dynamic> map) {
    return EdifactOneWayAgreementResponse(
      protocolSettings: pulumi.Input.fromValue(EdifactProtocolSettingsResponse.fromMap((map['protocolSettings']! as Map).cast<String, dynamic>())),
      receiverBusinessIdentity: pulumi.Input.fromValue(BusinessIdentityResponse.fromMap((map['receiverBusinessIdentity']! as Map).cast<String, dynamic>())),
      senderBusinessIdentity: pulumi.Input.fromValue(BusinessIdentityResponse.fromMap((map['senderBusinessIdentity']! as Map).cast<String, dynamic>())),
    );
  }
}

