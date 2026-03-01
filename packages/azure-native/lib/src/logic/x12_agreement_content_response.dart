// ignore_for_file: unused_element, unnecessary_cast

import 'x12_one_way_agreement_response.dart';

/// The X12 agreement content.
class X12AgreementContentResponse {
  /// The X12 one-way receive agreement.
  final X12OneWayAgreementResponse receiveAgreement;
  /// The X12 one-way send agreement.
  final X12OneWayAgreementResponse sendAgreement;

  /// Creates a new [X12AgreementContentResponse].
  /// [receiveAgreement] The X12 one-way receive agreement.
  /// [sendAgreement] The X12 one-way send agreement.
  X12AgreementContentResponse({
    required this.receiveAgreement,
    required this.sendAgreement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'receiveAgreement': receiveAgreement.toMap(),
      'sendAgreement': sendAgreement.toMap(),
    };
  }

  factory X12AgreementContentResponse.fromMap(Map<String, dynamic> map) {
    return X12AgreementContentResponse(
      receiveAgreement: X12OneWayAgreementResponse.fromMap((map['receiveAgreement'] as Map).cast<String, dynamic>()),
      sendAgreement: X12OneWayAgreementResponse.fromMap((map['sendAgreement'] as Map).cast<String, dynamic>()),
    );
  }
}

