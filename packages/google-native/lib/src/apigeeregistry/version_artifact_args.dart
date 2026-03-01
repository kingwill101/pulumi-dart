// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigeeregistry_v1_version_artifact_args_doc}
/// The set of arguments for VersionArtifact.
/// {@endtemplate}
/// {@macro pulumi_apigeeregistry_v1_version_artifact_args_doc}
class VersionArtifactArgs {
  /// Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  final pulumi.Input<Map<String, String>>? annotations;
  final pulumi.Input<String> apiId;

  /// Required. The ID to use for the artifact, which will become the final component of the artifact's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.
  final pulumi.Input<String> artifactId;

  /// Input only. The contents of the artifact. Provided by API callers when artifacts are created or replaced. To access the contents of an artifact, use GetArtifactContents.
  final pulumi.Input<String>? contents;

  /// Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "registry.googleapis.com/" and cannot be changed.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// A content type specifier for the artifact. Content type specifiers are Media Types (https://en.wikipedia.org/wiki/Media_type) with a possible "schema" parameter that specifies a schema for the stored information. Content types can specify compression. Currently only GZip compression is supported (indicated with "+gzip").
  final pulumi.Input<String>? mimeType;

  /// Resource name.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> versionId;

  /// Creates a new [VersionArtifactArgs].
  /// [annotations] Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  /// [apiId] Required.
  /// [artifactId] Required. The ID to use for the artifact, which will become the final component of the artifact's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.
  /// [contents] Input only. The contents of the artifact. Provided by API callers when artifacts are created or replaced. To access the contents of an artifact, use GetArtifactContents.
  /// [labels] Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "registry.googleapis.com/" and cannot be changed.
  /// [location] Optional.
  /// [mimeType] A content type specifier for the artifact. Content type specifiers are Media Types (https://en.wikipedia.org/wiki/Media_type) with a possible "schema" parameter that specifies a schema for the stored information. Content types can specify compression. Currently only GZip compression is supported (indicated with "+gzip").
  /// [name] Resource name.
  /// [project] Optional.
  /// [versionId] Required.
  VersionArtifactArgs({
    Map<String, String>? annotations,
    required String apiId,
    required String artifactId,
    String? contents,
    Map<String, String>? labels,
    String? location,
    String? mimeType,
    String? name,
    String? project,
    required String versionId,
  }) : annotations = pulumi.Input.asOptionalInput<Map<String, String>>(
         annotations,
       ),
       apiId = pulumi.Input.asInput<String>(apiId),
       artifactId = pulumi.Input.asInput<String>(artifactId),
       contents = pulumi.Input.asOptionalInput<String>(contents),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       mimeType = pulumi.Input.asOptionalInput<String>(mimeType),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       versionId = pulumi.Input.asInput<String>(versionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'apiId': apiId,
      'artifactId': artifactId,
      'contents': ?contents,
      'labels': ?labels,
      'location': ?location,
      'mimeType': ?mimeType,
      'name': ?name,
      'project': ?project,
      'versionId': versionId,
    };
  }

  factory VersionArtifactArgs.fromMap(Map<String, dynamic> map) {
    return VersionArtifactArgs(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      apiId: map['apiId'] as String,
      artifactId: map['artifactId'] as String,
      contents: map['contents'] == null ? null : map['contents'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      mimeType: map['mimeType'] == null ? null : map['mimeType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      versionId: map['versionId'] as String,
    );
  }
}
