// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3_fulfillment_conditional_cases.dart';
import 'google_cloud_dialogflow_cx_v3_response_message.dart';

/// The list of messages or conditional cases to activate for this case.
class GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent {
  /// Additional cases to be evaluated.
  final GoogleCloudDialogflowCxV3FulfillmentConditionalCases? additionalCases;

  /// Returned message.
  final GoogleCloudDialogflowCxV3ResponseMessage? message;

  GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent({
    this.additionalCases,
    this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalCasesValue = additionalCases;
    if (additionalCasesValue != null) {
      map['additionalCases'] = additionalCasesValue.toMap();
    }
    final messageValue = message;
    if (messageValue != null) {
      map['message'] = messageValue.toMap();
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent(
      additionalCases: map['additionalCases'] == null
          ? null
          : GoogleCloudDialogflowCxV3FulfillmentConditionalCases.fromMap(
              (map['additionalCases'] as Map).cast<String, dynamic>()),
      message: map['message'] == null
          ? null
          : GoogleCloudDialogflowCxV3ResponseMessage.fromMap(
              (map['message'] as Map).cast<String, dynamic>()),
    );
  }
}
