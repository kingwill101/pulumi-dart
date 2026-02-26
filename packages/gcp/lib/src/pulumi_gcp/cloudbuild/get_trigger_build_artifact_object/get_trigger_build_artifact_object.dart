// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_trigger_build_artifact_object_timing/get_trigger_build_artifact_object_timing.dart';

class GetTriggerBuildArtifactObject {
  /// The Cloud Build location for the trigger.
  ///
  /// - - -
  final String location;

  /// Path globs used to match files in the build's workspace.
  final List<String> paths;

  /// Output only. Stores timing information for pushing all artifact objects.
  final List<GetTriggerBuildArtifactObjectTiming> timings;

  GetTriggerBuildArtifactObject({
    required this.location,
    required this.paths,
    required this.timings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['paths'] = paths;
    map['timings'] = Input.encodeList<GetTriggerBuildArtifactObjectTiming,
        Map<String, dynamic>>(timings, (value) => value.toMap());
    return map;
  }

  factory GetTriggerBuildArtifactObject.fromMap(Map<String, dynamic> map) {
    return GetTriggerBuildArtifactObject(
      location: map['location'] as String,
      paths: (map['paths'] as List).cast<String>(),
      timings: Input.decodeList<GetTriggerBuildArtifactObjectTiming>(
          map['timings'],
          (value) => GetTriggerBuildArtifactObjectTiming.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
