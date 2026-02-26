// ignore_for_file: unused_element, unnecessary_cast

import 'time_span_response.dart';

/// Files in the workspace to upload to Cloud Storage upon successful completion of all build steps.
class ArtifactObjectsResponse {
  /// Cloud Storage bucket and optional object path, in the form "gs://bucket/path/to/somewhere/". (see [Bucket Name Requirements](https://cloud.google.com/storage/docs/bucket-naming#requirements)). Files in the workspace matching any path pattern will be uploaded to Cloud Storage with this location as a prefix.
  final String location;

  /// Path globs used to match files in the build's workspace.
  final List<String> paths;

  /// Stores timing information for pushing all artifact objects.
  final TimeSpanResponse timing;

  ArtifactObjectsResponse({
    required this.location,
    required this.paths,
    required this.timing,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['paths'] = paths;
    map['timing'] = timing.toMap();
    return map;
  }

  factory ArtifactObjectsResponse.fromMap(Map<String, dynamic> map) {
    return ArtifactObjectsResponse(
      location: map['location'] as String,
      paths: (map['paths'] as List).cast<String>(),
      timing: TimeSpanResponse.fromMap(
          (map['timing'] as Map).cast<String, dynamic>()),
    );
  }
}
