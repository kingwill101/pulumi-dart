import 'package:pulumi/pulumi.dart';
import 'git_repository_link_args.dart';

/// A git repository link to a parent connection.
///
///
/// To get more information about GitRepositoryLink, see:
///
/// * [API documentation](https://cloud.google.com/developer-connect/docs/api/reference/rest/v1/projects.locations.connections.gitRepositoryLinks)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/developer-connect/docs/overview)
///
/// ## Example Usage
///
/// ### Developer Connect Git Repository Link Github Doc
///
///
///
///
/// ## Import
///
/// GitRepositoryLink can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/connections/{{parent_connection}}/gitRepositoryLinks/{{git_repository_link_id}}`
///
/// * `{{project}}/{{location}}/{{parent_connection}}/{{git_repository_link_id}}`
///
/// * `{{location}}/{{parent_connection}}/{{git_repository_link_id}}`
///
/// When using the `pulumi import` command, GitRepositoryLink can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:developerconnect/gitRepositoryLink:GitRepositoryLink default projects/{{project}}/locations/{{location}}/connections/{{parent_connection}}/gitRepositoryLinks/{{git_repository_link_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:developerconnect/gitRepositoryLink:GitRepositoryLink default {{project}}/{{location}}/{{parent_connection}}/{{git_repository_link_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:developerconnect/gitRepositoryLink:GitRepositoryLink default {{location}}/{{parent_connection}}/{{git_repository_link_id}}
/// ```
class GitRepositoryLink extends CustomResource {
  /// Optional. Allows clients to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// Required. Git Clone URI.
  late final Output<String> cloneUri;

  /// Output only. [Output only] Create timestamp
  late final Output<String> createTime;

  /// Output only. [Output only] Delete timestamp
  late final Output<String> deleteTime;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Optional. This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  late final Output<String?> etag;

  /// Required. The ID to use for the repository, which will become the final component of
  /// the repository's resource name. This ID should be unique in the connection.
  /// Allows alphanumeric characters and any of -._~%!$&'()*+,;=@.
  late final Output<String> gitRepositoryLinkId;

  /// Optional. Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `developerconnect.googleapis.com/GitRepositoryLink`.
  late final Output<String> location;

  /// Identifier. Resource name of the repository, in the format
  /// `projects/*/locations/*/connections/*/gitRepositoryLinks/*`.
  late final Output<String> name;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122. See documentation for resource type `developerconnect.googleapis.com/GitRepositoryLink`.
  late final Output<String> parentConnection;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Output only. Set to true when the connection is being set up or updated in the
  /// background.
  late final Output<bool> reconciling;

  /// Output only. A system-assigned unique identifier for a the GitRepositoryLink.
  late final Output<String> uid;

  /// Output only. [Output only] Update timestamp
  late final Output<String> updateTime;

  GitRepositoryLink(
    String name, {
    GitRepositoryLinkArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:developerconnect/gitRepositoryLink:GitRepositoryLink',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.cloneUri = registerOutput<String>('cloneUri');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String?>('etag');
    this.gitRepositoryLinkId = registerOutput<String>('gitRepositoryLinkId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parentConnection = registerOutput<String>('parentConnection');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
