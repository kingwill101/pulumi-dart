// ignore_for_file: unused_element, unnecessary_cast


class CxPageEntryFulfillmentConditionalCase {
  /// A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
  /// See [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case) for the schema.
  final String? cases;

  /// Creates a new [CxPageEntryFulfillmentConditionalCase].
  /// [cases] A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.
  CxPageEntryFulfillmentConditionalCase({
    this.cases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cases': ?cases,
    };
  }

  factory CxPageEntryFulfillmentConditionalCase.fromMap(Map<String, dynamic> map) {
    return CxPageEntryFulfillmentConditionalCase(
      cases: map['cases'] == null ? null : map['cases'] as String,
    );
  }
}

