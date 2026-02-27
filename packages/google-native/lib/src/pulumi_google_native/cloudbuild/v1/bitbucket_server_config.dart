import 'package:pulumi/pulumi.dart' hide Config;
import 'bitbucket_server_config_args.dart';
import 'bitbucket_server_repository_id_response.dart';
import 'bitbucket_server_secrets_response.dart';

/// Creates a new `BitbucketServerConfig`. This API is experimental.
class BitbucketServerConfig extends CustomResource {
  /// Immutable. API Key that will be attached to webhook. Once this field has been set, it cannot be changed. If you need to change it, please create another BitbucketServerConfig.
  late final Output<String> apiKey;

  /// Optional. The ID to use for the BitbucketServerConfig, which will become the final component of the BitbucketServerConfig's resource name. bitbucket_server_config_id must meet the following requirements: + They must contain only alphanumeric characters and dashes. + They can be 1-64 characters long. + They must begin and end with an alphanumeric character.
  late final Output<String?> bitbucketServerConfigId;

  /// Connected Bitbucket Server repositories for this config.
  late final Output<List<BitbucketServerRepositoryIdResponse>>
      connectedRepositories;

  /// Time when the config was created.
  late final Output<String> createTime;

  /// Immutable. The URI of the Bitbucket Server host. Once this field has been set, it cannot be changed. If you need to change it, please create another BitbucketServerConfig.
  late final Output<String> hostUri;
  late final Output<String> location;

  /// The resource name for the config.
  late final Output<String> name;

  /// Optional. The network to be used when reaching out to the Bitbucket Server instance. The VPC network must be enabled for private service connection. This should be set if the Bitbucket Server instance is hosted on-premises and not reachable by public internet. If this field is left empty, no network peering will occur and calls to the Bitbucket Server instance will be made over the public internet. Must be in the format `projects/{project}/global/networks/{network}`, where {project} is a project number or id and {network} is the name of a VPC network in the project.
  late final Output<String> peeredNetwork;

  /// Immutable. IP range within the peered network. This is specified in CIDR notation with a slash and the subnet prefix size. You can optionally specify an IP address before the subnet prefix value. e.g. `192.168.0.0/29` would specify an IP range starting at 192.168.0.0 with a 29 bit prefix size. `/16` would specify a prefix size of 16 bits, with an automatically determined IP within the peered VPC. If unspecified, a value of `/24` will be used. The field only has an effect if peered_network is set.
  late final Output<String> peeredNetworkIpRange;
  late final Output<String> project;

  /// Secret Manager secrets needed by the config.
  late final Output<BitbucketServerSecretsResponse> secrets;

  /// Optional. SSL certificate to use for requests to Bitbucket Server. The format should be PEM format but the extension can be one of .pem, .cer, or .crt.
  late final Output<String> sslCa;

  /// Username of the account Cloud Build will use on Bitbucket Server.
  late final Output<String> username;

  /// UUID included in webhook requests. The UUID is used to look up the corresponding config.
  late final Output<String> webhookKey;

  BitbucketServerConfig(
    String name, {
    BitbucketServerConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:cloudbuild/v1:BitbucketServerConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiKey = registerOutput<String>('apiKey');
    this.bitbucketServerConfigId =
        registerOutput<String?>('bitbucketServerConfigId');
    this.connectedRepositories =
        registerOutput<List<BitbucketServerRepositoryIdResponse>>(
            'connectedRepositories');
    this.createTime = registerOutput<String>('createTime');
    this.hostUri = registerOutput<String>('hostUri');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.peeredNetwork = registerOutput<String>('peeredNetwork');
    this.peeredNetworkIpRange = registerOutput<String>('peeredNetworkIpRange');
    this.project = registerOutput<String>('project');
    this.secrets = registerOutput<BitbucketServerSecretsResponse>('secrets');
    this.sslCa = registerOutput<String>('sslCa');
    this.username = registerOutput<String>('username');
    this.webhookKey = registerOutput<String>('webhookKey');
  }
}
