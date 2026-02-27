import 'package:pulumi/pulumi.dart' as pulumi;
import '../bitbucket_server_config_connected_repository/bitbucket_server_config_connected_repository.dart';
import '../bitbucket_server_config_secrets/bitbucket_server_config_secrets.dart';
import 'bitbucket_server_config_args.dart';

/// BitbucketServerConfig represents the configuration for a Bitbucket Server.
///
///
/// To get more information about BitbucketServerConfig, see:
///
/// * [API documentation](https://cloud.google.com/build/docs/api/reference/rest/v1/projects.locations.bitbucketServerConfigs)
/// * How-to Guides
/// * [Connect to a Bitbucket Server host](https://cloud.google.com/build/docs/automating-builds/bitbucket/connect-host-bitbucket-server)
///
/// ## Example Usage
///
/// ### Cloudbuild Bitbucket Server Config
///
///
///
/// ### Cloudbuild Bitbucket Server Config Repositories
///
///
///
/// ### Cloudbuild Bitbucket Server Config Peered Network
///
///
///
///
/// ## Import
///
/// BitbucketServerConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/bitbucketServerConfigs/{{config_id}}`
///
/// * `{{project}}/{{location}}/{{config_id}}`
///
/// * `{{location}}/{{config_id}}`
///
/// When using the `pulumi import` command, BitbucketServerConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudbuild/bitbucketServerConfig:BitbucketServerConfig default projects/{{project}}/locations/{{location}}/bitbucketServerConfigs/{{config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudbuild/bitbucketServerConfig:BitbucketServerConfig default {{project}}/{{location}}/{{config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudbuild/bitbucketServerConfig:BitbucketServerConfig default {{location}}/{{config_id}}
/// ```
class BitbucketServerConfig extends pulumi.CustomResource {
  /// Immutable. API Key that will be attached to webhook. Once this field has been set, it cannot be changed.
  /// Changing this field will result in deleting/ recreating the resource.
  late final pulumi.Output<String> apiKey;

  /// The ID to use for the BitbucketServerConfig, which will become the final component of the BitbucketServerConfig's resource name.
  late final pulumi.Output<String> configId;

  /// Connected Bitbucket Server repositories for this config.
  /// Structure is documented below.
  late final pulumi.Output<List<BitbucketServerConfigConnectedRepository>?>
      connectedRepositories;

  /// Immutable. The URI of the Bitbucket Server host. Once this field has been set, it cannot be changed.
  /// If you need to change it, please create another BitbucketServerConfig.
  late final pulumi.Output<String> hostUri;

  /// The location of this bitbucket server config.
  late final pulumi.Output<String> location;

  /// The resource name for the config.
  late final pulumi.Output<String> name;

  /// The network to be used when reaching out to the Bitbucket Server instance. The VPC network must be enabled for private service connection.
  /// This should be set if the Bitbucket Server instance is hosted on-premises and not reachable by public internet. If this field is left empty,
  /// no network peering will occur and calls to the Bitbucket Server instance will be made over the public internet. Must be in the format
  /// projects/{project}/global/networks/{network}, where {project} is a project number or id and {network} is the name of a VPC network in the project.
  late final pulumi.Output<String?> peeredNetwork;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Secret Manager secrets needed by the config.
  /// Structure is documented below.
  late final pulumi.Output<BitbucketServerConfigSecrets> secrets;

  /// SSL certificate to use for requests to Bitbucket Server. The format should be PEM format but the extension can be one of .pem, .cer, or .crt.
  late final pulumi.Output<String?> sslCa;

  /// Username of the account Cloud Build will use on Bitbucket Server.
  late final pulumi.Output<String> username;

  /// Output only. UUID included in webhook requests. The UUID is used to look up the corresponding config.
  late final pulumi.Output<String> webhookKey;

  BitbucketServerConfig(
    String name, {
    BitbucketServerConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudbuild/bitbucketServerConfig:BitbucketServerConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiKey = registerOutput<String>('apiKey');
    this.configId = registerOutput<String>('configId');
    this.connectedRepositories =
        registerOutput<List<BitbucketServerConfigConnectedRepository>?>(
            'connectedRepositories');
    this.hostUri = registerOutput<String>('hostUri');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.peeredNetwork = registerOutput<String?>('peeredNetwork');
    this.project = registerOutput<String>('project');
    this.secrets = registerOutput<BitbucketServerConfigSecrets>('secrets');
    this.sslCa = registerOutput<String?>('sslCa');
    this.username = registerOutput<String>('username');
    this.webhookKey = registerOutput<String>('webhookKey');
  }
}
