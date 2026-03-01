// ignore_for_file: unused_element, unnecessary_cast


/// Reference to a build result
class BuildResultUserSourceInfoResponse {
  /// Resource id of an existing succeeded build result under the same Spring instance.
  final String? buildResultId;
  /// Type of the source uploaded
  /// Expected value is 'BuildResult'.
  final String type;
  /// Version of the source
  final String? version;

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
      buildResultId: map['buildResultId'] == null ? null : map['buildResultId'] as String,
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

