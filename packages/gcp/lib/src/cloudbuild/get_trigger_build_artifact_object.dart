// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trigger_build_artifact_object_timing.dart';

class GetTriggerBuildArtifactObject {
  /// The Cloud Build location for the trigger.
  ///
  /// - - -
  final String location;

  /// Path globs used to match files in the build's workspace.
  final List<String> paths;

  /// Output only. Stores timing information for pushing all artifact objects.
  final List<GetTriggerBuildArtifactObjectTiming> timings;

  /// Creates a new [GetTriggerBuildArtifactObject].
  /// [location] The Cloud Build location for the trigger.
  /// [paths] Path globs used to match files in the build's workspace.
  /// [timings] Output only. Stores timing information for pushing all artifact objects.
  GetTriggerBuildArtifactObject({
    required this.location,
    required this.paths,
    required this.timings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['paths'] = paths;
    map['timings'] = pulumi.Input.encodeList<
        GetTriggerBuildArtifactObjectTiming,
        Map<String, dynamic>>(timings, (value) => value.toMap());
    return map;
  }

  factory GetTriggerBuildArtifactObject.fromMap(Map<String, dynamic> map) {
    return GetTriggerBuildArtifactObject(
      location: map['location'] as String,
      paths: (map['paths'] as List).cast<String>(),
      timings: pulumi.Input.decodeList<GetTriggerBuildArtifactObjectTiming>(
          map['timings'],
          (value) => GetTriggerBuildArtifactObjectTiming.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
