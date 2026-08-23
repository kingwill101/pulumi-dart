// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'business_identity.dart';
import 'x12_protocol_settings.dart';

/// The X12 one-way agreement.
class X12OneWayAgreement {
  /// The X12 protocol settings.
  final pulumi.Input<X12ProtocolSettings> protocolSettings;
  /// The receiver business identity
  final pulumi.Input<BusinessIdentity> receiverBusinessIdentity;
  /// The sender business identity
  final pulumi.Input<BusinessIdentity> senderBusinessIdentity;

  /// Creates a new [X12OneWayAgreement].
  /// [protocolSettings] The X12 protocol settings.
  /// [receiverBusinessIdentity] The receiver business identity
  /// [senderBusinessIdentity] The sender business identity
  const X12OneWayAgreement({
    required this.protocolSettings,
    required this.receiverBusinessIdentity,
    required this.senderBusinessIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protocolSettings': pulumi.Input.mapInputValue<X12ProtocolSettings, Map<String, dynamic>>(protocolSettings, (value) => value.toMap()),
      'receiverBusinessIdentity': pulumi.Input.mapInputValue<BusinessIdentity, Map<String, dynamic>>(receiverBusinessIdentity, (value) => value.toMap()),
      'senderBusinessIdentity': pulumi.Input.mapInputValue<BusinessIdentity, Map<String, dynamic>>(senderBusinessIdentity, (value) => value.toMap()),
    };
  }

  factory X12OneWayAgreement.fromMap(Map<String, dynamic> map) {
    return X12OneWayAgreement(
      protocolSettings: pulumi.Input.fromValue(X12ProtocolSettings.fromMap((map['protocolSettings']! as Map).cast<String, dynamic>())),
      receiverBusinessIdentity: pulumi.Input.fromValue(BusinessIdentity.fromMap((map['receiverBusinessIdentity']! as Map).cast<String, dynamic>())),
      senderBusinessIdentity: pulumi.Input.fromValue(BusinessIdentity.fromMap((map['senderBusinessIdentity']! as Map).cast<String, dynamic>())),
    );
  }
}
