// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../bitbucket_server_config_connected_repository/bitbucket_server_config_connected_repository.dart';
import '../bitbucket_server_config_secrets/bitbucket_server_config_secrets.dart';

/// The set of arguments for BitbucketServerConfig.
class BitbucketServerConfigArgs {
  /// Immutable. API Key that will be attached to webhook. Once this field has been set, it cannot be changed.
  /// Changing this field will result in deleting/ recreating the resource.
  final pulumi.Input<String> apiKey;

  /// The ID to use for the BitbucketServerConfig, which will become the final component of the BitbucketServerConfig's resource name.
  final pulumi.Input<String> configId;

  /// Connected Bitbucket Server repositories for this config.
  /// Structure is documented below.
  final pulumi.Input<List<BitbucketServerConfigConnectedRepository>>?
      connectedRepositories;

  /// Immutable. The URI of the Bitbucket Server host. Once this field has been set, it cannot be changed.
  /// If you need to change it, please create another BitbucketServerConfig.
  final pulumi.Input<String> hostUri;

  /// The location of this bitbucket server config.
  final pulumi.Input<String> location;

  /// The network to be used when reaching out to the Bitbucket Server instance. The VPC network must be enabled for private service connection.
  /// This should be set if the Bitbucket Server instance is hosted on-premises and not reachable by public internet. If this field is left empty,
  /// no network peering will occur and calls to the Bitbucket Server instance will be made over the public internet. Must be in the format
  /// projects/{project}/global/networks/{network}, where {project} is a project number or id and {network} is the name of a VPC network in the project.
  final pulumi.Input<String>? peeredNetwork;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Secret Manager secrets needed by the config.
  /// Structure is documented below.
  final pulumi.Input<BitbucketServerConfigSecrets> secrets;

  /// SSL certificate to use for requests to Bitbucket Server. The format should be PEM format but the extension can be one of .pem, .cer, or .crt.
  final pulumi.Input<String>? sslCa;

  /// Username of the account Cloud Build will use on Bitbucket Server.
  final pulumi.Input<String> username;

  BitbucketServerConfigArgs({
    required this.apiKey,
    required this.configId,
    this.connectedRepositories,
    required this.hostUri,
    required this.location,
    this.peeredNetwork,
    this.project,
    required this.secrets,
    this.sslCa,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiKey'] = apiKey;
    map['configId'] = configId;
    final connectedRepositoriesValue = connectedRepositories;
    if (connectedRepositoriesValue != null) {
      map['connectedRepositories'] = pulumi.Input.mapOptionalInputValue<
              List<BitbucketServerConfigConnectedRepository>,
              List<Map<String, dynamic>>>(
          connectedRepositoriesValue,
          (value) => pulumi.Input.encodeList<
              BitbucketServerConfigConnectedRepository,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['hostUri'] = hostUri;
    map['location'] = location;
    final peeredNetworkValue = peeredNetwork;
    if (peeredNetworkValue != null) {
      map['peeredNetwork'] = peeredNetworkValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['secrets'] = pulumi.Input.mapInputValue<BitbucketServerConfigSecrets,
        Map<String, dynamic>>(secrets, (value) => value.toMap());
    final sslCaValue = sslCa;
    if (sslCaValue != null) {
      map['sslCa'] = sslCaValue;
    }
    map['username'] = username;
    return map;
  }

  factory BitbucketServerConfigArgs.fromMap(Map<String, dynamic> map) {
    return BitbucketServerConfigArgs(
      apiKey: pulumi.Input.asInput<String>(map['apiKey']),
      configId: pulumi.Input.asInput<String>(map['configId']),
      connectedRepositories: pulumi.Input.asOptionalInput<
              List<BitbucketServerConfigConnectedRepository>>(
          map['connectedRepositories']),
      hostUri: pulumi.Input.asInput<String>(map['hostUri']),
      location: pulumi.Input.asInput<String>(map['location']),
      peeredNetwork: pulumi.Input.asOptionalInput<String>(map['peeredNetwork']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      secrets:
          pulumi.Input.asInput<BitbucketServerConfigSecrets>(map['secrets']),
      sslCa: pulumi.Input.asOptionalInput<String>(map['sslCa']),
      username: pulumi.Input.asInput<String>(map['username']),
    );
  }
}
