// ignore_for_file: unused_element, unnecessary_cast


/// Points to a DeployedIndex.
class GoogleCloudAiplatformV1beta1DeployedIndexRefResponse {
  /// Immutable. The ID of the DeployedIndex in the above IndexEndpoint.
  final String deployedIndexId;
  /// Immutable. A resource name of the IndexEndpoint.
  final String indexEndpoint;

  /// Creates a new [GoogleCloudAiplatformV1beta1DeployedIndexRefResponse].
  /// [deployedIndexId] Immutable. The ID of the DeployedIndex in the above IndexEndpoint.
  /// [indexEndpoint] Immutable. A resource name of the IndexEndpoint.
  GoogleCloudAiplatformV1beta1DeployedIndexRefResponse({
    required this.deployedIndexId,
    required this.indexEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployedIndexId': deployedIndexId,
      'indexEndpoint': indexEndpoint,
    };
  }

  factory GoogleCloudAiplatformV1beta1DeployedIndexRefResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1DeployedIndexRefResponse(
      deployedIndexId: map['deployedIndexId'] as String,
      indexEndpoint: map['indexEndpoint'] as String,
    );
  }
}

