import 'package:pulumi/pulumi.dart' as pulumi;
import 'bandwidth_limit_args.dart';

/// Provides a CEN cross-regional interconnection bandwidth resource. To connect networks in different regions, you must set cross-region interconnection bandwidth after buying a bandwidth package. The total bandwidth set for all the interconnected regions of a bandwidth package cannot exceed the bandwidth of the bandwidth package. By default, 1 Kbps bandwidth is provided for connectivity test. To run normal business, you must buy a bandwidth package and set a proper interconnection bandwidth.
///
/// For example, a CEN instance is bound to a bandwidth package of 20 Mbps and  the interconnection areas are Mainland China and North America. You can set the cross-region interconnection bandwidth between US West 1 and China East 1, China East 2, China South 1, and so on. However, the total bandwidth set for all the interconnected regions cannot exceed 20  Mbps.
///
/// For information about CEN and how to use it, see [Cross-region interconnection bandwidth](https://www.alibabacloud.com/help/doc-detail/65983.htm)
///
/// > **NOTE:** Available since v1.18.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const region1 = config.get("region1") || "eu-central-1";
/// const region2 = config.get("region2") || "ap-southeast-1";
/// const vpc1 = new alicloud.vpc.Network("vpc1", {
///     vpcName: "tf-example",
///     cidrBlock: "192.168.0.0/16",
/// });
/// const vpc2 = new alicloud.vpc.Network("vpc2", {
///     vpcName: "tf-example",
///     cidrBlock: "172.16.0.0/12",
/// });
/// const example = new alicloud.cen.Instance("example", {
///     cenInstanceName: "tf_example",
///     description: "an example for cen",
/// });
/// const example1 = new alicloud.cen.InstanceAttachment("example1", {
///     instanceId: example.id,
///     childInstanceId: vpc1.id,
///     childInstanceType: "VPC",
///     childInstanceRegionId: region1,
/// });
/// const example2 = new alicloud.cen.InstanceAttachment("example2", {
///     instanceId: example.id,
///     childInstanceId: vpc2.id,
///     childInstanceType: "VPC",
///     childInstanceRegionId: region2,
/// });
/// const exampleBandwidthPackage = new alicloud.cen.BandwidthPackage("example", {
///     bandwidth: 5,
///     cenBandwidthPackageName: "tf_example",
///     geographicRegionAId: "Europe",
///     geographicRegionBId: "Asia-Pacific",
/// });
/// const exampleBandwidthPackageAttachment = new alicloud.cen.BandwidthPackageAttachment("example", {
///     instanceId: example.id,
///     bandwidthPackageId: exampleBandwidthPackage.id,
/// });
/// const exampleBandwidthLimit = new alicloud.cen.BandwidthLimit("example", {
///     instanceId: exampleBandwidthPackageAttachment.instanceId,
///     regionIds: [
///         example1.childInstanceRegionId,
///         example2.childInstanceRegionId,
///     ],
///     bandwidthLimit: 4,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// region1 = config.get("region1")
/// if region1 is None:
///     region1 = "eu-central-1"
/// region2 = config.get("region2")
/// if region2 is None:
///     region2 = "ap-southeast-1"
/// vpc1 = alicloud.vpc.Network("vpc1",
///     vpc_name="tf-example",
///     cidr_block="192.168.0.0/16")
/// vpc2 = alicloud.vpc.Network("vpc2",
///     vpc_name="tf-example",
///     cidr_block="172.16.0.0/12")
/// example = alicloud.cen.Instance("example",
///     cen_instance_name="tf_example",
///     description="an example for cen")
/// example1 = alicloud.cen.InstanceAttachment("example1",
///     instance_id=example.id,
///     child_instance_id=vpc1.id,
///     child_instance_type="VPC",
///     child_instance_region_id=region1)
/// example2 = alicloud.cen.InstanceAttachment("example2",
///     instance_id=example.id,
///     child_instance_id=vpc2.id,
///     child_instance_type="VPC",
///     child_instance_region_id=region2)
/// example_bandwidth_package = alicloud.cen.BandwidthPackage("example",
///     bandwidth=5,
///     cen_bandwidth_package_name="tf_example",
///     geographic_region_a_id="Europe",
///     geographic_region_b_id="Asia-Pacific")
/// example_bandwidth_package_attachment = alicloud.cen.BandwidthPackageAttachment("example",
///     instance_id=example.id,
///     bandwidth_package_id=example_bandwidth_package.id)
/// example_bandwidth_limit = alicloud.cen.BandwidthLimit("example",
///     instance_id=example_bandwidth_package_attachment.instance_id,
///     region_ids=[
///         example1.child_instance_region_id,
///         example2.child_instance_region_id,
///     ],
///     bandwidth_limit=4)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var region1 = config.Get("region1") ?? "eu-central-1";
///     var region2 = config.Get("region2") ?? "ap-southeast-1";
///     var vpc1 = new AliCloud.Vpc.Network("vpc1", new()
///     {
///         VpcName = "tf-example",
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var vpc2 = new AliCloud.Vpc.Network("vpc2", new()
///     {
///         VpcName = "tf-example",
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var example = new AliCloud.Cen.Instance("example", new()
///     {
///         CenInstanceName = "tf_example",
///         Description = "an example for cen",
///     });
///
///     var example1 = new AliCloud.Cen.InstanceAttachment("example1", new()
///     {
///         InstanceId = example.Id,
///         ChildInstanceId = vpc1.Id,
///         ChildInstanceType = "VPC",
///         ChildInstanceRegionId = region1,
///     });
///
///     var example2 = new AliCloud.Cen.InstanceAttachment("example2", new()
///     {
///         InstanceId = example.Id,
///         ChildInstanceId = vpc2.Id,
///         ChildInstanceType = "VPC",
///         ChildInstanceRegionId = region2,
///     });
///
///     var exampleBandwidthPackage = new AliCloud.Cen.BandwidthPackage("example", new()
///     {
///         Bandwidth = 5,
///         CenBandwidthPackageName = "tf_example",
///         GeographicRegionAId = "Europe",
///         GeographicRegionBId = "Asia-Pacific",
///     });
///
///     var exampleBandwidthPackageAttachment = new AliCloud.Cen.BandwidthPackageAttachment("example", new()
///     {
///         InstanceId = example.Id,
///         BandwidthPackageId = exampleBandwidthPackage.Id,
///     });
///
///     var exampleBandwidthLimit = new AliCloud.Cen.BandwidthLimit("example", new()
///     {
///         InstanceId = exampleBandwidthPackageAttachment.InstanceId,
///         RegionIds = new[]
///         {
///             example1.ChildInstanceRegionId,
///             example2.ChildInstanceRegionId,
///         },
///         Limit = 4,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		region1 := "eu-central-1"
/// 		if param := cfg.Get("region1"); param != "" {
/// 			region1 = param
/// 		}
/// 		region2 := "ap-southeast-1"
/// 		if param := cfg.Get("region2"); param != "" {
/// 			region2 = param
/// 		}
/// 		vpc1, err := vpc.NewNetwork(ctx, "vpc1", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("tf-example"),
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpc2, err := vpc.NewNetwork(ctx, "vpc2", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("tf-example"),
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := cen.NewInstance(ctx, "example", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String("tf_example"),
/// 			Description:     pulumi.String("an example for cen"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example1, err := cen.NewInstanceAttachment(ctx, "example1", &cen.InstanceAttachmentArgs{
/// 			InstanceId:            example.ID(),
/// 			ChildInstanceId:       vpc1.ID(),
/// 			ChildInstanceType:     pulumi.String("VPC"),
/// 			ChildInstanceRegionId: pulumi.String(region1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example2, err := cen.NewInstanceAttachment(ctx, "example2", &cen.InstanceAttachmentArgs{
/// 			InstanceId:            example.ID(),
/// 			ChildInstanceId:       vpc2.ID(),
/// 			ChildInstanceType:     pulumi.String("VPC"),
/// 			ChildInstanceRegionId: pulumi.String(region2),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBandwidthPackage, err := cen.NewBandwidthPackage(ctx, "example", &cen.BandwidthPackageArgs{
/// 			Bandwidth:               pulumi.Int(5),
/// 			CenBandwidthPackageName: pulumi.String("tf_example"),
/// 			GeographicRegionAId:     pulumi.String("Europe"),
/// 			GeographicRegionBId:     pulumi.String("Asia-Pacific"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBandwidthPackageAttachment, err := cen.NewBandwidthPackageAttachment(ctx, "example", &cen.BandwidthPackageAttachmentArgs{
/// 			InstanceId:         example.ID(),
/// 			BandwidthPackageId: exampleBandwidthPackage.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.NewBandwidthLimit(ctx, "example", &cen.BandwidthLimitArgs{
/// 			InstanceId: exampleBandwidthPackageAttachment.InstanceId,
/// 			RegionIds: pulumi.StringArray{
/// 				example1.ChildInstanceRegionId,
/// 				example2.ChildInstanceRegionId,
/// 			},
/// 			BandwidthLimit: pulumi.Int(4),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.cen.InstanceAttachment;
/// import com.pulumi.alicloud.cen.InstanceAttachmentArgs;
/// import com.pulumi.alicloud.cen.BandwidthPackage;
/// import com.pulumi.alicloud.cen.BandwidthPackageArgs;
/// import com.pulumi.alicloud.cen.BandwidthPackageAttachment;
/// import com.pulumi.alicloud.cen.BandwidthPackageAttachmentArgs;
/// import com.pulumi.alicloud.cen.BandwidthLimit;
/// import com.pulumi.alicloud.cen.BandwidthLimitArgs;
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
///         final var config = ctx.config();
///         final var region1 = config.get("region1").orElse("eu-central-1");
///         final var region2 = config.get("region2").orElse("ap-southeast-1");
///         var vpc1 = new Network("vpc1", NetworkArgs.builder()
///             .vpcName("tf-example")
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var vpc2 = new Network("vpc2", NetworkArgs.builder()
///             .vpcName("tf-example")
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var example = new Instance("example", InstanceArgs.builder()
///             .cenInstanceName("tf_example")
///             .description("an example for cen")
///             .build());
///
///         var example1 = new InstanceAttachment("example1", InstanceAttachmentArgs.builder()
///             .instanceId(example.id())
///             .childInstanceId(vpc1.id())
///             .childInstanceType("VPC")
///             .childInstanceRegionId(region1)
///             .build());
///
///         var example2 = new InstanceAttachment("example2", InstanceAttachmentArgs.builder()
///             .instanceId(example.id())
///             .childInstanceId(vpc2.id())
///             .childInstanceType("VPC")
///             .childInstanceRegionId(region2)
///             .build());
///
///         var exampleBandwidthPackage = new BandwidthPackage("exampleBandwidthPackage", BandwidthPackageArgs.builder()
///             .bandwidth(5)
///             .cenBandwidthPackageName("tf_example")
///             .geographicRegionAId("Europe")
///             .geographicRegionBId("Asia-Pacific")
///             .build());
///
///         var exampleBandwidthPackageAttachment = new BandwidthPackageAttachment("exampleBandwidthPackageAttachment", BandwidthPackageAttachmentArgs.builder()
///             .instanceId(example.id())
///             .bandwidthPackageId(exampleBandwidthPackage.id())
///             .build());
///
///         var exampleBandwidthLimit = new BandwidthLimit("exampleBandwidthLimit", BandwidthLimitArgs.builder()
///             .instanceId(exampleBandwidthPackageAttachment.instanceId())
///             .regionIds(
///                 example1.childInstanceRegionId(),
///                 example2.childInstanceRegionId())
///             .bandwidthLimit(4)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   region1:
///     type: string
///     default: eu-central-1
///   region2:
///     type: string
///     default: ap-southeast-1
/// resources:
///   vpc1:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: tf-example
///       cidrBlock: 192.168.0.0/16
///   vpc2:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: tf-example
///       cidrBlock: 172.16.0.0/12
///   example:
///     type: alicloud:cen:Instance
///     properties:
///       cenInstanceName: tf_example
///       description: an example for cen
///   example1:
///     type: alicloud:cen:InstanceAttachment
///     properties:
///       instanceId: ${example.id}
///       childInstanceId: ${vpc1.id}
///       childInstanceType: VPC
///       childInstanceRegionId: ${region1}
///   example2:
///     type: alicloud:cen:InstanceAttachment
///     properties:
///       instanceId: ${example.id}
///       childInstanceId: ${vpc2.id}
///       childInstanceType: VPC
///       childInstanceRegionId: ${region2}
///   exampleBandwidthPackage:
///     type: alicloud:cen:BandwidthPackage
///     name: example
///     properties:
///       bandwidth: 5
///       cenBandwidthPackageName: tf_example
///       geographicRegionAId: Europe
///       geographicRegionBId: Asia-Pacific
///   exampleBandwidthPackageAttachment:
///     type: alicloud:cen:BandwidthPackageAttachment
///     name: example
///     properties:
///       instanceId: ${example.id}
///       bandwidthPackageId: ${exampleBandwidthPackage.id}
///   exampleBandwidthLimit:
///     type: alicloud:cen:BandwidthLimit
///     name: example
///     properties:
///       instanceId: ${exampleBandwidthPackageAttachment.instanceId}
///       regionIds:
///         - ${example1.childInstanceRegionId}
///         - ${example2.childInstanceRegionId}
///       bandwidthLimit: 4
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// CEN bandwidth limit can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/bandwidthLimit:BandwidthLimit example cen-abc123456:cn-beijing:eu-west-1
/// ```
class BandwidthLimit extends pulumi.CustomResource {
  /// The bandwidth configured for the interconnected regions communication.
  ///
  /// ->**NOTE:** The `alicloud.cen.BandwidthLimit` resource depends on the related "alicloud.cen.BandwidthPackageAttachment" resource and "alicloud.cen.InstanceAttachment" resource.
  late final pulumi.Output<int> bandwidthLimit;
  /// The ID of the CEN.
  late final pulumi.Output<String> instanceId;
  /// List of the two regions to interconnect. Must be two different regions.
  late final pulumi.Output<List<String>> regionIds;

  /// Creates a new [BandwidthLimit].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BandwidthLimit]. {@macro pulumi_cen_bandwidth_limit_bandwidth_limit_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BandwidthLimit(
    String name, {
    BandwidthLimitArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/bandwidthLimit:BandwidthLimit',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bandwidthLimit = registerOutput<int>('bandwidthLimit');
    this.instanceId = registerOutput<String>('instanceId');
    this.regionIds = registerOutput<List<String>>('regionIds');
  }
}
