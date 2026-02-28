// ignore_for_file: unused_element, unnecessary_cast


class CxPageTransitionRouteTriggerFulfillmentConditionalCase {
  /// A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
  /// See [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case) for the schema.
  final String? cases;

  /// Creates a new [CxPageTransitionRouteTriggerFulfillmentConditionalCase].
  /// [cases] A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
  CxPageTransitionRouteTriggerFulfillmentConditionalCase({
    this.cases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cases': ?cases,
    };
  }

  factory CxPageTransitionRouteTriggerFulfillmentConditionalCase.fromMap(Map<String, dynamic> map) {
    return CxPageTransitionRouteTriggerFulfillmentConditionalCase(
      cases: map['cases'] == null ? null : map['cases'] as String,
    );
  }
}

