// ignore_for_file: unused_element, unnecessary_cast

import 'as2_one_way_agreement_response.dart';

/// The integration account AS2 agreement content.
class AS2AgreementContentResponse {
  /// The AS2 one-way receive agreement.
  final AS2OneWayAgreementResponse receiveAgreement;
  /// The AS2 one-way send agreement.
  final AS2OneWayAgreementResponse sendAgreement;

  /// Creates a new [AS2AgreementContentResponse].
  /// [receiveAgreement] The AS2 one-way receive agreement.
  /// [sendAgreement] The AS2 one-way send agreement.
  AS2AgreementContentResponse({
    required this.receiveAgreement,
    required this.sendAgreement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'receiveAgreement': receiveAgreement.toMap(),
      'sendAgreement': sendAgreement.toMap(),
    };
  }

  factory AS2AgreementContentResponse.fromMap(Map<String, dynamic> map) {
    return AS2AgreementContentResponse(
      receiveAgreement: AS2OneWayAgreementResponse.fromMap((map['receiveAgreement'] as Map).cast<String, dynamic>()),
      sendAgreement: AS2OneWayAgreementResponse.fromMap((map['sendAgreement'] as Map).cast<String, dynamic>()),
    );
  }
}

