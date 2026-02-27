// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_cx_v3beta1_fulfillment_conditional_cases_case.dart';

/// A list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases {
  /// A list of cascading if-else conditions.
  final List<GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase>?
      cases;

  GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases({
    this.cases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final casesValue = cases;
    if (casesValue != null) {
      map['cases'] = Input.encodeList<
          GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase,
          Map<String, dynamic>>(casesValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases(
      cases: map['cases'] == null
          ? null
          : Input.decodeList<
                  GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase>(
              map['cases'],
              (value) =>
                  GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
