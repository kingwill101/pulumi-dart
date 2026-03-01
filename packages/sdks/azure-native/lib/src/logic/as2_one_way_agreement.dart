// ignore_for_file: unused_element, unnecessary_cast

import 'as2_protocol_settings.dart';
import 'business_identity.dart';

/// The integration account AS2 one-way agreement.
class AS2OneWayAgreement {
  /// The AS2 protocol settings.
  final AS2ProtocolSettings protocolSettings;
  /// The receiver business identity
  final BusinessIdentity receiverBusinessIdentity;
  /// The sender business identity
  final BusinessIdentity senderBusinessIdentity;

  /// Creates a new [AS2OneWayAgreement].
  /// [protocolSettings] The AS2 protocol settings.
  /// [receiverBusinessIdentity] The receiver business identity
  /// [senderBusinessIdentity] The sender business identity
  AS2OneWayAgreement({
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

  factory AS2OneWayAgreement.fromMap(Map<String, dynamic> map) {
    return AS2OneWayAgreement(
      protocolSettings: AS2ProtocolSettings.fromMap((map['protocolSettings'] as Map).cast<String, dynamic>()),
      receiverBusinessIdentity: BusinessIdentity.fromMap((map['receiverBusinessIdentity'] as Map).cast<String, dynamic>()),
      senderBusinessIdentity: BusinessIdentity.fromMap((map['senderBusinessIdentity'] as Map).cast<String, dynamic>()),
    );
  }
}

