// ignore_for_file: unused_element, unnecessary_cast

class FulfillmentFeature {
  /// The type of the feature that enabled for fulfillment.
  /// * SMALLTALK: Fulfillment is enabled for SmallTalk.
  /// Possible values are: `SMALLTALK`.
  final String type;

  /// Creates a new [FulfillmentFeature].
  /// [type] The type of the feature that enabled for fulfillment.
  FulfillmentFeature({required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory FulfillmentFeature.fromMap(Map<String, dynamic> map) {
    return FulfillmentFeature(type: map['type'] as String);
  }
}
