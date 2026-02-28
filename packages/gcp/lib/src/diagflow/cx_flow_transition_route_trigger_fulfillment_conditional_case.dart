// ignore_for_file: unused_element, unnecessary_cast

class CxFlowTransitionRouteTriggerFulfillmentConditionalCase {
  /// A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
  /// See [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case) for the schema.
  final String? cases;

  /// Creates a new [CxFlowTransitionRouteTriggerFulfillmentConditionalCase].
  /// [cases] A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
  CxFlowTransitionRouteTriggerFulfillmentConditionalCase({
    this.cases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final casesValue = cases;
    if (casesValue != null) {
      map['cases'] = casesValue;
    }
    return map;
  }

  factory CxFlowTransitionRouteTriggerFulfillmentConditionalCase.fromMap(
      Map<String, dynamic> map) {
    return CxFlowTransitionRouteTriggerFulfillmentConditionalCase(
      cases: map['cases'] == null ? null : map['cases'] as String,
    );
  }
}
