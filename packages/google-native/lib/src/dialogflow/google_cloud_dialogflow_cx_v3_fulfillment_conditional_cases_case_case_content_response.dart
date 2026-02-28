// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3_fulfillment_conditional_cases_response.dart';
import 'google_cloud_dialogflow_cx_v3_response_message_response.dart';

/// The list of messages or conditional cases to activate for this case.
class GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContentResponse {
  /// Additional cases to be evaluated.
  final GoogleCloudDialogflowCxV3FulfillmentConditionalCasesResponse additionalCases;
  /// Returned message.
  final GoogleCloudDialogflowCxV3ResponseMessageResponse message;

  /// Creates a new [GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContentResponse].
  /// [additionalCases] Additional cases to be evaluated.
  /// [message] Returned message.
  GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContentResponse({
    required this.additionalCases,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCases': additionalCases.toMap(),
      'message': message.toMap(),
    };
  }

  factory GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContentResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContentResponse(
      additionalCases: GoogleCloudDialogflowCxV3FulfillmentConditionalCasesResponse.fromMap((map['additionalCases'] as Map).cast<String, dynamic>()),
      message: GoogleCloudDialogflowCxV3ResponseMessageResponse.fromMap((map['message'] as Map).cast<String, dynamic>()),
    );
  }
}

