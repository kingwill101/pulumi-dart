import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_zone_args.dart';

/// Provides a Cloud Enterprise Network (CEN) Private Zone resource.
///
/// For information about Cloud Enterprise Network (CEN) Private Zone and how to use it, see [What is Private Zone](https://www.alibabacloud.com/help/en/cloud-enterprise-network/latest/api-cbn-2017-09-12-routeprivatezoneincentovpc).
///
/// > **NOTE:** Available since v1.83.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.17.3.0/24",
/// });
/// const defaultInstance = new alicloud.cen.Instance("default", {
///     cenInstanceName: name,
///     description: name,
/// });
/// const defaultInstanceAttachment = new alicloud.cen.InstanceAttachment("default", {
///     instanceId: defaultInstance.id,
///     childInstanceId: defaultNetwork.id,
///     childInstanceType: "VPC",
///     childInstanceRegionId: _default.then(_default => _default.regions?.[0]?.id),
/// });
/// const defaultPrivateZone = new alicloud.cen.PrivateZone("default", {
///     cenId: defaultInstanceAttachment.instanceId,
///     accessRegionId: _default.then(_default => _default.regions?.[0]?.id),
///     hostVpcId: defaultNetwork.id,
///     hostRegionId: _default.then(_default => _default.regions?.[0]?.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.get_regions(current=True)
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.17.3.0/24")
/// default_instance = alicloud.cen.Instance("default",
///     cen_instance_name=name,
///     description=name)
/// default_instance_attachment = alicloud.cen.InstanceAttachment("default",
///     instance_id=default_instance.id,
///     child_instance_id=default_network.id,
///     child_instance_type="VPC",
///     child_instance_region_id=default.regions[0].id)
/// default_private_zone = alicloud.cen.PrivateZone("default",
///     cen_id=default_instance_attachment.instance_id,
///     access_region_id=default.regions[0].id,
///     host_vpc_id=default_network.id,
///     host_region_id=default.regions[0].id)
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.17.3.0/24",
///     });
///
///     var defaultInstance = new AliCloud.Cen.Instance("default", new()
///     {
///         CenInstanceName = name,
///         Description = name,
///     });
///
///     var defaultInstanceAttachment = new AliCloud.Cen.InstanceAttachment("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         ChildInstanceId = defaultNetwork.Id,
///         ChildInstanceType = "VPC",
///         ChildInstanceRegionId = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
///     });
///
///     var defaultPrivateZone = new AliCloud.Cen.PrivateZone("default", new()
///     {
///         CenId = defaultInstanceAttachment.InstanceId,
///         AccessRegionId = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
///         HostVpcId = defaultNetwork.Id,
///         HostRegionId = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.17.3.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := cen.NewInstance(ctx, "default", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String(name),
/// 			Description:     pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstanceAttachment, err := cen.NewInstanceAttachment(ctx, "default", &cen.InstanceAttachmentArgs{
/// 			InstanceId:            defaultInstance.ID(),
/// 			ChildInstanceId:       defaultNetwork.ID(),
/// 			ChildInstanceType:     pulumi.String("VPC"),
/// 			ChildInstanceRegionId: pulumi.String(_default.Regions[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.NewPrivateZone(ctx, "default", &cen.PrivateZoneArgs{
/// 			CenId:          defaultInstanceAttachment.InstanceId,
/// 			AccessRegionId: pulumi.String(_default.Regions[0].Id),
/// 			HostVpcId:      defaultNetwork.ID(),
/// 			HostRegionId:   pulumi.String(_default.Regions[0].Id),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.cen.InstanceAttachment;
/// import com.pulumi.alicloud.cen.InstanceAttachmentArgs;
/// import com.pulumi.alicloud.cen.PrivateZone;
/// import com.pulumi.alicloud.cen.PrivateZoneArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.17.3.0/24")
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .description(name)
///             .build());
///
///         var defaultInstanceAttachment = new InstanceAttachment("defaultInstanceAttachment", InstanceAttachmentArgs.builder()
///             .instanceId(defaultInstance.id())
///             .childInstanceId(defaultNetwork.id())
///             .childInstanceType("VPC")
///             .childInstanceRegionId(default_.regions()[0].id())
///             .build());
///
///         var defaultPrivateZone = new PrivateZone("defaultPrivateZone", PrivateZoneArgs.builder()
///             .cenId(defaultInstanceAttachment.instanceId())
///             .accessRegionId(default_.regions()[0].id())
///             .hostVpcId(defaultNetwork.id())
///             .hostRegionId(default_.regions()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 172.17.3.0/24
///   defaultInstance:
///     type: alicloud:cen:Instance
///     name: default
///     properties:
///       cenInstanceName: ${name}
///       description: ${name}
///   defaultInstanceAttachment:
///     type: alicloud:cen:InstanceAttachment
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       childInstanceId: ${defaultNetwork.id}
///       childInstanceType: VPC
///       childInstanceRegionId: ${default.regions[0].id}
///   defaultPrivateZone:
///     type: alicloud:cen:PrivateZone
///     name: default
///     properties:
///       cenId: ${defaultInstanceAttachment.instanceId}
///       accessRegionId: ${default.regions[0].id}
///       hostVpcId: ${defaultNetwork.id}
///       hostRegionId: ${default.regions[0].id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Enterprise Network (CEN) Private Zone can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/privateZone:PrivateZone example <cen_id>:<access_region_id>
/// ```
class PrivateZone extends pulumi.CustomResource {
  /// The ID of the region where PrivateZone is accessed. This region refers to the region in which PrivateZone is accessed by clients.
  late final pulumi.Output<String> accessRegionId;
  /// The ID of the CEN instance.
  late final pulumi.Output<String> cenId;
  /// The ID of the region where PrivateZone is deployed.
  ///
  /// ->**NOTE:** The resource `alicloud.cen.PrivateZone` depends on the resource `alicloud.cen.InstanceAttachment`.
  late final pulumi.Output<String> hostRegionId;
  /// The ID of the VPC that is associated with PrivateZone.
  late final pulumi.Output<String> hostVpcId;
  /// The status of the Private Zone.
  late final pulumi.Output<String> status;

  /// Creates a new [PrivateZone].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateZone]. {@macro pulumi_cen_private_zone_private_zone_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateZone(
    String name, {
    PrivateZoneArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/privateZone:PrivateZone',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessRegionId = registerOutput<String>('accessRegionId');
    this.cenId = registerOutput<String>('cenId');
    this.hostRegionId = registerOutput<String>('hostRegionId');
    this.hostVpcId = registerOutput<String>('hostVpcId');
    this.status = registerOutput<String>('status');
  }
}
