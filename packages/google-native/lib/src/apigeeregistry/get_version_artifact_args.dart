// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigeeregistry_v1_get_version_artifact_args_doc}
/// Arguments for getVersionArtifact.
/// {@endtemplate}
/// {@macro pulumi_apigeeregistry_v1_get_version_artifact_args_doc}
class GetVersionArtifactArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> artifactId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetVersionArtifactArgs].
  /// [apiId] Required.
  /// [artifactId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [versionId] Required.
  GetVersionArtifactArgs({
    required String apiId,
    required String artifactId,
    required String location,
    String? project,
    required String versionId,
  })  : apiId = pulumi.Input.asInput<String>(apiId),
        artifactId = pulumi.Input.asInput<String>(artifactId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        versionId = pulumi.Input.asInput<String>(versionId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    map['artifactId'] = artifactId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['versionId'] = versionId;
    return map;
  }

  factory GetVersionArtifactArgs.fromMap(Map<String, dynamic> map) {
    return GetVersionArtifactArgs(
      apiId: map['apiId'] as String,
      artifactId: map['artifactId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      versionId: map['versionId'] as String,
    );
  }
}
