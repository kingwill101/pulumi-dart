// ignore_for_file: unused_element, unnecessary_cast

/// Whether fulfillment is enabled for the specific feature.
class GoogleCloudDialogflowV2FulfillmentFeatureResponse {
  /// The type of the feature that enabled for fulfillment.
  final String type;

  /// Creates a new [GoogleCloudDialogflowV2FulfillmentFeatureResponse].
  /// [type] The type of the feature that enabled for fulfillment.
  GoogleCloudDialogflowV2FulfillmentFeatureResponse({required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory GoogleCloudDialogflowV2FulfillmentFeatureResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2FulfillmentFeatureResponse(
      type: map['type'] as String,
    );
  }
}
