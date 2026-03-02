// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'business_identity.dart';
import 'edifact_protocol_settings.dart';

/// The Edifact one way agreement.
class EdifactOneWayAgreement {
  /// The EDIFACT protocol settings.
  final pulumi.Input<EdifactProtocolSettings> protocolSettings;
  /// The receiver business identity
  final pulumi.Input<BusinessIdentity> receiverBusinessIdentity;
  /// The sender business identity
  final pulumi.Input<BusinessIdentity> senderBusinessIdentity;

  /// Creates a new [EdifactOneWayAgreement].
  /// [protocolSettings] The EDIFACT protocol settings.
  /// [receiverBusinessIdentity] The receiver business identity
  /// [senderBusinessIdentity] The sender business identity
  EdifactOneWayAgreement({
    required this.protocolSettings,
    required this.receiverBusinessIdentity,
    required this.senderBusinessIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protocolSettings': pulumi.Input.mapInputValue<EdifactProtocolSettings, Map<String, dynamic>>(protocolSettings, (value) => value.toMap()),
      'receiverBusinessIdentity': pulumi.Input.mapInputValue<BusinessIdentity, Map<String, dynamic>>(receiverBusinessIdentity, (value) => value.toMap()),
      'senderBusinessIdentity': pulumi.Input.mapInputValue<BusinessIdentity, Map<String, dynamic>>(senderBusinessIdentity, (value) => value.toMap()),
    };
  }

  factory EdifactOneWayAgreement.fromMap(Map<String, dynamic> map) {
    return EdifactOneWayAgreement(
      protocolSettings: (EdifactProtocolSettings.fromMap((map['protocolSettings'] as Map).cast<String, dynamic>())).input(),
      receiverBusinessIdentity: (BusinessIdentity.fromMap((map['receiverBusinessIdentity'] as Map).cast<String, dynamic>())).input(),
      senderBusinessIdentity: (BusinessIdentity.fromMap((map['senderBusinessIdentity'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

