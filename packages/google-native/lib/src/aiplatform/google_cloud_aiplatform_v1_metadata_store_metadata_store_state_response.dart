// ignore_for_file: unused_element, unnecessary_cast

/// Represents state information for a MetadataStore.
class GoogleCloudAiplatformV1MetadataStoreMetadataStoreStateResponse {
  /// The disk utilization of the MetadataStore in bytes.
  final String diskUtilizationBytes;

  /// Creates a new [GoogleCloudAiplatformV1MetadataStoreMetadataStoreStateResponse].
  /// [diskUtilizationBytes] The disk utilization of the MetadataStore in bytes.
  GoogleCloudAiplatformV1MetadataStoreMetadataStoreStateResponse({
    required this.diskUtilizationBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'diskUtilizationBytes': diskUtilizationBytes};
  }

  factory GoogleCloudAiplatformV1MetadataStoreMetadataStoreStateResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1MetadataStoreMetadataStoreStateResponse(
      diskUtilizationBytes: map['diskUtilizationBytes'] as String,
    );
  }
}
