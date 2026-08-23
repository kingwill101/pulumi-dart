// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'x12_one_way_agreement_response.dart';

/// The X12 agreement content.
class X12AgreementContentResponse {
  /// The X12 one-way receive agreement.
  final pulumi.Input<X12OneWayAgreementResponse> receiveAgreement;
  /// The X12 one-way send agreement.
  final pulumi.Input<X12OneWayAgreementResponse> sendAgreement;

  /// Creates a new [X12AgreementContentResponse].
  /// [receiveAgreement] The X12 one-way receive agreement.
  /// [sendAgreement] The X12 one-way send agreement.
  const X12AgreementContentResponse({
    required this.receiveAgreement,
    required this.sendAgreement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'receiveAgreement': pulumi.Input.mapInputValue<X12OneWayAgreementResponse, Map<String, dynamic>>(receiveAgreement, (value) => value.toMap()),
      'sendAgreement': pulumi.Input.mapInputValue<X12OneWayAgreementResponse, Map<String, dynamic>>(sendAgreement, (value) => value.toMap()),
    };
  }

  factory X12AgreementContentResponse.fromMap(Map<String, dynamic> map) {
    return X12AgreementContentResponse(
      receiveAgreement: pulumi.Input.fromValue(X12OneWayAgreementResponse.fromMap((map['receiveAgreement']! as Map).cast<String, dynamic>())),
      sendAgreement: pulumi.Input.fromValue(X12OneWayAgreementResponse.fromMap((map['sendAgreement']! as Map).cast<String, dynamic>())),
    );
  }
}
