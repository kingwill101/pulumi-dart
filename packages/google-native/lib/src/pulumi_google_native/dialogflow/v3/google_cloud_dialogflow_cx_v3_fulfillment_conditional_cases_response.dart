// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_fulfillment_conditional_cases_case_response.dart';

/// A list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
class GoogleCloudDialogflowCxV3FulfillmentConditionalCasesResponse {
  /// A list of cascading if-else conditions.
  final List<GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseResponse>
      cases;

  GoogleCloudDialogflowCxV3FulfillmentConditionalCasesResponse({
    required this.cases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cases'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseResponse,
        Map<String, dynamic>>(cases, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDialogflowCxV3FulfillmentConditionalCasesResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3FulfillmentConditionalCasesResponse(
      cases: pulumi.Input.decodeList<
              GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseResponse>(
          map['cases'],
          (value) =>
              GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
