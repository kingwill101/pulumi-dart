// ignore_for_file: unused_element, unnecessary_cast

/// Files in the workspace to upload to Cloud Storage upon successful completion of all build steps.
class ArtifactObjects {
  /// Cloud Storage bucket and optional object path, in the form "gs://bucket/path/to/somewhere/". (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)). Files in the workspace matching any path pattern will be uploaded to Cloud Storage with this location as a prefix.
  final String? location;

  /// Path globs used to match files in the build's workspace.
  final List<String>? paths;

  ArtifactObjects({
    this.location,
    this.paths,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final pathsValue = paths;
    if (pathsValue != null) {
      map['paths'] = pathsValue;
    }
    return map;
  }

  factory ArtifactObjects.fromMap(Map<String, dynamic> map) {
    return ArtifactObjects(
      location: map['location'] == null ? null : map['location'] as String,
      paths:
          map['paths'] == null ? null : (map['paths'] as List).cast<String>(),
    );
  }
}
