// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_fulfillment_conditional_cases_case.dart';

/// A list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
class GoogleCloudDialogflowCxV3FulfillmentConditionalCases {
  /// A list of cascading if-else conditions.
  final List<GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase>? cases;

  /// Creates a new [GoogleCloudDialogflowCxV3FulfillmentConditionalCases].
  /// [cases] A list of cascading if-else conditions.
  GoogleCloudDialogflowCxV3FulfillmentConditionalCases({this.cases});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cases': ?cases == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase,
              Map<String, dynamic>
            >(cases!, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3FulfillmentConditionalCases.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3FulfillmentConditionalCases(
      cases: map['cases'] == null
          ? null
          : pulumi.Input.decodeList<
              GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase
            >(
              map['cases'],
              (value) =>
                  GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
