// ignore_for_file: unused_element, unnecessary_cast

/// Scaling settings applied at the service level rather than at the revision level.
class GoogleCloudRunV2ServiceScalingResponse {
  /// total min instances for the service. This number of instances is divided among all revisions with specified traffic based on the percent of traffic they are receiving. (ALPHA)
  final int minInstanceCount;

  /// Creates a new [GoogleCloudRunV2ServiceScalingResponse].
  /// [minInstanceCount] total min instances for the service. This number of instances is divided among all revisions with specified traffic based on the percent of traffic they are receiving. (ALPHA)
  GoogleCloudRunV2ServiceScalingResponse({required this.minInstanceCount});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'minInstanceCount': minInstanceCount};
  }

  factory GoogleCloudRunV2ServiceScalingResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRunV2ServiceScalingResponse(
      minInstanceCount: map['minInstanceCount'] as int,
    );
  }
}
