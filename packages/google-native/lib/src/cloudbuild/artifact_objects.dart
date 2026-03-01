// ignore_for_file: unused_element, unnecessary_cast

/// Files in the workspace to upload to Cloud Storage upon successful completion of all build steps.
class ArtifactObjects {
  /// Cloud Storage bucket and optional object path, in the form "gs://bucket/path/to/somewhere/". (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)). Files in the workspace matching any path pattern will be uploaded to Cloud Storage with this location as a prefix.
  final String? location;

  /// Path globs used to match files in the build's workspace.
  final List<String>? paths;

  /// Creates a new [ArtifactObjects].
  /// [location] Cloud Storage bucket and optional object path, in the form "gs://bucket/path/to/somewhere/". (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)). Files in the workspace matching any path pattern will be uploaded to Cloud Storage with this location as a prefix.
  /// [paths] Path globs used to match files in the build's workspace.
  ArtifactObjects({this.location, this.paths});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'location': ?location, 'paths': ?paths};
  }

  factory ArtifactObjects.fromMap(Map<String, dynamic> map) {
    return ArtifactObjects(
      location: map['location'] == null ? null : map['location'] as String,
      paths: map['paths'] == null
          ? null
          : (map['paths'] as List).cast<String>(),
    );
  }
}
