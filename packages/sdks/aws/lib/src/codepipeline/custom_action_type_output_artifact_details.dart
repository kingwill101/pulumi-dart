// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomActionTypeOutputArtifactDetails {
  /// The maximum number of artifacts allowed for the action type. Min: 0, Max: 5
  final pulumi.Input<int> maximumCount;
  /// The minimum number of artifacts allowed for the action type. Min: 0, Max: 5
  final pulumi.Input<int> minimumCount;

  /// Creates a new [CustomActionTypeOutputArtifactDetails].
  /// [maximumCount] The maximum number of artifacts allowed for the action type. Min: 0, Max: 5
  /// [minimumCount] The minimum number of artifacts allowed for the action type. Min: 0, Max: 5
  const CustomActionTypeOutputArtifactDetails({
    required this.maximumCount,
    required this.minimumCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumCount': maximumCount,
      'minimumCount': minimumCount,
    };
  }

  factory CustomActionTypeOutputArtifactDetails.fromMap(Map<String, dynamic> map) {
    return CustomActionTypeOutputArtifactDetails(
      maximumCount: pulumi.Input.fromValue(map['maximumCount'] as int),
      minimumCount: pulumi.Input.fromValue(map['minimumCount'] as int),
    );
  }
}

