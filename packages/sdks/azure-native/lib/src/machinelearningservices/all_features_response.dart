// ignore_for_file: unused_element, unnecessary_cast


class AllFeaturesResponse {
  /// Expected value is 'AllFeatures'.
  final String filterType;

  /// Creates a new [AllFeaturesResponse].
  /// [filterType] Expected value is 'AllFeatures'.
  AllFeaturesResponse({
    required this.filterType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterType': filterType,
    };
  }

  factory AllFeaturesResponse.fromMap(Map<String, dynamic> map) {
    return AllFeaturesResponse(
      filterType: map['filterType'] as String,
    );
  }
}

