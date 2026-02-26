// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3beta1_fulfillment_conditional_cases_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_response_message_response.dart';

/// The list of messages or conditional cases to activate for this case.
class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContentResponse {
  /// Additional cases to be evaluated.
  final GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesResponse
      additionalCases;

  /// Returned message.
  final GoogleCloudDialogflowCxV3beta1ResponseMessageResponse message;

  GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContentResponse({
    required this.additionalCases,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalCases'] = additionalCases.toMap();
    map['message'] = message.toMap();
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContentResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContentResponse(
      additionalCases:
          GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesResponse
              .fromMap((map['additionalCases'] as Map).cast<String, dynamic>()),
      message: GoogleCloudDialogflowCxV3beta1ResponseMessageResponse.fromMap(
          (map['message'] as Map).cast<String, dynamic>()),
    );
  }
}
