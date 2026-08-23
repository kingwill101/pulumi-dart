// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'as2_one_way_agreement.dart';

/// The integration account AS2 agreement content.
class AS2AgreementContent {
  /// The AS2 one-way receive agreement.
  final pulumi.Input<AS2OneWayAgreement> receiveAgreement;
  /// The AS2 one-way send agreement.
  final pulumi.Input<AS2OneWayAgreement> sendAgreement;

  /// Creates a new [AS2AgreementContent].
  /// [receiveAgreement] The AS2 one-way receive agreement.
  /// [sendAgreement] The AS2 one-way send agreement.
  const AS2AgreementContent({
    required this.receiveAgreement,
    required this.sendAgreement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'receiveAgreement': pulumi.Input.mapInputValue<AS2OneWayAgreement, Map<String, dynamic>>(receiveAgreement, (value) => value.toMap()),
      'sendAgreement': pulumi.Input.mapInputValue<AS2OneWayAgreement, Map<String, dynamic>>(sendAgreement, (value) => value.toMap()),
    };
  }

  factory AS2AgreementContent.fromMap(Map<String, dynamic> map) {
    return AS2AgreementContent(
      receiveAgreement: pulumi.Input.fromValue(AS2OneWayAgreement.fromMap((map['receiveAgreement']! as Map).cast<String, dynamic>())),
      sendAgreement: pulumi.Input.fromValue(AS2OneWayAgreement.fromMap((map['sendAgreement']! as Map).cast<String, dynamic>())),
    );
  }
}
