// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for ArchiveDeployment.
class ArchiveDeploymentArgs {
  final Input<String> environmentId;

  /// Input only. The Google Cloud Storage signed URL returned from GenerateUploadUrl and used to upload the Archive zip file.
  final Input<String>? gcsUri;

  /// User-supplied key-value pairs used to organize ArchiveDeployments. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \p{Ll}\p{Lo}{0,62} Label values must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  final Input<Map<String, String>>? labels;

  /// Name of the Archive Deployment in the following format: `organizations/{org}/environments/{env}/archiveDeployments/{id}`.
  final Input<String>? name;
  final Input<String> organizationId;

  ArchiveDeploymentArgs({
    required this.environmentId,
    this.gcsUri,
    this.labels,
    this.name,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environmentId'] = environmentId;
    final gcsUriValue = gcsUri;
    if (gcsUriValue != null) {
      map['gcsUri'] = gcsUriValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    return map;
  }

  factory ArchiveDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return ArchiveDeploymentArgs(
      environmentId: Input.asInput<String>(map['environmentId']),
      gcsUri: Input.asOptionalInput<String>(map['gcsUri']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
