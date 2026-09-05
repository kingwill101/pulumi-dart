import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_cluster_certificate.dart';
import 'cluster_state.dart';

/// Creates an Amazon CloudHSM v2 cluster.
///
/// For information about CloudHSM v2, see the
/// [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/introduction.html) and the [Amazon
/// CloudHSM API Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/Welcome.html).
///
/// &gt; **NOTE:** A CloudHSM Cluster can take several minutes to set up.
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
/// for (let range = 0; range < 2; range++) {
///     cloudhsmV2Subnets.push(new aws.ec2.Subnet(`cloudhsm_v2_subnets-${range}`, {
///         vpcId: cloudhsmV2Vpc.id,
///         cidrBlock: subnets[range],
///         mapPublicIpOnLaunch: false,
///         availabilityZone: available.then(available => available.names)[range],
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
/// from typing import Any
/// import pulumi_aws as aws
///
/// available = aws.get_availability_zones()
/// cloudhsm_v2_vpc = aws.ec2.Vpc("cloudhsm_v2_vpc",
///     cidr_block="10.0.0.0/16",
///     tags={
///         "Name": "example-aws_cloudhsm_v2_cluster",
///     })
/// cloudhsm_v2_subnets: list[aws.ec2.Subnet] = []
/// for cloudhsm_v2_subnets_range in [{"value": i} for i in range(0, 2)]:
///     cloudhsm_v2_subnets.append(aws.ec2.Subnet(f"cloudhsm_v2_subnets-{cloudhsm_v2_subnets_range['value']}",
///         vpc_id=cloudhsm_v2_vpc.id,
///         cidr_block=subnets[cloudhsm_v2_subnets_range["value"]],
///         map_public_ip_on_launch=False,
///         availability_zone=available.names[cloudhsm_v2_subnets_range["value"]],
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
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudhsmv2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		available, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cloudhsmV2Vpc, err := ec2.NewVpc(ctx, "cloudhsm_v2_vpc", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-aws_cloudhsm_v2_cluster"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var cloudhsmV2Subnets []*ec2.Subnet
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := ec2.NewSubnet(ctx, fmt.Sprintf("cloudhsm_v2_subnets-%v", key0), &ec2.SubnetArgs{
/// 				VpcId:               cloudhsmV2Vpc.ID().ToIDOutput().ToStringOutput(),
/// 				CidrBlock:           subnets[val0],
/// 				MapPublicIpOnLaunch: pulumi.Bool(false),
/// 				AvailabilityZone:    available.Names[val0],
/// 				Tags: pulumi.StringMap{
/// 					"Name": pulumi.String("example-aws_cloudhsm_v2_cluster"),
/// 				},
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			cloudhsmV2Subnets = append(cloudhsmV2Subnets, __res)
/// 		}
/// 		var splat0 pulumi.IDArray
/// 		for _, val0 := range cloudhsmV2Subnets {
/// 			splat0 = append(splat0, val0.ID())
/// 		}
/// 		_, err = cloudhsmv2.NewCluster(ctx, "cloudhsm_v2_cluster", &cloudhsmv2.ClusterArgs{
/// 			HsmType:   pulumi.String("hsm1.medium"),
/// 			SubnetIds: toPulumiIDArray(splat0),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-aws_cloudhsm_v2_cluster"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// func toPulumiIDArray(arr []pulumi.ID) pulumi.IDArray {
/// 	var pulumiArr pulumi.IDArray
/// 	for _, v := range arr {
/// 		pulumiArr = append(pulumiArr, pulumi.ID(v))
/// 	}
/// 	return pulumiArr
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_getavailabilityzones" "available" {
/// }
///
/// resource "aws_ec2_vpc" "cloudhsm_v2_vpc" {
///   cidr_block = "10.0.0.0/16"
///   tags = {
///     "Name" = "example-aws_cloudhsm_v2_cluster"
///   }
/// }
/// resource "aws_ec2_subnet" "cloudhsm_v2_subnets" {
///   count                   = 2
///   vpc_id                  = aws_ec2_vpc.cloudhsm_v2_vpc.id
///   cidr_block              = element(subnets, count.index)
///   map_public_ip_on_launch = false
///   availability_zone       = element(data.aws_getavailabilityzones.available.names, count.index)
///   tags = {
///     "Name" = "example-aws_cloudhsm_v2_cluster"
///   }
/// }
/// resource "aws_cloudhsmv2_cluster" "cloudhsm_v2_cluster" {
///   hsm_type   = "hsm1.medium"
///   subnet_ids = aws_ec2_subnet.cloudhsm_v2_subnets[*].id
///   tags = {
///     "Name" = "example-aws_cloudhsm_v2_cluster"
///   }
/// }
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
  /// The mode to use in the cluster. The allowed values are `FIPS` and `NON_FIPS`. This field is required if `hsmType` is `hsm2m.medium`.
  late final pulumi.Output<String> mode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ID of the security group associated with the CloudHSM cluster.
  late final pulumi.Output<String> securityGroupId;
  /// ID of Cloud HSM v2 cluster backup to be restored.
  late final pulumi.Output<String?> sourceBackupIdentifier;
  /// The IDs of subnets in which cluster will operate.
  late final pulumi.Output<List<String>> subnetIds;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    clusterCertificates = registerOutput<List<ClusterClusterCertificate>>('clusterCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterClusterCertificate>(guardedValue, (value) => ClusterClusterCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    clusterId = registerOutput<String>('clusterId');
    clusterState = registerOutput<String>('clusterState');
    hsmType = registerOutput<String>('hsmType');
    mode = registerOutput<String>('mode');
    region = registerOutput<String>('region');
    securityGroupId = registerOutput<String>('securityGroupId');
    sourceBackupIdentifier = registerOutput<String?>('sourceBackupIdentifier');
    subnetIds = registerOutput<List<String>>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [Cluster] resource's state with the given [name] and [id].
  static Cluster get(
    String name,
    pulumi.Input<String> id, {
    ClusterState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Cluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    clusterCertificates = registerOutput<List<ClusterClusterCertificate>>('clusterCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterClusterCertificate>(guardedValue, (value) => ClusterClusterCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    clusterId = registerOutput<String>('clusterId');
    clusterState = registerOutput<String>('clusterState');
    hsmType = registerOutput<String>('hsmType');
    mode = registerOutput<String>('mode');
    region = registerOutput<String>('region');
    securityGroupId = registerOutput<String>('securityGroupId');
    sourceBackupIdentifier = registerOutput<String?>('sourceBackupIdentifier');
    subnetIds = registerOutput<List<String>>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcId = registerOutput<String>('vpcId');
  }

  /// Creates a typed reference to an existing [Cluster] resource.
  Cluster.reference(String urn)
    : super(
        'aws:cloudhsmv2/cluster:Cluster',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    clusterCertificates = registerOutput<List<ClusterClusterCertificate>>('clusterCertificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClusterClusterCertificate>(guardedValue, (value) => ClusterClusterCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    clusterId = registerOutput<String>('clusterId');
    clusterState = registerOutput<String>('clusterState');
    hsmType = registerOutput<String>('hsmType');
    mode = registerOutput<String>('mode');
    region = registerOutput<String>('region');
    securityGroupId = registerOutput<String>('securityGroupId');
    sourceBackupIdentifier = registerOutput<String?>('sourceBackupIdentifier');
    subnetIds = registerOutput<List<String>>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcId = registerOutput<String>('vpcId');
  }
}
