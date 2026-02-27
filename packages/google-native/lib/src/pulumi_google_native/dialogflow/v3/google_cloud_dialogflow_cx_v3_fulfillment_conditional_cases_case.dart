// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_fulfillment_conditional_cases_case_case_content.dart';

/// Each case has a Boolean condition. When it is evaluated to be True, the corresponding messages will be selected and evaluated recursively.
class GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase {
  /// A list of case content.
  final List<
          GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent>?
      caseContent;

  /// The condition to activate and select this case. Empty means the condition is always true. The condition is evaluated against form parameters or session parameters. See the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/reference/condition).
  final String? condition;

  GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase({
    this.caseContent,
    this.condition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final caseContentValue = caseContent;
    if (caseContentValue != null) {
      map['caseContent'] = pulumi.Input.encodeList<
          GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent,
          Map<String, dynamic>>(caseContentValue, (value) => value.toMap());
    }
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = conditionValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase(
      caseContent: map['caseContent'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent>(
              map['caseContent'],
              (value) =>
                  GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent
                      .fromMap((value as Map).cast<String, dynamic>())),
      condition: map['condition'] == null ? null : map['condition'] as String,
    );
  }
}
