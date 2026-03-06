// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edifact_one_way_agreement.dart';

/// The Edifact agreement content.
class EdifactAgreementContent {
  /// The EDIFACT one-way receive agreement.
  final pulumi.Input<EdifactOneWayAgreement> receiveAgreement;
  /// The EDIFACT one-way send agreement.
  final pulumi.Input<EdifactOneWayAgreement> sendAgreement;

  /// Creates a new [EdifactAgreementContent].
  /// [receiveAgreement] The EDIFACT one-way receive agreement.
  /// [sendAgreement] The EDIFACT one-way send agreement.
  const EdifactAgreementContent({
    required this.receiveAgreement,
    required this.sendAgreement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'receiveAgreement': pulumi.Input.mapInputValue<EdifactOneWayAgreement, Map<String, dynamic>>(receiveAgreement, (value) => value.toMap()),
      'sendAgreement': pulumi.Input.mapInputValue<EdifactOneWayAgreement, Map<String, dynamic>>(sendAgreement, (value) => value.toMap()),
    };
  }

  factory EdifactAgreementContent.fromMap(Map<String, dynamic> map) {
    return EdifactAgreementContent(
      receiveAgreement: pulumi.Input.fromValue(EdifactOneWayAgreement.fromMap((map['receiveAgreement']! as Map).cast<String, dynamic>())),
      sendAgreement: pulumi.Input.fromValue(EdifactOneWayAgreement.fromMap((map['sendAgreement']! as Map).cast<String, dynamic>())),
    );
  }
}

