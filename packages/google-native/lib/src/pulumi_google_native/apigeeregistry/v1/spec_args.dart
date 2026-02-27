// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Spec.
class SpecArgs {
  /// Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  final pulumi.Input<Map<String, String>>? annotations;
  final pulumi.Input<String> apiId;

  /// Required. The ID to use for the spec, which will become the final component of the spec's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.
  final pulumi.Input<String> apiSpecId;

  /// Input only. The contents of the spec. Provided by API callers when specs are created or updated. To access the contents of a spec, use GetApiSpecContents.
  final pulumi.Input<String>? contents;

  /// A detailed description.
  final pulumi.Input<String>? description;

  /// A possibly-hierarchical name used to refer to the spec from other specs.
  final pulumi.Input<String>? filename;

  /// Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// A style (format) descriptor for this spec that is specified as a [Media Type](https://en.wikipedia.org/wiki/Media_type). Possible values include `application/vnd.apigee.proto`, `application/vnd.apigee.openapi`, and `application/vnd.apigee.graphql`, with possible suffixes representing compression types. These hypothetical names are defined in the vendor tree defined in RFC6838 (https://tools.ietf.org/html/rfc6838) and are not final. Content types can specify compression. Currently only GZip compression is supported (indicated with "+gzip").
  final pulumi.Input<String>? mimeType;

  /// Resource name.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// The original source URI of the spec (if one exists). This is an external location that can be used for reference purposes but which may not be authoritative since this external resource may change after the spec is retrieved.
  final pulumi.Input<String>? sourceUri;
  final pulumi.Input<String> versionId;

  SpecArgs({
    this.annotations,
    required this.apiId,
    required this.apiSpecId,
    this.contents,
    this.description,
    this.filename,
    this.labels,
    this.location,
    this.mimeType,
    this.name,
    this.project,
    this.sourceUri,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['apiId'] = apiId;
    map['apiSpecId'] = apiSpecId;
    final contentsValue = contents;
    if (contentsValue != null) {
      map['contents'] = contentsValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final filenameValue = filename;
    if (filenameValue != null) {
      map['filename'] = filenameValue;
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
    final sourceUriValue = sourceUri;
    if (sourceUriValue != null) {
      map['sourceUri'] = sourceUriValue;
    }
    map['versionId'] = versionId;
    return map;
  }

  factory SpecArgs.fromMap(Map<String, dynamic> map) {
    return SpecArgs(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      apiSpecId: pulumi.Input.asInput<String>(map['apiSpecId']),
      contents: pulumi.Input.asOptionalInput<String>(map['contents']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      filename: pulumi.Input.asOptionalInput<String>(map['filename']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      mimeType: pulumi.Input.asOptionalInput<String>(map['mimeType']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sourceUri: pulumi.Input.asOptionalInput<String>(map['sourceUri']),
      versionId: pulumi.Input.asInput<String>(map['versionId']),
    );
  }
}
