// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'x12_one_way_agreement.dart';

/// The X12 agreement content.
class X12AgreementContent {
  /// The X12 one-way receive agreement.
  final pulumi.Input<X12OneWayAgreement> receiveAgreement;
  /// The X12 one-way send agreement.
  final pulumi.Input<X12OneWayAgreement> sendAgreement;

  /// Creates a new [X12AgreementContent].
  /// [receiveAgreement] The X12 one-way receive agreement.
  /// [sendAgreement] The X12 one-way send agreement.
  const X12AgreementContent({
    required this.receiveAgreement,
    required this.sendAgreement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'receiveAgreement': pulumi.Input.mapInputValue<X12OneWayAgreement, Map<String, dynamic>>(receiveAgreement, (value) => value.toMap()),
      'sendAgreement': pulumi.Input.mapInputValue<X12OneWayAgreement, Map<String, dynamic>>(sendAgreement, (value) => value.toMap()),
    };
  }

  factory X12AgreementContent.fromMap(Map<String, dynamic> map) {
    return X12AgreementContent(
      receiveAgreement: pulumi.Input.fromValue(X12OneWayAgreement.fromMap((map['receiveAgreement']! as Map).cast<String, dynamic>())),
      sendAgreement: pulumi.Input.fromValue(X12OneWayAgreement.fromMap((map['sendAgreement']! as Map).cast<String, dynamic>())),
    );
  }
}
