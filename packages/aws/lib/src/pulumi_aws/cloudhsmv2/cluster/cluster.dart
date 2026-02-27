import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_cluster_certificate/cluster_cluster_certificate.dart';
import 'cluster_args.dart';

/// Creates an Amazon CloudHSM v2 cluster.
///
/// For information about CloudHSM v2, see the
/// [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/introduction.html) and the [Amazon
/// CloudHSM API Reference][2].
///
/// > **NOTE:** A CloudHSM Cluster can take several minutes to set up.
/// Practically no single attribute can be updated, except for `tags`.
/// If you need to delete a cluster, you have to remove its HSM modules first.
/// To initialize cluster, you have to add an HSM instance to the cluster, then sign CSR and upload it.
///
/// ## Example Usage
///
/// The following example below creates a CloudHSM cluster.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudHSM v2 Clusters using the cluster `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudhsmv2/cluster:Cluster test_cluster cluster-aeb282a201
/// ```
class Cluster extends pulumi.CustomResource {
  /// The list of cluster certificates.
  late final pulumi.Output<List<ClusterClusterCertificate>> clusterCertificates;

  /// The id of the CloudHSM cluster.
  late final pulumi.Output<String> clusterId;

  /// The state of the CloudHSM cluster.
  late final pulumi.Output<String> clusterState;

  /// The type of HSM module in the cluster. Currently, `hsm1.medium` and `hsm2m.medium` are supported.
  late final pulumi.Output<String> hsmType;

  /// The mode to use in the cluster. The allowed values are `FIPS` and `NON_FIPS`. This field is required if `hsm_type` is `hsm2m.medium`.
  late final pulumi.Output<String> mode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the security group associated with the CloudHSM cluster.
  late final pulumi.Output<String> securityGroupId;

  /// ID of Cloud HSM v2 cluster backup to be restored.
  late final pulumi.Output<String?> sourceBackupIdentifier;

  /// The IDs of subnets in which cluster will operate.
  late final pulumi.Output<List<String>> subnetIds;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The id of the VPC that the CloudHSM cluster resides in.
  late final pulumi.Output<String> vpcId;

  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudhsmv2/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterCertificates =
        registerOutput<List<ClusterClusterCertificate>>('clusterCertificates');
    this.clusterId = registerOutput<String>('clusterId');
    this.clusterState = registerOutput<String>('clusterState');
    this.hsmType = registerOutput<String>('hsmType');
    this.mode = registerOutput<String>('mode');
    this.region = registerOutput<String>('region');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.sourceBackupIdentifier =
        registerOutput<String?>('sourceBackupIdentifier');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
