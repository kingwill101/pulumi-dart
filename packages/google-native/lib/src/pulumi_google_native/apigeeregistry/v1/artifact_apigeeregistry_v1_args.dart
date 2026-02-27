// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Artifact.
class ArtifactApigeeregistryV1Args {
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
  final pulumi.Input<String> specId;
  final pulumi.Input<String> versionId;

  ArtifactApigeeregistryV1Args({
    this.annotations,
    required this.apiId,
    required this.artifactId,
    this.contents,
    this.labels,
    this.location,
    this.mimeType,
    this.name,
    this.project,
    required this.specId,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['apiId'] = apiId;
    map['artifactId'] = artifactId;
    final contentsValue = contents;
    if (contentsValue != null) {
      map['contents'] = contentsValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final mimeTypeValue = mimeType;
    if (mimeTypeValue != null) {
      map['mimeType'] = mimeTypeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['specId'] = specId;
    map['versionId'] = versionId;
    return map;
  }

  factory ArtifactApigeeregistryV1Args.fromMap(Map<String, dynamic> map) {
    return ArtifactApigeeregistryV1Args(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      artifactId: pulumi.Input.asInput<String>(map['artifactId']),
      contents: pulumi.Input.asOptionalInput<String>(map['contents']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      mimeType: pulumi.Input.asOptionalInput<String>(map['mimeType']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      specId: pulumi.Input.asInput<String>(map['specId']),
      versionId: pulumi.Input.asInput<String>(map['versionId']),
    );
  }
}
