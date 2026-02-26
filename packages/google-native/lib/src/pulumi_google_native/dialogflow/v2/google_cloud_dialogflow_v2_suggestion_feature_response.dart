// ignore_for_file: unused_element, unnecessary_cast

/// The type of Human Agent Assistant API suggestion to perform, and the maximum number of results to return for that type. Multiple `Feature` objects can be specified in the `features` list.
class GoogleCloudDialogflowV2SuggestionFeatureResponse {
  /// Type of Human Agent Assistant API feature to request.
  final String type;

  GoogleCloudDialogflowV2SuggestionFeatureResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory GoogleCloudDialogflowV2SuggestionFeatureResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2SuggestionFeatureResponse(
      type: map['type'] as String,
    );
  }
}
