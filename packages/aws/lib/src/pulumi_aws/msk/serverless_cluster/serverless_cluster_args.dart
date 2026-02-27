// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../serverless_cluster_client_authentication/serverless_cluster_client_authentication.dart';
import '../serverless_cluster_vpc_config/serverless_cluster_vpc_config.dart';

/// The set of arguments for ServerlessCluster.
class ServerlessClusterArgs {
  /// Specifies client authentication information for the serverless cluster. See below.
  final Input<ServerlessClusterClientAuthentication> clientAuthentication;

  /// The name of the serverless cluster.
  final Input<String>? clusterName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// VPC configuration information. See below.
  final Input<List<ServerlessClusterVpcConfig>> vpcConfigs;

  ServerlessClusterArgs({
    required this.clientAuthentication,
    this.clusterName,
    this.region,
    this.tags,
    required this.vpcConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientAuthentication'] = Input.mapInputValue<
        ServerlessClusterClientAuthentication,
        Map<String, dynamic>>(clientAuthentication, (value) => value.toMap());
    final clusterNameValue = clusterName;
    if (clusterNameValue != null) {
      map['clusterName'] = clusterNameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['vpcConfigs'] = Input.mapInputValue<List<ServerlessClusterVpcConfig>,
            List<Map<String, dynamic>>>(
        vpcConfigs,
        (value) =>
            Input.encodeList<ServerlessClusterVpcConfig, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    return map;
  }

  factory ServerlessClusterArgs.fromMap(Map<String, dynamic> map) {
    return ServerlessClusterArgs(
      clientAuthentication:
          Input.asInput<ServerlessClusterClientAuthentication>(
              map['clientAuthentication']),
      clusterName: Input.asOptionalInput<String>(map['clusterName']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcConfigs:
          Input.asInput<List<ServerlessClusterVpcConfig>>(map['vpcConfigs']),
    );
  }
}
