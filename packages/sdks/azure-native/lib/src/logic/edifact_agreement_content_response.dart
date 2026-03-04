// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edifact_one_way_agreement_response.dart';

/// The Edifact agreement content.
class EdifactAgreementContentResponse {
  /// The EDIFACT one-way receive agreement.
  final pulumi.Input<EdifactOneWayAgreementResponse> receiveAgreement;

  /// The EDIFACT one-way send agreement.
  final pulumi.Input<EdifactOneWayAgreementResponse> sendAgreement;

  /// Creates a new [EdifactAgreementContentResponse].
  /// [receiveAgreement] The EDIFACT one-way receive agreement.
  /// [sendAgreement] The EDIFACT one-way send agreement.
  EdifactAgreementContentResponse({
    required this.receiveAgreement,
    required this.sendAgreement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'receiveAgreement':
          pulumi.Input.mapInputValue<
            EdifactOneWayAgreementResponse,
            Map<String, dynamic>
          >(receiveAgreement, (value) => value.toMap()),
      'sendAgreement':
          pulumi.Input.mapInputValue<
            EdifactOneWayAgreementResponse,
            Map<String, dynamic>
          >(sendAgreement, (value) => value.toMap()),
    };
  }

  factory EdifactAgreementContentResponse.fromMap(Map<String, dynamic> map) {
    return EdifactAgreementContentResponse(
      receiveAgreement: pulumi.Input.fromValue(
        EdifactOneWayAgreementResponse.fromMap(
          (map['receiveAgreement']! as Map).cast<String, dynamic>(),
        ),
      ),
      sendAgreement: pulumi.Input.fromValue(
        EdifactOneWayAgreementResponse.fromMap(
          (map['sendAgreement']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
