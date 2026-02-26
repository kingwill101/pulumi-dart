import 'package:pulumi/pulumi.dart';
import '../cluster_cluster_certificate/cluster_cluster_certificate.dart';
import 'cluster_args.dart';

/// Creates an Amazon CloudHSM v2 cluster.
///
/// For information about CloudHSM v2, see the
/// [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/introduction.html) and the [Amazon
/// CloudHSM API Reference][2].
///
/// > **NOTE:** A CloudHSM Cluster can take several minutes to set up.
/// Practically no single attribute can be updated, except for <span pulumi-lang-nodejs="`tags`" pulumi-lang-dotnet="`Tags`" pulumi-lang-go="`tags`" pulumi-lang-python="`tags`" pulumi-lang-yaml="`tags`" pulumi-lang-java="`tags`">`tags`</span>.
/// If you need to delete a cluster, you have to remove its HSM modules first.
/// To initialize cluster, you have to add an HSM instance to the cluster, then sign CSR and upload it.
///
/// ## Example Usage
///
/// The following example below creates a CloudHSM cluster.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const available = aws.getAvailabilityZones({});
/// const cloudhsmV2Vpc = new aws.ec2.Vpc("cloudhsm_v2_vpc", {
/// cidrBlock: "10.0.0.0/16",
/// tags: {
/// Name: "example-aws_cloudhsm_v2_cluster",
/// },
/// });
/// const cloudhsmV2Subnets: aws.ec2.Subnet[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
/// cloudhsmV2Subnets.push(new aws.ec2.Subnet(`cloudhsm_v2_subnets-${range.value}`, {
/// vpcId: cloudhsmV2Vpc.id,
/// cidrBlock: subnets[range.value],
/// mapPublicIpOnLaunch: false,
/// availabilityZone: available.then(available => available.names[range.value]),
/// tags: {
/// Name: "example-aws_cloudhsm_v2_cluster",
/// },
/// }));
/// }
/// const cloudhsmV2Cluster = new aws.cloudhsmv2.Cluster("cloudhsm_v2_cluster", {
/// hsmType: "hsm1.medium",
/// subnetIds: cloudhsmV2Subnets.map(__item => __item.id),
/// tags: {
/// Name: "example-aws_cloudhsm_v2_cluster",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// available = aws.get_availability_zones()
/// cloudhsm_v2_vpc = aws.ec2.Vpc("cloudhsm_v2_vpc",
/// cidr_block="10.0.0.0/16",
/// tags={
/// "Name": "example-aws_cloudhsm_v2_cluster",
/// })
/// cloudhsm_v2_subnets = []
/// for range in [{"value": i} for i in range(0, 2)]:
/// cloudhsm_v2_subnets.append(aws.ec2.Subnet(f"cloudhsm_v2_subnets-{range['value']}",
/// vpc_id=cloudhsm_v2_vpc.id,
/// cidr_block=subnets[range["value"]],
/// map_public_ip_on_launch=False,
/// availability_zone=available.names[range["value"]],
/// tags={
/// "Name": "example-aws_cloudhsm_v2_cluster",
/// }))
/// cloudhsm_v2_cluster = aws.cloudhsmv2.Cluster("cloudhsm_v2_cluster",
/// hsm_type="hsm1.medium",
/// subnet_ids=[__item.id for __item in cloudhsm_v2_subnets],
/// tags={
/// "Name": "example-aws_cloudhsm_v2_cluster",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var available = Aws.GetAvailabilityZones.Invoke();
///
/// var cloudhsmV2Vpc = new Aws.Ec2.Vpc("cloudhsm_v2_vpc", new()
/// {
/// CidrBlock = "10.0.0.0/16",
/// Tags =
/// {
/// { "Name", "example-aws_cloudhsm_v2_cluster" },
/// },
/// });
///
/// var cloudhsmV2Subnets = new List<Aws.Ec2.Subnet>();
/// for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
/// {
/// var range = new { Value = rangeIndex };
/// cloudhsmV2Subnets.Add(new Aws.Ec2.Subnet($"cloudhsm_v2_subnets-{range.Value}", new()
/// {
/// VpcId = cloudhsmV2Vpc.Id,
/// CidrBlock = subnets[range.Value],
/// MapPublicIpOnLaunch = false,
/// AvailabilityZone = available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names)[range.Value],
/// Tags =
/// {
/// { "Name", "example-aws_cloudhsm_v2_cluster" },
/// },
/// }));
/// }
/// var cloudhsmV2Cluster = new Aws.CloudHsmV2.Cluster("cloudhsm_v2_cluster", new()
/// {
/// HsmType = "hsm1.medium",
/// SubnetIds = cloudhsmV2Subnets.Select(__item => __item.Id).ToList(),
/// Tags =
/// {
/// { "Name", "example-aws_cloudhsm_v2_cluster" },
/// },
/// });
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var available = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
/// .build());
///
/// var cloudhsmV2Vpc = new Vpc("cloudhsmV2Vpc", VpcArgs.builder()
/// .cidrBlock("10.0.0.0/16")
/// .tags(Map.of("Name", "example-aws_cloudhsm_v2_cluster"))
/// .build());
///
/// for (var i = 0; i < 2; i++) {
/// new Subnet("cloudhsmV2Subnets-" + i, SubnetArgs.builder()
/// .vpcId(cloudhsmV2Vpc.id())
/// .cidrBlock(subnets[range.value()])
/// .mapPublicIpOnLaunch(false)
/// .availabilityZone(available.names()[range.value()])
/// .tags(Map.of("Name", "example-aws_cloudhsm_v2_cluster"))
/// .build());
///
///
/// }
/// var cloudhsmV2Cluster = new Cluster("cloudhsmV2Cluster", ClusterArgs.builder()
/// .hsmType("hsm1.medium")
/// .subnetIds(cloudhsmV2Subnets.stream().map(element -> element.id()).collect(toList()))
/// .tags(Map.of("Name", "example-aws_cloudhsm_v2_cluster"))
/// .build());
///
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CloudHSM v2 Clusters using the cluster <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudhsmv2/cluster:Cluster test_cluster cluster-aeb282a201
/// ```
class Cluster extends CustomResource {
  /// The list of cluster certificates.
  late final Output<List<ClusterClusterCertificate>> clusterCertificates;

  /// The id of the CloudHSM cluster.
  late final Output<String> clusterId;

  /// The state of the CloudHSM cluster.
  late final Output<String> clusterState;

  /// The type of HSM module in the cluster. Currently, `hsm1.medium` and `hsm2m.medium` are supported.
  late final Output<String> hsmType;

  /// The mode to use in the cluster. The allowed values are `FIPS` and `NON_FIPS`. This field is required if <span pulumi-lang-nodejs="`hsmType`" pulumi-lang-dotnet="`HsmType`" pulumi-lang-go="`hsmType`" pulumi-lang-python="`hsm_type`" pulumi-lang-yaml="`hsmType`" pulumi-lang-java="`hsmType`">`hsm_type`</span> is `hsm2m.medium`.
  late final Output<String> mode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the security group associated with the CloudHSM cluster.
  late final Output<String> securityGroupId;

  /// ID of Cloud HSM v2 cluster backup to be restored.
  late final Output<String?> sourceBackupIdentifier;

  /// The IDs of subnets in which cluster will operate.
  late final Output<List<String>> subnetIds;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The id of the VPC that the CloudHSM cluster resides in.
  late final Output<String> vpcId;

  Cluster(
    String name, {
    ClusterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudhsmv2/cluster:Cluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clusterCertificates =
        Output.createUnknown<List<ClusterClusterCertificate>>();
    this.clusterId = Output.createUnknown<String>();
    this.clusterState = Output.createUnknown<String>();
    this.hsmType = Output.createUnknown<String>();
    this.mode = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.securityGroupId = Output.createUnknown<String>();
    this.sourceBackupIdentifier = Output.createUnknown<String?>();
    this.subnetIds = Output.createUnknown<List<String>>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.vpcId = Output.createUnknown<String>();
  }
}
