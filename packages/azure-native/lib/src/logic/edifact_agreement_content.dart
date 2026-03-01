// ignore_for_file: unused_element, unnecessary_cast

import 'edifact_one_way_agreement.dart';

/// The Edifact agreement content.
class EdifactAgreementContent {
  /// The EDIFACT one-way receive agreement.
  final EdifactOneWayAgreement receiveAgreement;
  /// The EDIFACT one-way send agreement.
  final EdifactOneWayAgreement sendAgreement;

  /// Creates a new [EdifactAgreementContent].
  /// [receiveAgreement] The EDIFACT one-way receive agreement.
  /// [sendAgreement] The EDIFACT one-way send agreement.
  EdifactAgreementContent({
    required this.receiveAgreement,
    required this.sendAgreement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'receiveAgreement': receiveAgreement.toMap(),
      'sendAgreement': sendAgreement.toMap(),
    };
  }

  factory EdifactAgreementContent.fromMap(Map<String, dynamic> map) {
    return EdifactAgreementContent(
      receiveAgreement: EdifactOneWayAgreement.fromMap((map['receiveAgreement'] as Map).cast<String, dynamic>()),
      sendAgreement: EdifactOneWayAgreement.fromMap((map['sendAgreement'] as Map).cast<String, dynamic>()),
    );
  }
}

