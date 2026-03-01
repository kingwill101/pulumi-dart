// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2beta1_suggestion_feature_type.dart';

/// The type of Human Agent Assistant API suggestion to perform, and the maximum number of results to return for that type. Multiple `Feature` objects can be specified in the `features` list.
class GoogleCloudDialogflowV2beta1SuggestionFeature {
  /// Type of Human Agent Assistant API feature to request.
  final GoogleCloudDialogflowV2beta1SuggestionFeatureType? type;

  /// Creates a new [GoogleCloudDialogflowV2beta1SuggestionFeature].
  /// [type] Type of Human Agent Assistant API feature to request.
  GoogleCloudDialogflowV2beta1SuggestionFeature({this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': ?type == null ? null : type!.value};
  }

  factory GoogleCloudDialogflowV2beta1SuggestionFeature.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowV2beta1SuggestionFeature(
      type: map['type'] == null
          ? null
          : GoogleCloudDialogflowV2beta1SuggestionFeatureType.fromValue(
              map['type'] as String,
            ),
    );
  }
}
