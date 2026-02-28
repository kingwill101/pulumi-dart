// ignore_for_file: unused_element, unnecessary_cast

/// Specifies an artifact available as a Google Cloud Storage object.
class SoftwareRecipeArtifactGcsResponse {
  /// Bucket of the Google Cloud Storage object. Given an example URL: `https://storage.googleapis.com/my-bucket/foo/bar#1234567` this value would be `my-bucket`.
  final String bucket;

  /// Must be provided if allow_insecure is false. Generation number of the Google Cloud Storage object. `https://storage.googleapis.com/my-bucket/foo/bar#1234567` this value would be `1234567`.
  final String generation;

  /// Name of the Google Cloud Storage object. As specified [here] (https://cloud.google.com/storage/docs/naming#objectnames) Given an example URL: `https://storage.googleapis.com/my-bucket/foo/bar#1234567` this value would be `foo/bar`.
  final String object;

  /// Creates a new [SoftwareRecipeArtifactGcsResponse].
  /// [bucket] Bucket of the Google Cloud Storage object. Given an example URL: `https://storage.googleapis.com/my-bucket/foo/bar#1234567` this value would be `my-bucket`.
  /// [generation] Must be provided if allow_insecure is false. Generation number of the Google Cloud Storage object. `https://storage.googleapis.com/my-bucket/foo/bar#1234567` this value would be `1234567`.
  /// [object] Name of the Google Cloud Storage object. As specified [here] (https://cloud.google.com/storage/docs/naming#objectnames) Given an example URL: `https://storage.googleapis.com/my-bucket/foo/bar#1234567` this value would be `foo/bar`.
  SoftwareRecipeArtifactGcsResponse({
    required this.bucket,
    required this.generation,
    required this.object,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['generation'] = generation;
    map['object'] = object;
    return map;
  }

  factory SoftwareRecipeArtifactGcsResponse.fromMap(Map<String, dynamic> map) {
    return SoftwareRecipeArtifactGcsResponse(
      bucket: map['bucket'] as String,
      generation: map['generation'] as String,
      object: map['object'] as String,
    );
  }
}
