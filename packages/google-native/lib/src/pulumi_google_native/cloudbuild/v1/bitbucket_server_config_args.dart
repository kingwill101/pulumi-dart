// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'bitbucket_server_secrets.dart';

/// The set of arguments for BitbucketServerConfig.
class BitbucketServerConfigArgs {
  /// Immutable. API Key that will be attached to webhook. Once this field has been set, it cannot be changed. If you need to change it, please create another BitbucketServerConfig.
  final Input<String> apiKey;

  /// Optional. The ID to use for the BitbucketServerConfig, which will become the final component of the BitbucketServerConfig's resource name. bitbucket_server_config_id must meet the following requirements: + They must contain only alphanumeric characters and dashes. + They can be 1-64 characters long. + They must begin and end with an alphanumeric character.
  final Input<String>? bitbucketServerConfigId;

  /// Time when the config was created.
  final Input<String>? createTime;

  /// Immutable. The URI of the Bitbucket Server host. Once this field has been set, it cannot be changed. If you need to change it, please create another BitbucketServerConfig.
  final Input<String> hostUri;
  final Input<String>? location;

  /// The resource name for the config.
  final Input<String>? name;

  /// Optional. The network to be used when reaching out to the Bitbucket Server instance. The VPC network must be enabled for private service connection. This should be set if the Bitbucket Server instance is hosted on-premises and not reachable by public internet. If this field is left empty, no network peering will occur and calls to the Bitbucket Server instance will be made over the public internet. Must be in the format `projects/{project}/global/networks/{network}`, where {project} is a project number or id and {network} is the name of a VPC network in the project.
  final Input<String>? peeredNetwork;

  /// Immutable. IP range within the peered network. This is specified in CIDR notation with a slash and the subnet prefix size. You can optionally specify an IP address before the subnet prefix value. e.g. `192.168.0.0/29` would specify an IP range starting at 192.168.0.0 with a 29 bit prefix size. `/16` would specify a prefix size of 16 bits, with an automatically determined IP within the peered VPC. If unspecified, a value of `/24` will be used. The field only has an effect if peered_network is set.
  final Input<String>? peeredNetworkIpRange;
  final Input<String>? project;

  /// Secret Manager secrets needed by the config.
  final Input<BitbucketServerSecrets> secrets;

  /// Optional. SSL certificate to use for requests to Bitbucket Server. The format should be PEM format but the extension can be one of .pem, .cer, or .crt.
  final Input<String>? sslCa;

  /// Username of the account Cloud Build will use on Bitbucket Server.
  final Input<String>? username;

  BitbucketServerConfigArgs({
    required this.apiKey,
    this.bitbucketServerConfigId,
    this.createTime,
    required this.hostUri,
    this.location,
    this.name,
    this.peeredNetwork,
    this.peeredNetworkIpRange,
    this.project,
    required this.secrets,
    this.sslCa,
    this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiKey'] = apiKey;
    final bitbucketServerConfigIdValue = bitbucketServerConfigId;
    if (bitbucketServerConfigIdValue != null) {
      map['bitbucketServerConfigId'] = bitbucketServerConfigIdValue;
    }
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    map['hostUri'] = hostUri;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final peeredNetworkValue = peeredNetwork;
    if (peeredNetworkValue != null) {
      map['peeredNetwork'] = peeredNetworkValue;
    }
    final peeredNetworkIpRangeValue = peeredNetworkIpRange;
    if (peeredNetworkIpRangeValue != null) {
      map['peeredNetworkIpRange'] = peeredNetworkIpRangeValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['secrets'] =
        Input.mapInputValue<BitbucketServerSecrets, Map<String, dynamic>>(
            secrets, (value) => value.toMap());
    final sslCaValue = sslCa;
    if (sslCaValue != null) {
      map['sslCa'] = sslCaValue;
    }
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    return map;
  }

  factory BitbucketServerConfigArgs.fromMap(Map<String, dynamic> map) {
    return BitbucketServerConfigArgs(
      apiKey: Input.asInput<String>(map['apiKey']),
      bitbucketServerConfigId:
          Input.asOptionalInput<String>(map['bitbucketServerConfigId']),
      createTime: Input.asOptionalInput<String>(map['createTime']),
      hostUri: Input.asInput<String>(map['hostUri']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      peeredNetwork: Input.asOptionalInput<String>(map['peeredNetwork']),
      peeredNetworkIpRange:
          Input.asOptionalInput<String>(map['peeredNetworkIpRange']),
      project: Input.asOptionalInput<String>(map['project']),
      secrets: Input.asInput<BitbucketServerSecrets>(map['secrets']),
      sslCa: Input.asOptionalInput<String>(map['sslCa']),
      username: Input.asOptionalInput<String>(map['username']),
    );
  }
}
