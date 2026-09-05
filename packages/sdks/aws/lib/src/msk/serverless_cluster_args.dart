// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_cluster_client_authentication.dart';
import 'serverless_cluster_vpc_config.dart';

/// {@template pulumi_msk_serverless_cluster_serverless_cluster_args_doc}
/// The set of arguments for ServerlessCluster.
/// {@endtemplate}
/// {@macro pulumi_msk_serverless_cluster_serverless_cluster_args_doc}
class ServerlessClusterArgs {
  /// Specifies client authentication information for the serverless cluster. See below.
  final pulumi.Input<ServerlessClusterClientAuthentication> clientAuthentication;
  /// The name of the serverless cluster.
  final pulumi.Input<String?>? clusterName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// VPC configuration information. See below.
  final pulumi.Input<List<ServerlessClusterVpcConfig>> vpcConfigs;

  /// Creates a new [ServerlessClusterArgs].
  /// [clientAuthentication] Specifies client authentication information for the serverless cluster. See below.
  /// [clusterName] The name of the serverless cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcConfigs] VPC configuration information. See below.
  const ServerlessClusterArgs({
    required this.clientAuthentication,
    this.clusterName,
    this.region,
    this.tags,
    required this.vpcConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientAuthentication': pulumi.Input.mapInputValue<ServerlessClusterClientAuthentication, Map<String, dynamic>>(clientAuthentication, (value) => value.toMap()),
      'clusterName': ?clusterName,
      'region': ?region,
      'tags': ?tags,
      'vpcConfigs': pulumi.Input.mapInputValue<List<ServerlessClusterVpcConfig>, List<Map<String, dynamic>>>(vpcConfigs, (value) => pulumi.Input.encodeList<ServerlessClusterVpcConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServerlessClusterArgs.fromMap(Map<String, dynamic> map) {
    return ServerlessClusterArgs(
      clientAuthentication: pulumi.Input.fromValue(ServerlessClusterClientAuthentication.fromMap((map['clientAuthentication']! as Map).cast<String, dynamic>())),
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<ServerlessClusterVpcConfig>(map['vpcConfigs']!, (value) => ServerlessClusterVpcConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
