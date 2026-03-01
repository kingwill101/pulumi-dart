// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bitbucket_server_config_connected_repository.dart';
import 'bitbucket_server_config_secrets.dart';

/// {@template pulumi_cloudbuild_bitbucket_server_config_bitbucket_server_config_args_doc}
/// The set of arguments for BitbucketServerConfig.
/// {@endtemplate}
/// {@macro pulumi_cloudbuild_bitbucket_server_config_bitbucket_server_config_args_doc}
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

  /// Creates a new [BitbucketServerConfigArgs].
  /// [apiKey] Immutable. API Key that will be attached to webhook. Once this field has been set, it cannot be changed.
  /// [configId] The ID to use for the BitbucketServerConfig, which will become the final component of the BitbucketServerConfig's resource name.
  /// [connectedRepositories] Connected Bitbucket Server repositories for this config.
  /// [hostUri] Immutable. The URI of the Bitbucket Server host. Once this field has been set, it cannot be changed.
  /// [location] The location of this bitbucket server config.
  /// [peeredNetwork] The network to be used when reaching out to the Bitbucket Server instance. The VPC network must be enabled for private service connection.
  /// [project] The ID of the project in which the resource belongs.
  /// [secrets] Secret Manager secrets needed by the config.
  /// [sslCa] SSL certificate to use for requests to Bitbucket Server. The format should be PEM format but the extension can be one of .pem, .cer, or .crt.
  /// [username] Username of the account Cloud Build will use on Bitbucket Server.
  BitbucketServerConfigArgs({
    required String apiKey,
    required String configId,
    List<BitbucketServerConfigConnectedRepository>? connectedRepositories,
    required String hostUri,
    required String location,
    String? peeredNetwork,
    String? project,
    required BitbucketServerConfigSecrets secrets,
    String? sslCa,
    required String username,
  }) : apiKey = pulumi.Input.asInput<String>(apiKey),
       configId = pulumi.Input.asInput<String>(configId),
       connectedRepositories =
           pulumi.Input.asOptionalInput<
             List<BitbucketServerConfigConnectedRepository>
           >(connectedRepositories),
       hostUri = pulumi.Input.asInput<String>(hostUri),
       location = pulumi.Input.asInput<String>(location),
       peeredNetwork = pulumi.Input.asOptionalInput<String>(peeredNetwork),
       project = pulumi.Input.asOptionalInput<String>(project),
       secrets = pulumi.Input.asInput<BitbucketServerConfigSecrets>(secrets),
       sslCa = pulumi.Input.asOptionalInput<String>(sslCa),
       username = pulumi.Input.asInput<String>(username);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'configId': configId,
      'connectedRepositories':
          ?pulumi.Input.mapOptionalInputValue<
            List<BitbucketServerConfigConnectedRepository>,
            List<Map<String, dynamic>>
          >(
            connectedRepositories,
            (value) =>
                pulumi.Input.encodeList<
                  BitbucketServerConfigConnectedRepository,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'hostUri': hostUri,
      'location': location,
      'peeredNetwork': ?peeredNetwork,
      'project': ?project,
      'secrets':
          pulumi.Input.mapInputValue<
            BitbucketServerConfigSecrets,
            Map<String, dynamic>
          >(secrets, (value) => value.toMap()),
      'sslCa': ?sslCa,
      'username': username,
    };
  }

  factory BitbucketServerConfigArgs.fromMap(Map<String, dynamic> map) {
    return BitbucketServerConfigArgs(
      apiKey: map['apiKey'] as String,
      configId: map['configId'] as String,
      connectedRepositories: map['connectedRepositories'] == null
          ? null
          : pulumi.Input.decodeList<BitbucketServerConfigConnectedRepository>(
              map['connectedRepositories'],
              (value) => BitbucketServerConfigConnectedRepository.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      hostUri: map['hostUri'] as String,
      location: map['location'] as String,
      peeredNetwork: map['peeredNetwork'] == null
          ? null
          : map['peeredNetwork'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      secrets: BitbucketServerConfigSecrets.fromMap(
        (map['secrets'] as Map).cast<String, dynamic>(),
      ),
      sslCa: map['sslCa'] == null ? null : map['sslCa'] as String,
      username: map['username'] as String,
    );
  }
}
