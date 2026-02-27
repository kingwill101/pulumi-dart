// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for DeploymentArtifact.
class DeploymentArtifactArgs {
  /// Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  final Input<Map<String, String>>? annotations;
  final Input<String> apiId;

  /// Required. The ID to use for the artifact, which will become the final component of the artifact's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.
  final Input<String> artifactId;

  /// Input only. The contents of the artifact. Provided by API callers when artifacts are created or replaced. To access the contents of an artifact, use GetArtifactContents.
  final Input<String>? contents;
  final Input<String> deploymentId;

  /// Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "registry.googleapis.com/" and cannot be changed.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// A content type specifier for the artifact. Content type specifiers are Media Types (https://en.wikipedia.org/wiki/Media_type) with a possible "schema" parameter that specifies a schema for the stored information. Content types can specify compression. Currently only GZip compression is supported (indicated with "+gzip").
  final Input<String>? mimeType;

  /// Resource name.
  final Input<String>? name;
  final Input<String>? project;

  DeploymentArtifactArgs({
    this.annotations,
    required this.apiId,
    required this.artifactId,
    this.contents,
    required this.deploymentId,
    this.labels,
    this.location,
    this.mimeType,
    this.name,
    this.project,
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
    map['deploymentId'] = deploymentId;
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
    return map;
  }

  factory DeploymentArtifactArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArtifactArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      apiId: Input.asInput<String>(map['apiId']),
      artifactId: Input.asInput<String>(map['artifactId']),
      contents: Input.asOptionalInput<String>(map['contents']),
      deploymentId: Input.asInput<String>(map['deploymentId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      mimeType: Input.asOptionalInput<String>(map['mimeType']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
