// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_fulfillment_conditional_cases_case_response.dart';

/// A list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesResponse {
  /// A list of cascading if-else conditions.
  final List<
          GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseResponse>
      cases;

  GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesResponse({
    required this.cases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cases'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseResponse,
        Map<String, dynamic>>(cases, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesResponse(
      cases: pulumi.Input.decodeList<
              GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseResponse>(
          map['cases'],
          (value) =>
              GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
