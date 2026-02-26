// ignore_for_file: unused_element, unnecessary_cast

/// Whether fulfillment is enabled for the specific feature.
class GoogleCloudDialogflowV2beta1FulfillmentFeatureResponse {
  /// The type of the feature that enabled for fulfillment.
  final String type;

  GoogleCloudDialogflowV2beta1FulfillmentFeatureResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory GoogleCloudDialogflowV2beta1FulfillmentFeatureResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2beta1FulfillmentFeatureResponse(
      type: map['type'] as String,
    );
  }
}
