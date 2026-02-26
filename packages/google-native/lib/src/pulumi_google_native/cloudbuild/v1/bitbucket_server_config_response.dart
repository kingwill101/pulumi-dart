// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'bitbucket_server_repository_id_response.dart';
import 'bitbucket_server_secrets_response.dart';

/// BitbucketServerConfig represents the configuration for a Bitbucket Server.
class BitbucketServerConfigResponse {
  /// Immutable. API Key that will be attached to webhook. Once this field has been set, it cannot be changed. If you need to change it, please create another BitbucketServerConfig.
  final String apiKey;

  /// Connected Bitbucket Server repositories for this config.
  final List<BitbucketServerRepositoryIdResponse> connectedRepositories;

  /// Time when the config was created.
  final String createTime;

  /// Immutable. The URI of the Bitbucket Server host. Once this field has been set, it cannot be changed. If you need to change it, please create another BitbucketServerConfig.
  final String hostUri;

  /// The resource name for the config.
  final String name;

  /// Optional. The network to be used when reaching out to the Bitbucket Server instance. The VPC network must be enabled for private service connection. This should be set if the Bitbucket Server instance is hosted on-premises and not reachable by public internet. If this field is left empty, no network peering will occur and calls to the Bitbucket Server instance will be made over the public internet. Must be in the format `projects/{project}/global/networks/{network}`, where {project} is a project number or id and {network} is the name of a VPC network in the project.
  final String peeredNetwork;

  /// Immutable. IP range within the peered network. This is specified in CIDR notation with a slash and the subnet prefix size. You can optionally specify an IP address before the subnet prefix value. e.g. `192.168.0.0/29` would specify an IP range starting at 192.168.0.0 with a 29 bit prefix size. `/16` would specify a prefix size of 16 bits, with an automatically determined IP within the peered VPC. If unspecified, a value of `/24` will be used. The field only has an effect if peered_network is set.
  final String peeredNetworkIpRange;

  /// Secret Manager secrets needed by the config.
  final BitbucketServerSecretsResponse secrets;

  /// Optional. SSL certificate to use for requests to Bitbucket Server. The format should be PEM format but the extension can be one of .pem, .cer, or .crt.
  final String sslCa;

  /// Username of the account Cloud Build will use on Bitbucket Server.
  final String username;

  /// UUID included in webhook requests. The UUID is used to look up the corresponding config.
  final String webhookKey;

  BitbucketServerConfigResponse({
    required this.apiKey,
    required this.connectedRepositories,
    required this.createTime,
    required this.hostUri,
    required this.name,
    required this.peeredNetwork,
    required this.peeredNetworkIpRange,
    required this.secrets,
    required this.sslCa,
    required this.username,
    required this.webhookKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiKey'] = apiKey;
    map['connectedRepositories'] = Input.encodeList<
        BitbucketServerRepositoryIdResponse,
        Map<String, dynamic>>(connectedRepositories, (value) => value.toMap());
    map['createTime'] = createTime;
    map['hostUri'] = hostUri;
    map['name'] = name;
    map['peeredNetwork'] = peeredNetwork;
    map['peeredNetworkIpRange'] = peeredNetworkIpRange;
    map['secrets'] = secrets.toMap();
    map['sslCa'] = sslCa;
    map['username'] = username;
    map['webhookKey'] = webhookKey;
    return map;
  }

  factory BitbucketServerConfigResponse.fromMap(Map<String, dynamic> map) {
    return BitbucketServerConfigResponse(
      apiKey: map['apiKey'] as String,
      connectedRepositories:
          Input.decodeList<BitbucketServerRepositoryIdResponse>(
              map['connectedRepositories'],
              (value) => BitbucketServerRepositoryIdResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      hostUri: map['hostUri'] as String,
      name: map['name'] as String,
      peeredNetwork: map['peeredNetwork'] as String,
      peeredNetworkIpRange: map['peeredNetworkIpRange'] as String,
      secrets: BitbucketServerSecretsResponse.fromMap(
          (map['secrets'] as Map).cast<String, dynamic>()),
      sslCa: map['sslCa'] as String,
      username: map['username'] as String,
      webhookKey: map['webhookKey'] as String,
    );
  }
}
