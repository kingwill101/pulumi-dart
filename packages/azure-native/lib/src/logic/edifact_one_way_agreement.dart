// ignore_for_file: unused_element, unnecessary_cast

import 'business_identity.dart';
import 'edifact_protocol_settings.dart';

/// The Edifact one way agreement.
class EdifactOneWayAgreement {
  /// The EDIFACT protocol settings.
  final EdifactProtocolSettings protocolSettings;
  /// The receiver business identity
  final BusinessIdentity receiverBusinessIdentity;
  /// The sender business identity
  final BusinessIdentity senderBusinessIdentity;

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
      'protocolSettings': protocolSettings.toMap(),
      'receiverBusinessIdentity': receiverBusinessIdentity.toMap(),
      'senderBusinessIdentity': senderBusinessIdentity.toMap(),
    };
  }

  factory EdifactOneWayAgreement.fromMap(Map<String, dynamic> map) {
    return EdifactOneWayAgreement(
      protocolSettings: EdifactProtocolSettings.fromMap((map['protocolSettings'] as Map).cast<String, dynamic>()),
      receiverBusinessIdentity: BusinessIdentity.fromMap((map['receiverBusinessIdentity'] as Map).cast<String, dynamic>()),
      senderBusinessIdentity: BusinessIdentity.fromMap((map['senderBusinessIdentity'] as Map).cast<String, dynamic>()),
    );
  }
}

