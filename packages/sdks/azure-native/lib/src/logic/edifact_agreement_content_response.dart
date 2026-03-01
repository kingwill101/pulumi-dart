// ignore_for_file: unused_element, unnecessary_cast

import 'edifact_one_way_agreement_response.dart';

/// The Edifact agreement content.
class EdifactAgreementContentResponse {
  /// The EDIFACT one-way receive agreement.
  final EdifactOneWayAgreementResponse receiveAgreement;
  /// The EDIFACT one-way send agreement.
  final EdifactOneWayAgreementResponse sendAgreement;

  /// Creates a new [EdifactAgreementContentResponse].
  /// [receiveAgreement] The EDIFACT one-way receive agreement.
  /// [sendAgreement] The EDIFACT one-way send agreement.
  EdifactAgreementContentResponse({
    required this.receiveAgreement,
    required this.sendAgreement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'receiveAgreement': receiveAgreement.toMap(),
      'sendAgreement': sendAgreement.toMap(),
    };
  }

  factory EdifactAgreementContentResponse.fromMap(Map<String, dynamic> map) {
    return EdifactAgreementContentResponse(
      receiveAgreement: EdifactOneWayAgreementResponse.fromMap((map['receiveAgreement'] as Map).cast<String, dynamic>()),
      sendAgreement: EdifactOneWayAgreementResponse.fromMap((map['sendAgreement'] as Map).cast<String, dynamic>()),
    );
  }
}

