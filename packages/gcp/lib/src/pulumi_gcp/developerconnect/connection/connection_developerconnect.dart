import 'package:pulumi/pulumi.dart' as pulumi;
import '../connection_bitbucket_cloud_config/connection_bitbucket_cloud_config_developerconnect.dart';
import '../connection_bitbucket_data_center_config/connection_bitbucket_data_center_config_developerconnect.dart';
import '../connection_crypto_key_config/connection_crypto_key_config.dart';
import '../connection_github_config/connection_github_config_developerconnect.dart';
import '../connection_github_enterprise_config/connection_github_enterprise_config_developerconnect.dart';
import '../connection_gitlab_config/connection_gitlab_config_developerconnect.dart';
import '../connection_gitlab_enterprise_config/connection_gitlab_enterprise_config.dart';
import '../connection_installation_state/connection_installation_state_developerconnect.dart';
import 'connection_developerconnect_args.dart';

/// A connection for GitHub, GitHub Enterprise, GitLab, and GitLab Enterprise.
///
///
/// To get more information about Connection, see:
///
/// * [API documentation](https://cloud.google.com/developer-connect/docs/api/reference/rest/v1/projects.locations.connections)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/developer-connect/docs/overview)
///
/// ## Example Usage
///
/// ### Developer Connect Connection New
///
///
///
/// ### Developer Connect Connection Existing Credentials
///
///
///
/// ### Developer Connect Connection Existing Installation
///
///
///
/// ### Developer Connect Connection Github
///
///
///
/// ### Developer Connect Connection Github Doc
///
///
///
/// ### Developer Connect Connection Github Enterprise
///
///
///
/// ### Developer Connect Connection Github Enterprise Doc
///
///
///
/// ### Developer Connect Connection Gitlab
///
///
///
/// ### Developer Connect Connection Gitlab Enterprise
///
///
///
/// ### Developer Connect Connection Bbc
///
///
///
/// ### Developer Connect Connection Bbdc
///
///
///
/// ## Import
///
/// Connection can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/connections/{{connection_id}}`
///
/// * `{{project}}/{{location}}/{{connection_id}}`
///
/// * `{{location}}/{{connection_id}}`
///
/// When using the `pulumi import` command, Connection can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:developerconnect/connection:Connection default projects/{{project}}/locations/{{location}}/connections/{{connection_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:developerconnect/connection:Connection default {{project}}/{{location}}/{{connection_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:developerconnect/connection:Connection default {{location}}/{{connection_id}}
/// ```
class ConnectionDeveloperconnect extends pulumi.CustomResource {
  /// Optional. Allows clients to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// Configuration for connections to an instance of Bitbucket Cloud.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionBitbucketCloudConfigDeveloperconnect?>
      bitbucketCloudConfig;

  /// Configuration for connections to an instance of Bitbucket Data Center.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionBitbucketDataCenterConfigDeveloperconnect?>
      bitbucketDataCenterConfig;

  /// Required. Id of the requesting object
  /// If auto-generating Id server-side, remove this field and
  /// connection_id from the method_signature of Create RPC
  late final pulumi.Output<String> connectionId;

  /// Output only. [Output only] Create timestamp
  late final pulumi.Output<String> createTime;

  /// The crypto key configuration. This field is used by the Customer-managed
  /// encryption keys (CMEK) feature.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionCryptoKeyConfig?> cryptoKeyConfig;

  /// Output only. [Output only] Delete timestamp
  late final pulumi.Output<String> deleteTime;

  /// Optional. If disabled is set to true, functionality is disabled for this connection.
  /// Repository based API methods and webhooks processing for repositories in
  /// this connection will be disabled.
  late final pulumi.Output<bool?> disabled;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Optional. This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  late final pulumi.Output<String?> etag;

  /// Configuration for connections to github.com.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionGithubConfigDeveloperconnect?>
      githubConfig;

  /// Configuration for connections to an instance of GitHub Enterprise.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionGithubEnterpriseConfigDeveloperconnect?>
      githubEnterpriseConfig;

  /// Configuration for connections to gitlab.com.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionGitlabConfigDeveloperconnect?>
      gitlabConfig;

  /// Configuration for connections to an instance of GitLab Enterprise.
  /// Structure is documented below.
  late final pulumi.Output<ConnectionGitlabEnterpriseConfig?>
      gitlabEnterpriseConfig;

  /// Describes stage and necessary actions to be taken by the
  /// user to complete the installation. Used for GitHub and GitHub Enterprise
  /// based connections.
  /// Structure is documented below.
  late final pulumi.Output<List<ConnectionInstallationStateDeveloperconnect>>
      installationStates;

  /// Optional. Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Identifier. The resource name of the connection, in the format
  /// `projects/{project}/locations/{location}/connections/{connection_id}`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Output only. Set to true when the connection is being set up or updated in the
  /// background.
  late final pulumi.Output<bool> reconciling;

  /// Output only. A system-assigned unique identifier for a the GitRepositoryLink.
  late final pulumi.Output<String> uid;

  /// Output only. [Output only] Update timestamp
  late final pulumi.Output<String> updateTime;

  ConnectionDeveloperconnect(
    String name, {
    ConnectionDeveloperconnectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:developerconnect/connection:Connection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.bitbucketCloudConfig =
        registerOutput<ConnectionBitbucketCloudConfigDeveloperconnect?>(
            'bitbucketCloudConfig');
    this.bitbucketDataCenterConfig =
        registerOutput<ConnectionBitbucketDataCenterConfigDeveloperconnect?>(
            'bitbucketDataCenterConfig');
    this.connectionId = registerOutput<String>('connectionId');
    this.createTime = registerOutput<String>('createTime');
    this.cryptoKeyConfig =
        registerOutput<ConnectionCryptoKeyConfig?>('cryptoKeyConfig');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.disabled = registerOutput<bool?>('disabled');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String?>('etag');
    this.githubConfig =
        registerOutput<ConnectionGithubConfigDeveloperconnect?>('githubConfig');
    this.githubEnterpriseConfig =
        registerOutput<ConnectionGithubEnterpriseConfigDeveloperconnect?>(
            'githubEnterpriseConfig');
    this.gitlabConfig =
        registerOutput<ConnectionGitlabConfigDeveloperconnect?>('gitlabConfig');
    this.gitlabEnterpriseConfig =
        registerOutput<ConnectionGitlabEnterpriseConfig?>(
            'gitlabEnterpriseConfig');
    this.installationStates =
        registerOutput<List<ConnectionInstallationStateDeveloperconnect>>(
            'installationStates');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
