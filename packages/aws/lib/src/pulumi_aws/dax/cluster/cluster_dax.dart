import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_node/cluster_node.dart';
import '../cluster_server_side_encryption/cluster_server_side_encryption.dart';
import 'cluster_dax_args.dart';

/// Provides a DAX Cluster resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DAX Clusters using the `cluster_name`. For example:
///
/// ```sh
/// $ pulumi import aws:dax/cluster:Cluster my_cluster my_cluster
/// ```
///
/// [1]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DAX.concepts.cluster.html#DAX.concepts.nodes
class ClusterDax extends pulumi.CustomResource {
  /// The ARN of the DAX cluster
  late final pulumi.Output<String> arn;

  /// List of Availability Zones in which the
  /// nodes will be created
  late final pulumi.Output<List<String>?> availabilityZones;

  /// The DNS name of the DAX cluster without the port appended
  late final pulumi.Output<String> clusterAddress;

  /// The type of encryption the
  /// cluster's endpoint should support. Valid values are: `NONE` and `TLS`.
  /// Default value is `NONE`.
  late final pulumi.Output<String?> clusterEndpointEncryptionType;

  /// Group identifier. DAX converts this name to
  /// lowercase
  late final pulumi.Output<String> clusterName;

  /// The configuration endpoint for this DAX cluster,
  /// consisting of a DNS name and a port number
  late final pulumi.Output<String> configurationEndpoint;

  /// Description for the cluster
  late final pulumi.Output<String?> description;

  /// A valid Amazon Resource Name (ARN) that identifies
  /// an IAM role. At runtime, DAX will assume this role and use the role's
  /// permissions to access DynamoDB on your behalf
  late final pulumi.Output<String> iamRoleArn;

  /// Specifies the weekly time range for when
  /// maintenance on the cluster is performed. The format is `ddd:hh24:mi-ddd:hh24:mi`
  /// (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example:
  /// `sun:05:00-sun:09:00`
  late final pulumi.Output<String> maintenanceWindow;

  /// The compute and memory capacity of the nodes. See
  /// [Nodes](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DAX.concepts.cluster.html#DAX.concepts.nodes) for supported node types
  late final pulumi.Output<String> nodeType;

  /// List of node objects including `id`, `address`, `port` and
  /// `availability_zone`. Referenceable e.g., as
  /// `${aws_dax_cluster.test.nodes.0.address}`
  late final pulumi.Output<List<ClusterNode>> nodes;

  /// An Amazon Resource Name (ARN) of an
  /// SNS topic to send DAX notifications to. Example:
  /// `arn:aws:sns:us-east-1:012345678999:my_sns_topic`
  late final pulumi.Output<String?> notificationTopicArn;

  /// Name of the parameter group to associate
  /// with this DAX cluster
  late final pulumi.Output<String> parameterGroupName;

  /// The port used by the configuration endpoint
  late final pulumi.Output<int> port;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The number of nodes in the DAX cluster. A
  /// replication factor of 1 will create a single-node cluster, without any read
  /// replicas
  late final pulumi.Output<int> replicationFactor;

  /// One or more VPC security groups associated
  /// with the cluster
  late final pulumi.Output<List<String>> securityGroupIds;

  /// Encrypt at rest options
  late final pulumi.Output<ClusterServerSideEncryption?> serverSideEncryption;

  /// Name of the subnet group to be used for the
  /// cluster
  late final pulumi.Output<String> subnetGroupName;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ClusterDax(
    String name, {
    ClusterDaxArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dax/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.availabilityZones = registerOutput<List<String>?>('availabilityZones');
    this.clusterAddress = registerOutput<String>('clusterAddress');
    this.clusterEndpointEncryptionType =
        registerOutput<String?>('clusterEndpointEncryptionType');
    this.clusterName = registerOutput<String>('clusterName');
    this.configurationEndpoint =
        registerOutput<String>('configurationEndpoint');
    this.description = registerOutput<String?>('description');
    this.iamRoleArn = registerOutput<String>('iamRoleArn');
    this.maintenanceWindow = registerOutput<String>('maintenanceWindow');
    this.nodeType = registerOutput<String>('nodeType');
    this.nodes = registerOutput<List<ClusterNode>>('nodes');
    this.notificationTopicArn = registerOutput<String?>('notificationTopicArn');
    this.parameterGroupName = registerOutput<String>('parameterGroupName');
    this.port = registerOutput<int>('port');
    this.region = registerOutput<String>('region');
    this.replicationFactor = registerOutput<int>('replicationFactor');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.serverSideEncryption =
        registerOutput<ClusterServerSideEncryption?>('serverSideEncryption');
    this.subnetGroupName = registerOutput<String>('subnetGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
