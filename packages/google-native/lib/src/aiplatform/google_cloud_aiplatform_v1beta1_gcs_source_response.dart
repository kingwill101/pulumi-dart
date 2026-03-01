// ignore_for_file: unused_element, unnecessary_cast

/// The Google Cloud Storage location for the input content.
class GoogleCloudAiplatformV1beta1GcsSourceResponse {
  /// Google Cloud Storage URI(-s) to the input file(s). May contain wildcards. For more information on wildcards, see https://cloud.google.com/storage/docs/gsutil/addlhelp/WildcardNames.
  final List<String> uris;

  /// Creates a new [GoogleCloudAiplatformV1beta1GcsSourceResponse].
  /// [uris] Google Cloud Storage URI(-s) to the input file(s). May contain wildcards. For more information on wildcards, see https://cloud.google.com/storage/docs/gsutil/addlhelp/WildcardNames.
  GoogleCloudAiplatformV1beta1GcsSourceResponse({required this.uris});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'uris': uris};
  }

  factory GoogleCloudAiplatformV1beta1GcsSourceResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1GcsSourceResponse(
      uris: (map['uris'] as List).cast<String>(),
    );
  }
}
