import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_service_args.dart';
import 'route_service_state.dart';

/// Provides a CEN Route Service resource. The virtual border routers (VBRs) and Cloud Connect Network (CCN) instances attached to Cloud Enterprise Network (CEN) instances can access the cloud services deployed in VPCs through the CEN instances.
///
/// For information about CEN Route Service and how to use it, see [What is Route Service](https://www.alibabacloud.com/help/en/cen/developer-reference/api-cbn-2017-09-12-resolveandrouteserviceincen).
///
/// &gt; **NOTE:** Available since v1.99.0.
///
/// &gt; **NOTE:** Ensure that at least one VPC in the selected region is attached to the CEN instance.
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
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const example = new alicloud.vpc.Network("example", {
///     vpcName: "tf_example",
///     cidrBlock: "172.17.3.0/24",
/// });
/// const exampleInstance = new alicloud.cen.Instance("example", {
///     cenInstanceName: "tf_example",
///     description: "an example for cen",
/// });
/// const exampleInstanceAttachment = new alicloud.cen.InstanceAttachment("example", {
///     instanceId: exampleInstance.id,
///     childInstanceId: example.id,
///     childInstanceType: "VPC",
///     childInstanceRegionId: _default.then(_default => _default.regions?.[0]?.id),
/// });
/// const exampleRouteService = new alicloud.cen.RouteService("example", {
///     accessRegionId: _default.then(_default => _default.regions?.[0]?.id),
///     hostRegionId: _default.then(_default => _default.regions?.[0]?.id),
///     hostVpcId: example.id,
///     cenId: exampleInstanceAttachment.instanceId,
///     host: "100.118.28.52/32",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.get_regions(current=True)
/// example = alicloud.vpc.Network("example",
///     vpc_name="tf_example",
///     cidr_block="172.17.3.0/24")
/// example_instance = alicloud.cen.Instance("example",
///     cen_instance_name="tf_example",
///     description="an example for cen")
/// example_instance_attachment = alicloud.cen.InstanceAttachment("example",
///     instance_id=example_instance.id,
///     child_instance_id=example.id,
///     child_instance_type="VPC",
///     child_instance_region_id=default.regions[0].id)
/// example_route_service = alicloud.cen.RouteService("example",
///     access_region_id=default.regions[0].id,
///     host_region_id=default.regions[0].id,
///     host_vpc_id=example.id,
///     cen_id=example_instance_attachment.instance_id,
///     host="100.118.28.52/32")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var example = new AliCloud.Vpc.Network("example", new()
///     {
///         VpcName = "tf_example",
///         CidrBlock = "172.17.3.0/24",
///     });
///
///     var exampleInstance = new AliCloud.Cen.Instance("example", new()
///     {
///         CenInstanceName = "tf_example",
///         Description = "an example for cen",
///     });
///
///     var exampleInstanceAttachment = new AliCloud.Cen.InstanceAttachment("example", new()
///     {
///         InstanceId = exampleInstance.Id,
///         ChildInstanceId = example.Id,
///         ChildInstanceType = "VPC",
///         ChildInstanceRegionId = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
///     });
///
///     var exampleRouteService = new AliCloud.Cen.RouteService("example", new()
///     {
///         AccessRegionId = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
///         HostRegionId = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
///         HostVpcId = example.Id,
///         CenId = exampleInstanceAttachment.InstanceId,
///         Host = "100.118.28.52/32",
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
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("tf_example"),
/// 			CidrBlock: pulumi.String("172.17.3.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInstance, err := cen.NewInstance(ctx, "example", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String("tf_example"),
/// 			Description:     pulumi.String("an example for cen"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInstanceAttachment, err := cen.NewInstanceAttachment(ctx, "example", &cen.InstanceAttachmentArgs{
/// 			InstanceId:            exampleInstance.ID(),
/// 			ChildInstanceId:       example.ID(),
/// 			ChildInstanceType:     pulumi.String("VPC"),
/// 			ChildInstanceRegionId: pulumi.String(_default.Regions[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.NewRouteService(ctx, "example", &cen.RouteServiceArgs{
/// 			AccessRegionId: pulumi.String(_default.Regions[0].Id),
/// 			HostRegionId:   pulumi.String(_default.Regions[0].Id),
/// 			HostVpcId:      example.ID(),
/// 			CenId:          exampleInstanceAttachment.InstanceId,
/// 			Host:           pulumi.String("100.118.28.52/32"),
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
/// import com.pulumi.alicloud.cen.RouteService;
/// import com.pulumi.alicloud.cen.RouteServiceArgs;
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
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var example = new Network("example", NetworkArgs.builder()
///             .vpcName("tf_example")
///             .cidrBlock("172.17.3.0/24")
///             .build());
///
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .cenInstanceName("tf_example")
///             .description("an example for cen")
///             .build());
///
///         var exampleInstanceAttachment = new InstanceAttachment("exampleInstanceAttachment", InstanceAttachmentArgs.builder()
///             .instanceId(exampleInstance.id())
///             .childInstanceId(example.id())
///             .childInstanceType("VPC")
///             .childInstanceRegionId(default_.regions()[0].id())
///             .build());
///
///         var exampleRouteService = new RouteService("exampleRouteService", RouteServiceArgs.builder()
///             .accessRegionId(default_.regions()[0].id())
///             .hostRegionId(default_.regions()[0].id())
///             .hostVpcId(example.id())
///             .cenId(exampleInstanceAttachment.instanceId())
///             .host("100.118.28.52/32")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: tf_example
///       cidrBlock: 172.17.3.0/24
///   exampleInstance:
///     type: alicloud:cen:Instance
///     name: example
///     properties:
///       cenInstanceName: tf_example
///       description: an example for cen
///   exampleInstanceAttachment:
///     type: alicloud:cen:InstanceAttachment
///     name: example
///     properties:
///       instanceId: ${exampleInstance.id}
///       childInstanceId: ${example.id}
///       childInstanceType: VPC
///       childInstanceRegionId: ${default.regions[0].id}
///   exampleRouteService:
///     type: alicloud:cen:RouteService
///     name: example
///     properties:
///       accessRegionId: ${default.regions[0].id}
///       hostRegionId: ${default.regions[0].id}
///       hostVpcId: ${example.id}
///       cenId: ${exampleInstanceAttachment.instanceId}
///       host: 100.118.28.52/32
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
/// CEN Route Service can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/routeService:RouteService example cen-ahixm0efqh********:cn-shanghai:100.118.28.52/32:cn-shanghai
/// ```
class RouteService extends pulumi.CustomResource {
  /// The region of the network instances that access the cloud services.
  late final pulumi.Output<String> accessRegionId;

  /// The ID of the CEN instance.
  late final pulumi.Output<String> cenId;

  /// The description of the cloud service.
  late final pulumi.Output<String?> description;

  /// The domain name or IP address of the cloud service.
  late final pulumi.Output<String> host;

  /// The region of the cloud service.
  late final pulumi.Output<String> hostRegionId;

  /// The VPC associated with the cloud service.
  ///
  /// &gt; **NOTE:** The values of `host_region_id` and `access_region_id` must be consistent.
  late final pulumi.Output<String> hostVpcId;

  /// The status of the cloud service.
  late final pulumi.Output<String> status;

  /// Creates a new [RouteService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouteService]. {@macro pulumi_cen_route_service_route_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouteService(
    String name, {
    RouteServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cen/routeService:RouteService',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessRegionId = registerOutput<String>('accessRegionId');
    cenId = registerOutput<String>('cenId');
    description = registerOutput<String?>('description');
    host = registerOutput<String>('host');
    hostRegionId = registerOutput<String>('hostRegionId');
    hostVpcId = registerOutput<String>('hostVpcId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [RouteService] resource's state with the given [name] and [id].
  static RouteService get(
    String name,
    pulumi.Input<String> id, {
    RouteServiceState? state,
  }) {
    return RouteService._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouteService._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cen/routeService:RouteService',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessRegionId = registerOutput<String>('accessRegionId');
    cenId = registerOutput<String>('cenId');
    description = registerOutput<String?>('description');
    host = registerOutput<String>('host');
    hostRegionId = registerOutput<String>('hostRegionId');
    hostVpcId = registerOutput<String>('hostVpcId');
    status = registerOutput<String>('status');
  }
}
