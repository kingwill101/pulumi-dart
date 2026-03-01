// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_build_artifacts_objects_timing.dart';

class TriggerBuildArtifactsObjects {
  /// Cloud Storage bucket and optional object path, in the form "gs://bucket/path/to/somewhere/".
  /// Files in the workspace matching any path pattern will be uploaded to Cloud Storage with
  /// this location as a prefix.
  final String? location;
  /// Path globs used to match files in the build's workspace.
  final List<String>? paths;
  /// (Output)
  /// Output only. Stores timing information for pushing all artifact objects.
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_build_artifacts_objects_timing"></a>The `timing` block contains:
  final List<TriggerBuildArtifactsObjectsTiming>? timings;

  /// Creates a new [TriggerBuildArtifactsObjects].
  /// [location] Cloud Storage bucket and optional object path, in the form "gs://bucket/path/to/somewhere/".
  /// [paths] Path globs used to match files in the build's workspace.
  /// [timings] (Output)
  TriggerBuildArtifactsObjects({
    this.location,
    this.paths,
    this.timings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'paths': ?paths,
      'timings': ?timings == null ? null : pulumi.Input.encodeList<TriggerBuildArtifactsObjectsTiming, Map<String, dynamic>>(timings!, (value) => value.toMap()),
    };
  }

  factory TriggerBuildArtifactsObjects.fromMap(Map<String, dynamic> map) {
    return TriggerBuildArtifactsObjects(
      location: map['location'] == null ? null : map['location'] as String,
      paths: map['paths'] == null ? null : (map['paths'] as List).cast<String>(),
      timings: map['timings'] == null ? null : pulumi.Input.decodeList<TriggerBuildArtifactsObjectsTiming>(map['timings'], (value) => TriggerBuildArtifactsObjectsTiming.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

