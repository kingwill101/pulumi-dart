// ignore_for_file: unused_element, unnecessary_cast

class CxFlowEventHandlerTriggerFulfillmentConditionalCase {
  /// A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
  /// See [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case) for the schema.
  final String? cases;

  /// Creates a new [CxFlowEventHandlerTriggerFulfillmentConditionalCase].
  /// [cases] A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
  CxFlowEventHandlerTriggerFulfillmentConditionalCase({this.cases});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cases': ?cases};
  }

  factory CxFlowEventHandlerTriggerFulfillmentConditionalCase.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxFlowEventHandlerTriggerFulfillmentConditionalCase(
      cases: map['cases'] == null ? null : map['cases'] as String,
    );
  }
}
