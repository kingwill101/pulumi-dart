import 'package:pulumi/pulumi.dart';
import '../serverless_cluster_client_authentication/serverless_cluster_client_authentication.dart';
import '../serverless_cluster_vpc_config/serverless_cluster_vpc_config.dart';
import 'serverless_cluster_args.dart';

/// Manages an Amazon MSK Serverless cluster.
///
/// > **Note:** To manage a _provisioned_ Amazon MSK cluster, use the `aws.msk.Cluster` resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import MSK serverless clusters using the cluster `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:msk/serverlessCluster:ServerlessCluster example arn:aws:kafka:us-west-2:123456789012:cluster/example/279c0212-d057-4dba-9aa9-1c4e5a25bfc7-3
/// ```
class ServerlessCluster extends CustomResource {
  /// The ARN of the serverless cluster.
  late final Output<String> arn;

  /// One or more DNS names (or IP addresses) and SASL IAM port pairs. For example, `boot-abcdefg.c2.kafka-serverless.eu-central-1.amazonaws.com:9098`. The resource sorts the list alphabetically. AWS may not always return all endpoints so the values may not be stable across applies.
  late final Output<String> bootstrapBrokersSaslIam;

  /// Specifies client authentication information for the serverless cluster. See below.
  late final Output<ServerlessClusterClientAuthentication> clientAuthentication;

  /// The name of the serverless cluster.
  late final Output<String> clusterName;

  /// UUID of the serverless cluster, for use in IAM policies.
  late final Output<String> clusterUuid;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// VPC configuration information. See below.
  late final Output<List<ServerlessClusterVpcConfig>> vpcConfigs;

  ServerlessCluster(
    String name, {
    ServerlessClusterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:msk/serverlessCluster:ServerlessCluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.bootstrapBrokersSaslIam =
        registerOutput<String>('bootstrapBrokersSaslIam');
    this.clientAuthentication =
        registerOutput<ServerlessClusterClientAuthentication>(
            'clientAuthentication');
    this.clusterName = registerOutput<String>('clusterName');
    this.clusterUuid = registerOutput<String>('clusterUuid');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcConfigs =
        registerOutput<List<ServerlessClusterVpcConfig>>('vpcConfigs');
  }
}
