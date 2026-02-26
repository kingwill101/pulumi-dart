// ignore_for_file: unused_element, unnecessary_cast

/// Represents an ordered combination of valid serving configs, which can be used for `PAGE_OPTIMIZATION` recommendations.
class GoogleCloudRetailV2betaModelServingConfigListResponse {
  /// Optional. A set of valid serving configs that may be used for `PAGE_OPTIMIZATION`.
  final List<String> servingConfigIds;

  GoogleCloudRetailV2betaModelServingConfigListResponse({
    required this.servingConfigIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['servingConfigIds'] = servingConfigIds;
    return map;
  }

  factory GoogleCloudRetailV2betaModelServingConfigListResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaModelServingConfigListResponse(
      servingConfigIds: (map['servingConfigIds'] as List).cast<String>(),
    );
  }
}
