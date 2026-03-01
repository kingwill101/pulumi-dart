// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_fulfillment_feature_type.dart';

/// Whether fulfillment is enabled for the specific feature.
class GoogleCloudDialogflowV2beta1FulfillmentFeature {
  /// The type of the feature that enabled for fulfillment.
  final GoogleCloudDialogflowV2beta1FulfillmentFeatureType? type;

  /// Creates a new [GoogleCloudDialogflowV2beta1FulfillmentFeature].
  /// [type] The type of the feature that enabled for fulfillment.
  GoogleCloudDialogflowV2beta1FulfillmentFeature({this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': ?type == null ? null : type!.value};
  }

  factory GoogleCloudDialogflowV2beta1FulfillmentFeature.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2beta1FulfillmentFeature(
      type: map['type'] == null
          ? null
          : GoogleCloudDialogflowV2beta1FulfillmentFeatureType.fromValue(
              map['type'] as String,
            ),
    );
  }
}
