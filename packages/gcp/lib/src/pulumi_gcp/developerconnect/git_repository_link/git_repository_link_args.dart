// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for GitRepositoryLink.
class GitRepositoryLinkArgs {
  /// Optional. Allows clients to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Required. Git Clone URI.
  final pulumi.Input<String> cloneUri;

  /// Optional. This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;

  /// Required. The ID to use for the repository, which will become the final component of
  /// the repository's resource name. This ID should be unique in the connection.
  /// Allows alphanumeric characters and any of -._~%!$&'()*+,;=@.
  final pulumi.Input<String> gitRepositoryLinkId;

  /// Optional. Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `developerconnect.googleapis.com/GitRepositoryLink`.
  final pulumi.Input<String> location;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `developerconnect.googleapis.com/GitRepositoryLink`.
  final pulumi.Input<String> parentConnection;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GitRepositoryLinkArgs({
    this.annotations,
    required this.cloneUri,
    this.etag,
    required this.gitRepositoryLinkId,
    this.labels,
    required this.location,
    required this.parentConnection,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['cloneUri'] = cloneUri;
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    map['gitRepositoryLinkId'] = gitRepositoryLinkId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    map['parentConnection'] = parentConnection;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GitRepositoryLinkArgs.fromMap(Map<String, dynamic> map) {
    return GitRepositoryLinkArgs(
      annotations:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['annotations']),
      cloneUri: pulumi.Input.asInput<String>(map['cloneUri']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      gitRepositoryLinkId:
          pulumi.Input.asInput<String>(map['gitRepositoryLinkId']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      parentConnection: pulumi.Input.asInput<String>(map['parentConnection']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
