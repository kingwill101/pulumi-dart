// ignore_for_file: unused_element, unnecessary_cast

import 'business_identity.dart';
import 'x12_protocol_settings.dart';

/// The X12 one-way agreement.
class X12OneWayAgreement {
  /// The X12 protocol settings.
  final X12ProtocolSettings protocolSettings;
  /// The receiver business identity
  final BusinessIdentity receiverBusinessIdentity;
  /// The sender business identity
  final BusinessIdentity senderBusinessIdentity;

  /// Creates a new [X12OneWayAgreement].
  /// [protocolSettings] The X12 protocol settings.
  /// [receiverBusinessIdentity] The receiver business identity
  /// [senderBusinessIdentity] The sender business identity
  X12OneWayAgreement({
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

  factory X12OneWayAgreement.fromMap(Map<String, dynamic> map) {
    return X12OneWayAgreement(
      protocolSettings: X12ProtocolSettings.fromMap((map['protocolSettings'] as Map).cast<String, dynamic>()),
      receiverBusinessIdentity: BusinessIdentity.fromMap((map['receiverBusinessIdentity'] as Map).cast<String, dynamic>()),
      senderBusinessIdentity: BusinessIdentity.fromMap((map['senderBusinessIdentity'] as Map).cast<String, dynamic>()),
    );
  }
}

