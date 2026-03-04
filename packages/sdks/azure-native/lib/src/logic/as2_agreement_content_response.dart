// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'as2_one_way_agreement_response.dart';

/// The integration account AS2 agreement content.
class AS2AgreementContentResponse {
  /// The AS2 one-way receive agreement.
  final pulumi.Input<AS2OneWayAgreementResponse> receiveAgreement;

  /// The AS2 one-way send agreement.
  final pulumi.Input<AS2OneWayAgreementResponse> sendAgreement;

  /// Creates a new [AS2AgreementContentResponse].
  /// [receiveAgreement] The AS2 one-way receive agreement.
  /// [sendAgreement] The AS2 one-way send agreement.
  AS2AgreementContentResponse({
    required this.receiveAgreement,
    required this.sendAgreement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'receiveAgreement':
          pulumi.Input.mapInputValue<
            AS2OneWayAgreementResponse,
            Map<String, dynamic>
          >(receiveAgreement, (value) => value.toMap()),
      'sendAgreement':
          pulumi.Input.mapInputValue<
            AS2OneWayAgreementResponse,
            Map<String, dynamic>
          >(sendAgreement, (value) => value.toMap()),
    };
  }

  factory AS2AgreementContentResponse.fromMap(Map<String, dynamic> map) {
    return AS2AgreementContentResponse(
      receiveAgreement: pulumi.Input.fromValue(
        AS2OneWayAgreementResponse.fromMap(
          (map['receiveAgreement']! as Map).cast<String, dynamic>(),
        ),
      ),
      sendAgreement: pulumi.Input.fromValue(
        AS2OneWayAgreementResponse.fromMap(
          (map['sendAgreement']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
