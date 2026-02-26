// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3beta1_fulfillment_conditional_cases.dart';
import 'google_cloud_dialogflow_cx_v3beta1_response_message.dart';

/// The list of messages or conditional cases to activate for this case.
class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent {
  /// Additional cases to be evaluated.
  final GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases?
      additionalCases;

  /// Returned message.
  final GoogleCloudDialogflowCxV3beta1ResponseMessage? message;

  GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent({
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

  factory GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent(
      additionalCases: map['additionalCases'] == null
          ? null
          : GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases.fromMap(
              (map['additionalCases'] as Map).cast<String, dynamic>()),
      message: map['message'] == null
          ? null
          : GoogleCloudDialogflowCxV3beta1ResponseMessage.fromMap(
              (map['message'] as Map).cast<String, dynamic>()),
    );
  }
}
