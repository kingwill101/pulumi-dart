// ignore_for_file: unused_element, unnecessary_cast

/// Points to a DeployedIndex.
class GoogleCloudAiplatformV1DeployedIndexRefResponse {
  /// Immutable. The ID of the DeployedIndex in the above IndexEndpoint.
  final String deployedIndexId;

  /// Immutable. A resource name of the IndexEndpoint.
  final String indexEndpoint;

  /// Creates a new [GoogleCloudAiplatformV1DeployedIndexRefResponse].
  /// [deployedIndexId] Immutable. The ID of the DeployedIndex in the above IndexEndpoint.
  /// [indexEndpoint] Immutable. A resource name of the IndexEndpoint.
  GoogleCloudAiplatformV1DeployedIndexRefResponse({
    required this.deployedIndexId,
    required this.indexEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deployedIndexId'] = deployedIndexId;
    map['indexEndpoint'] = indexEndpoint;
    return map;
  }

  factory GoogleCloudAiplatformV1DeployedIndexRefResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1DeployedIndexRefResponse(
      deployedIndexId: map['deployedIndexId'] as String,
      indexEndpoint: map['indexEndpoint'] as String,
    );
  }
}
