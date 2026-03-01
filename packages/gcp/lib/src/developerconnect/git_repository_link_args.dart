// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_developerconnect_git_repository_link_git_repository_link_args_doc}
/// The set of arguments for GitRepositoryLink.
/// {@endtemplate}
/// {@macro pulumi_developerconnect_git_repository_link_git_repository_link_args_doc}
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

  /// Creates a new [GitRepositoryLinkArgs].
  /// [annotations] Optional. Allows clients to store small amounts of arbitrary data.
  /// [cloneUri] Required. Git Clone URI.
  /// [etag] Optional. This checksum is computed by the server based on the value of other
  /// [gitRepositoryLinkId] Required. The ID to use for the repository, which will become the final component of
  /// [labels] Optional. Labels as key value pairs
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `developerconnect.googleapis.com/GitRepositoryLink`.
  /// [parentConnection] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `developerconnect.googleapis.com/GitRepositoryLink`.
  /// [project] The ID of the project in which the resource belongs.
  GitRepositoryLinkArgs({
    Map<String, String>? annotations,
    required String cloneUri,
    String? etag,
    required String gitRepositoryLinkId,
    Map<String, String>? labels,
    required String location,
    required String parentConnection,
    String? project,
  }) : annotations = pulumi.Input.asOptionalInput<Map<String, String>>(
         annotations,
       ),
       cloneUri = pulumi.Input.asInput<String>(cloneUri),
       etag = pulumi.Input.asOptionalInput<String>(etag),
       gitRepositoryLinkId = pulumi.Input.asInput<String>(gitRepositoryLinkId),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asInput<String>(location),
       parentConnection = pulumi.Input.asInput<String>(parentConnection),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'cloneUri': cloneUri,
      'etag': ?etag,
      'gitRepositoryLinkId': gitRepositoryLinkId,
      'labels': ?labels,
      'location': location,
      'parentConnection': parentConnection,
      'project': ?project,
    };
  }

  factory GitRepositoryLinkArgs.fromMap(Map<String, dynamic> map) {
    return GitRepositoryLinkArgs(
      annotations: map['annotations'] == null
          ? null
          : (map['annotations'] as Map).cast<String, String>(),
      cloneUri: map['cloneUri'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      gitRepositoryLinkId: map['gitRepositoryLinkId'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      parentConnection: map['parentConnection'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
