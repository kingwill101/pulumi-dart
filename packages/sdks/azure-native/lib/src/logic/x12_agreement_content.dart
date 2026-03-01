// ignore_for_file: unused_element, unnecessary_cast

import 'x12_one_way_agreement.dart';

/// The X12 agreement content.
class X12AgreementContent {
  /// The X12 one-way receive agreement.
  final X12OneWayAgreement receiveAgreement;
  /// The X12 one-way send agreement.
  final X12OneWayAgreement sendAgreement;

  /// Creates a new [X12AgreementContent].
  /// [receiveAgreement] The X12 one-way receive agreement.
  /// [sendAgreement] The X12 one-way send agreement.
  X12AgreementContent({
    required this.receiveAgreement,
    required this.sendAgreement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'receiveAgreement': receiveAgreement.toMap(),
      'sendAgreement': sendAgreement.toMap(),
    };
  }

  factory X12AgreementContent.fromMap(Map<String, dynamic> map) {
    return X12AgreementContent(
      receiveAgreement: X12OneWayAgreement.fromMap((map['receiveAgreement'] as Map).cast<String, dynamic>()),
      sendAgreement: X12OneWayAgreement.fromMap((map['sendAgreement'] as Map).cast<String, dynamic>()),
    );
  }
}

