// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'as2_protocol_settings.dart';
import 'business_identity.dart';

/// The integration account AS2 one-way agreement.
class AS2OneWayAgreement {
  /// The AS2 protocol settings.
  final pulumi.Input<AS2ProtocolSettings> protocolSettings;

  /// The receiver business identity
  final pulumi.Input<BusinessIdentity> receiverBusinessIdentity;

  /// The sender business identity
  final pulumi.Input<BusinessIdentity> senderBusinessIdentity;

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
      'protocolSettings':
          pulumi.Input.mapInputValue<AS2ProtocolSettings, Map<String, dynamic>>(
            protocolSettings,
            (value) => value.toMap(),
          ),
      'receiverBusinessIdentity':
          pulumi.Input.mapInputValue<BusinessIdentity, Map<String, dynamic>>(
            receiverBusinessIdentity,
            (value) => value.toMap(),
          ),
      'senderBusinessIdentity':
          pulumi.Input.mapInputValue<BusinessIdentity, Map<String, dynamic>>(
            senderBusinessIdentity,
            (value) => value.toMap(),
          ),
    };
  }

  factory AS2OneWayAgreement.fromMap(Map<String, dynamic> map) {
    return AS2OneWayAgreement(
      protocolSettings: pulumi.Input.fromValue(
        AS2ProtocolSettings.fromMap(
          (map['protocolSettings']! as Map).cast<String, dynamic>(),
        ),
      ),
      receiverBusinessIdentity: pulumi.Input.fromValue(
        BusinessIdentity.fromMap(
          (map['receiverBusinessIdentity']! as Map).cast<String, dynamic>(),
        ),
      ),
      senderBusinessIdentity: pulumi.Input.fromValue(
        BusinessIdentity.fromMap(
          (map['senderBusinessIdentity']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
