// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reference to a build result
class BuildResultUserSourceInfoResponse {
  /// Resource id of an existing succeeded build result under the same Spring instance.
  final pulumi.Input<String>? buildResultId;

  /// Type of the source uploaded
  /// Expected value is 'BuildResult'.
  final pulumi.Input<String> type;

  /// Version of the source
  final pulumi.Input<String>? version;

  /// Creates a new [BuildResultUserSourceInfoResponse].
  /// [buildResultId] Resource id of an existing succeeded build result under the same Spring instance.
  /// [type] Type of the source uploaded
  /// [version] Version of the source
  BuildResultUserSourceInfoResponse({
    this.buildResultId,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildResultId': ?buildResultId,
      'type': type,
      'version': ?version,
    };
  }

  factory BuildResultUserSourceInfoResponse.fromMap(Map<String, dynamic> map) {
    return BuildResultUserSourceInfoResponse(
      buildResultId: (() {
        final guardedValue = map['buildResultId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
