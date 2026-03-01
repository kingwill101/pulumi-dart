import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_cluster_certificate.dart';
import 'cluster_state.dart';

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
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const available = aws.getAvailabilityZones({});
/// const cloudhsmV2Vpc = new aws.ec2.Vpc("cloudhsm_v2_vpc", {
///     cidrBlock: "10.0.0.0/16",
///     tags: {
///         Name: "example-aws_cloudhsm_v2_cluster",
///     },
/// });
/// const cloudhsmV2Subnets: aws.ec2.Subnet[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     cloudhsmV2Subnets.push(new aws.ec2.Subnet(`cloudhsm_v2_subnets-${range.value}`, {
///         vpcId: cloudhsmV2Vpc.id,
///         cidrBlock: subnets[range.value],
///         mapPublicIpOnLaunch: false,
///         availabilityZone: available.then(available => available.names[range.value]),
///         tags: {
///             Name: "example-aws_cloudhsm_v2_cluster",
///         },
///     }));
/// }
/// const cloudhsmV2Cluster = new aws.cloudhsmv2.Cluster("cloudhsm_v2_cluster", {
///     hsmType: "hsm1.medium",
///     subnetIds: cloudhsmV2Subnets.map(__item => __item.id),
///     tags: {
///         Name: "example-aws_cloudhsm_v2_cluster",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// available = aws.get_availability_zones()
/// cloudhsm_v2_vpc = aws.ec2.Vpc("cloudhsm_v2_vpc",
///     cidr_block="10.0.0.0/16",
///     tags={
///         "Name": "example-aws_cloudhsm_v2_cluster",
///     })
/// cloudhsm_v2_subnets = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     cloudhsm_v2_subnets.append(aws.ec2.Subnet(f"cloudhsm_v2_subnets-{range['value']}",
///         vpc_id=cloudhsm_v2_vpc.id,
///         cidr_block=subnets[range["value"]],
///         map_public_ip_on_launch=False,
///         availability_zone=available.names[range["value"]],
///         tags={
///             "Name": "example-aws_cloudhsm_v2_cluster",
///         }))
/// cloudhsm_v2_cluster = aws.cloudhsmv2.Cluster("cloudhsm_v2_cluster",
///     hsm_type="hsm1.medium",
///     subnet_ids=[__item.id for __item in cloudhsm_v2_subnets],
///     tags={
///         "Name": "example-aws_cloudhsm_v2_cluster",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var available = Aws.GetAvailabilityZones.Invoke();
///
///     var cloudhsmV2Vpc = new Aws.Ec2.Vpc("cloudhsm_v2_vpc", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///         Tags =
///         {
///             { "Name", "example-aws_cloudhsm_v2_cluster" },
///         },
///     });
///
///     var cloudhsmV2Subnets = new List<Aws.Ec2.Subnet>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         cloudhsmV2Subnets.Add(new Aws.Ec2.Subnet($"cloudhsm_v2_subnets-{range.Value}", new()
///         {
///             VpcId = cloudhsmV2Vpc.Id,
///             CidrBlock = subnets[range.Value],
///             MapPublicIpOnLaunch = false,
///             AvailabilityZone = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names)[range.Value],
///             Tags =
///             {
///                 { "Name", "example-aws_cloudhsm_v2_cluster" },
///             },
///         }));
///     }
///     var cloudhsmV2Cluster = new Aws.CloudHsmV2.Cluster("cloudhsm_v2_cluster", new()
///     {
///         HsmType = "hsm1.medium",
///         SubnetIds = cloudhsmV2Subnets.Select(__item => __item.Id).ToList(),
///         Tags =
///         {
///             { "Name", "example-aws_cloudhsm_v2_cluster" },
///         },
///     });
///
/// });
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.aws.cloudhsmv2.Cluster;
/// import com.pulumi.aws.cloudhsmv2.ClusterArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var available = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
///             .build());
///
///         var cloudhsmV2Vpc = new Vpc("cloudhsmV2Vpc", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .tags(Map.of("Name", "example-aws_cloudhsm_v2_cluster"))
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new Subnet("cloudhsmV2Subnets-" + i, SubnetArgs.builder()
///                 .vpcId(cloudhsmV2Vpc.id())
///                 .cidrBlock(subnets[range.value()])
///                 .mapPublicIpOnLaunch(false)
///                 .availabilityZone(available.names()[range.value()])
///                 .tags(Map.of("Name", "example-aws_cloudhsm_v2_cluster"))
///                 .build());
///
///
/// }
///         var cloudhsmV2Cluster = new Cluster("cloudhsmV2Cluster", ClusterArgs.builder()
///             .hsmType("hsm1.medium")
///             .subnetIds(cloudhsmV2Subnets.stream().map(element -> element.id()).collect(toList()))
///             .tags(Map.of("Name", "example-aws_cloudhsm_v2_cluster"))
///             .build());
///
///     }
/// }
/// ```
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

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_cloudhsmv2_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
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
    this.clusterCertificates = registerOutput<List<ClusterClusterCertificate>>('clusterCertificates');
    this.clusterId = registerOutput<String>('clusterId');
    this.clusterState = registerOutput<String>('clusterState');
    this.hsmType = registerOutput<String>('hsmType');
    this.mode = registerOutput<String>('mode');
    this.region = registerOutput<String>('region');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.sourceBackupIdentifier = registerOutput<String?>('sourceBackupIdentifier');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [Cluster] resource's state with the given [name] and [id].
  static Cluster get(
    String name,
    pulumi.Input<String> id, {
    ClusterState? state,
  }) {
    return Cluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Cluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudhsmv2/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterCertificates = registerOutput<List<ClusterClusterCertificate>>('clusterCertificates');
    this.clusterId = registerOutput<String>('clusterId');
    this.clusterState = registerOutput<String>('clusterState');
    this.hsmType = registerOutput<String>('hsmType');
    this.mode = registerOutput<String>('mode');
    this.region = registerOutput<String>('region');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.sourceBackupIdentifier = registerOutput<String?>('sourceBackupIdentifier');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
