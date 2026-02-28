// ignore_for_file: unused_element, unnecessary_cast

class GuestPoliciesRecipeArtifactGcs {
  /// Bucket of the Google Cloud Storage object. Given an example URL: https://storage.googleapis.com/my-bucket/foo/bar#1234567
  /// this value would be my-bucket.
  final String? bucket;

  /// Must be provided if allowInsecure is false. Generation number of the Google Cloud Storage object.
  /// https://storage.googleapis.com/my-bucket/foo/bar#1234567 this value would be 1234567.
  final int? generation;

  /// Name of the Google Cloud Storage object. Given an example URL: https://storage.googleapis.com/my-bucket/foo/bar#1234567
  /// this value would be foo/bar.
  final String? object;

  /// Creates a new [GuestPoliciesRecipeArtifactGcs].
  /// [bucket] Bucket of the Google Cloud Storage object. Given an example URL: https://storage.googleapis.com/my-bucket/foo/bar#1234567
  /// [generation] Must be provided if allowInsecure is false. Generation number of the Google Cloud Storage object.
  /// [object] Name of the Google Cloud Storage object. Given an example URL: https://storage.googleapis.com/my-bucket/foo/bar#1234567
  GuestPoliciesRecipeArtifactGcs({
    this.bucket,
    this.generation,
    this.object,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketValue = bucket;
    if (bucketValue != null) {
      map['bucket'] = bucketValue;
    }
    final generationValue = generation;
    if (generationValue != null) {
      map['generation'] = generationValue;
    }
    final objectValue = object;
    if (objectValue != null) {
      map['object'] = objectValue;
    }
    return map;
  }

  factory GuestPoliciesRecipeArtifactGcs.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesRecipeArtifactGcs(
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      generation: map['generation'] == null ? null : map['generation'] as int,
      object: map['object'] == null ? null : map['object'] as String,
    );
  }
}
