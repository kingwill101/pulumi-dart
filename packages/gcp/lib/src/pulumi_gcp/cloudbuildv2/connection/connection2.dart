import 'package:pulumi/pulumi.dart';
import '../connection_bitbucket_cloud_config/connection_bitbucket_cloud_config.dart';
import '../connection_bitbucket_data_center_config/connection_bitbucket_data_center_config.dart';
import '../connection_github_config/connection_github_config.dart';
import '../connection_github_enterprise_config/connection_github_enterprise_config.dart';
import '../connection_gitlab_config/connection_gitlab_config.dart';
import '../connection_installation_state/connection_installation_state.dart';
import 'connection_args2.dart';

/// A connection to a SCM like GitHub, GitHub Enterprise, Bitbucket Data Center/Cloud or GitLab.
///
///
/// To get more information about Connection, see:
///
/// * [API documentation](https://cloud.google.com/build/docs/api/reference/rest)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/build/docs)
///
/// ## Example Usage
///
/// ### Cloudbuildv2 Connection
///
///
///
/// ### Cloudbuildv2 Connection Ghe
///
///
///
/// ### Cloudbuildv2 Connection Github
///
///
///
///
/// ## Import
///
/// Connection can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/connections/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Connection can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudbuildv2/connection:Connection default projects/{{project}}/locations/{{location}}/connections/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudbuildv2/connection:Connection default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudbuildv2/connection:Connection default {{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudbuildv2/connection:Connection default {{name}}
/// ```
class Connection2 extends CustomResource {
  /// Allows clients to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// Configuration for connections to Bitbucket Cloud.
  /// Structure is documented below.
  late final Output<ConnectionBitbucketCloudConfig?> bitbucketCloudConfig;

  /// Configuration for connections to Bitbucket Data Center.
  /// Structure is documented below.
  late final Output<ConnectionBitbucketDataCenterConfig?>
      bitbucketDataCenterConfig;

  /// Output only. Server assigned timestamp for when the connection was created.
  late final Output<String> createTime;

  /// If disabled is set to true, functionality is disabled for this connection. Repository based API methods and webhooks processing for repositories in this connection will be disabled.
  late final Output<bool?> disabled;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// Configuration for connections to github.com.
  /// Structure is documented below.
  late final Output<ConnectionGithubConfig?> githubConfig;

  /// Configuration for connections to an instance of GitHub Enterprise.
  /// Structure is documented below.
  late final Output<ConnectionGithubEnterpriseConfig?> githubEnterpriseConfig;

  /// Configuration for connections to gitlab.com or an instance of GitLab Enterprise.
  /// Structure is documented below.
  late final Output<ConnectionGitlabConfig?> gitlabConfig;

  /// Output only. Installation state of the Connection.
  /// Structure is documented below.
  late final Output<List<ConnectionInstallationState>> installationStates;

  /// The location for the resource
  late final Output<String> location;

  /// Immutable. The resource name of the connection.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Output only. Set to true when the connection is being set up or updated in the background.
  late final Output<bool> reconciling;

  /// Output only. Server assigned timestamp for when the connection was updated.
  late final Output<String> updateTime;

  Connection2(
    String name, {
    ConnectionArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:cloudbuildv2/connection:Connection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.bitbucketCloudConfig =
        registerOutput<ConnectionBitbucketCloudConfig?>('bitbucketCloudConfig');
    this.bitbucketDataCenterConfig =
        registerOutput<ConnectionBitbucketDataCenterConfig?>(
            'bitbucketDataCenterConfig');
    this.createTime = registerOutput<String>('createTime');
    this.disabled = registerOutput<bool?>('disabled');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.etag = registerOutput<String>('etag');
    this.githubConfig = registerOutput<ConnectionGithubConfig?>('githubConfig');
    this.githubEnterpriseConfig =
        registerOutput<ConnectionGithubEnterpriseConfig?>(
            'githubEnterpriseConfig');
    this.gitlabConfig = registerOutput<ConnectionGitlabConfig?>('gitlabConfig');
    this.installationStates =
        registerOutput<List<ConnectionInstallationState>>('installationStates');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.reconciling = registerOutput<bool>('reconciling');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
