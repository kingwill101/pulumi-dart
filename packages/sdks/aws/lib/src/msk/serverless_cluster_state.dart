// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_cluster_client_authentication.dart';
import 'serverless_cluster_vpc_config.dart';

/// Input properties used for looking up and filtering ServerlessCluster resources.
class ServerlessClusterState {
  /// The ARN of the serverless cluster.
  final pulumi.Input<String>? arn;
  /// One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, `boot-abcdefg.c2.kafka-serverless.eu-central-1.amazonaws.com:9098`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  final pulumi.Input<String>? bootstrapBrokersSaslIam;
  /// Specifies client authentication information for the serverless cluster. See below.
  final pulumi.Input<ServerlessClusterClientAuthentication>? clientAuthentication;
  /// The name of the serverless cluster.
  final pulumi.Input<String>? clusterName;
  /// UUID of the serverless cluster, for use in IAM policies.
  final pulumi.Input<String>? clusterUuid;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// VPC configuration information. See below.
  final pulumi.Input<List<ServerlessClusterVpcConfig>>? vpcConfigs;

  /// Creates a new [ServerlessClusterState].
  /// [arn] The ARN of the serverless cluster.
  /// [bootstrapBrokersSaslIam] One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, `boot-abcdefg.c2.kafka-serverless.eu-central-1.amazonaws.com:9098`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  /// [clientAuthentication] Specifies client authentication information for the serverless cluster. See below.
  /// [clusterName] The name of the serverless cluster.
  /// [clusterUuid] UUID of the serverless cluster, for use in IAM policies.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcConfigs] VPC configuration information. See below.
  ServerlessClusterState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? bootstrapBrokersSaslIam,
    pulumi.Output<ServerlessClusterClientAuthentication>? clientAuthentication,
    pulumi.Output<String>? clusterName,
    pulumi.Output<String>? clusterUuid,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<List<ServerlessClusterVpcConfig>>? vpcConfigs,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      bootstrapBrokersSaslIam = pulumi.Input.asOptionalInput<String>(bootstrapBrokersSaslIam),
      clientAuthentication = pulumi.Input.asOptionalInput<ServerlessClusterClientAuthentication>(clientAuthentication),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      clusterUuid = pulumi.Input.asOptionalInput<String>(clusterUuid),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcConfigs = pulumi.Input.asOptionalInput<List<ServerlessClusterVpcConfig>>(vpcConfigs);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'bootstrapBrokersSaslIam': ?bootstrapBrokersSaslIam,
      'clientAuthentication': ?pulumi.Input.mapOptionalInputValue<ServerlessClusterClientAuthentication, Map<String, dynamic>>(clientAuthentication, (value) => value.toMap()),
      'clusterName': ?clusterName,
      'clusterUuid': ?clusterUuid,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcConfigs': ?pulumi.Input.mapOptionalInputValue<List<ServerlessClusterVpcConfig>, List<Map<String, dynamic>>>(vpcConfigs, (value) => pulumi.Input.encodeList<ServerlessClusterVpcConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServerlessClusterState.fromMap(Map<String, dynamic> map) {
    return ServerlessClusterState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      bootstrapBrokersSaslIam: map['bootstrapBrokersSaslIam'] == null ? null : pulumi.Output.create<String>(map['bootstrapBrokersSaslIam'] as String),
      clientAuthentication: map['clientAuthentication'] == null ? null : pulumi.Output.create<ServerlessClusterClientAuthentication>(ServerlessClusterClientAuthentication.fromMap((map['clientAuthentication'] as Map).cast<String, dynamic>())),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      clusterUuid: map['clusterUuid'] == null ? null : pulumi.Output.create<String>(map['clusterUuid'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcConfigs: map['vpcConfigs'] == null ? null : pulumi.Output.create<List<ServerlessClusterVpcConfig>>(pulumi.Input.decodeList<ServerlessClusterVpcConfig>(map['vpcConfigs'], (value) => ServerlessClusterVpcConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

