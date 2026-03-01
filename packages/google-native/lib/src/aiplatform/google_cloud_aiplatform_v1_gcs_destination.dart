// ignore_for_file: unused_element, unnecessary_cast

/// The Google Cloud Storage location where the output is to be written to.
class GoogleCloudAiplatformV1GcsDestination {
  /// Google Cloud Storage URI to output directory. If the uri doesn't end with '/', a '/' will be automatically appended. The directory is created if it doesn't exist.
  final String outputUriPrefix;

  /// Creates a new [GoogleCloudAiplatformV1GcsDestination].
  /// [outputUriPrefix] Google Cloud Storage URI to output directory. If the uri doesn't end with '/', a '/' will be automatically appended. The directory is created if it doesn't exist.
  GoogleCloudAiplatformV1GcsDestination({required this.outputUriPrefix});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'outputUriPrefix': outputUriPrefix};
  }

  factory GoogleCloudAiplatformV1GcsDestination.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1GcsDestination(
      outputUriPrefix: map['outputUriPrefix'] as String,
    );
  }
}
