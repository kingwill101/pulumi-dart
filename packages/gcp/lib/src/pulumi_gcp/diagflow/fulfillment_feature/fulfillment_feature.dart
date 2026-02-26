// ignore_for_file: unused_element, unnecessary_cast

class FulfillmentFeature {
  /// The type of the feature that enabled for fulfillment.
  /// * SMALLTALK: Fulfillment is enabled for SmallTalk.
  /// Possible values are: `SMALLTALK`.
  final String type;

  FulfillmentFeature({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory FulfillmentFeature.fromMap(Map<String, dynamic> map) {
    return FulfillmentFeature(
      type: map['type'] as String,
    );
  }
}
