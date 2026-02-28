// ignore_for_file: unused_element, unnecessary_cast

/// The Google Cloud Storage location where the output is to be written to.
class GoogleCloudAiplatformV1GcsDestinationResponse {
  /// Google Cloud Storage URI to output directory. If the uri doesn't end with '/', a '/' will be automatically appended. The directory is created if it doesn't exist.
  final String outputUriPrefix;

  /// Creates a new [GoogleCloudAiplatformV1GcsDestinationResponse].
  /// [outputUriPrefix] Google Cloud Storage URI to output directory. If the uri doesn't end with '/', a '/' will be automatically appended. The directory is created if it doesn't exist.
  GoogleCloudAiplatformV1GcsDestinationResponse({
    required this.outputUriPrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['outputUriPrefix'] = outputUriPrefix;
    return map;
  }

  factory GoogleCloudAiplatformV1GcsDestinationResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1GcsDestinationResponse(
      outputUriPrefix: map['outputUriPrefix'] as String,
    );
  }
}
