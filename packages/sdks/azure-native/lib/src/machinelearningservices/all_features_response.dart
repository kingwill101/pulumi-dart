// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AllFeaturesResponse {
  /// Expected value is 'AllFeatures'.
  final pulumi.Input<String> filterType;

  /// Creates a new [AllFeaturesResponse].
  /// [filterType] Expected value is 'AllFeatures'.
  const AllFeaturesResponse({
    required this.filterType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterType': filterType,
    };
  }

  factory AllFeaturesResponse.fromMap(Map<String, dynamic> map) {
    return AllFeaturesResponse(
      filterType: pulumi.Input.fromValue(map['filterType'] as String),
    );
  }
}

