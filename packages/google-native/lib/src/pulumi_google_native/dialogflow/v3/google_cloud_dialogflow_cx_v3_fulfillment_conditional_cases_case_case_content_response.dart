// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3_fulfillment_conditional_cases_response.dart';
import 'google_cloud_dialogflow_cx_v3_response_message_response.dart';

/// The list of messages or conditional cases to activate for this case.
class GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContentResponse {
  /// Additional cases to be evaluated.
  final GoogleCloudDialogflowCxV3FulfillmentConditionalCasesResponse
      additionalCases;

  /// Returned message.
  final GoogleCloudDialogflowCxV3ResponseMessageResponse message;

  GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContentResponse({
    required this.additionalCases,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalCases'] = additionalCases.toMap();
    map['message'] = message.toMap();
    return map;
  }

  factory GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContentResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContentResponse(
      additionalCases:
          GoogleCloudDialogflowCxV3FulfillmentConditionalCasesResponse.fromMap(
              (map['additionalCases'] as Map).cast<String, dynamic>()),
      message: GoogleCloudDialogflowCxV3ResponseMessageResponse.fromMap(
          (map['message'] as Map).cast<String, dynamic>()),
    );
  }
}
