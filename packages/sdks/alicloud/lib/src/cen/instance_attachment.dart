import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_attachment_args.dart';
import 'instance_attachment_state.dart';

/// Provides a CEN child instance attachment resource that associate the network(VPC, CCN, VBR) with the CEN instance.
///
/// &gt; **NOTE:** Available since v1.42.0.
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
/// 		_, err = cen.NewInstanceAttachment(ctx, "example", &cen.InstanceAttachmentArgs{
/// 			InstanceId:            exampleInstance.ID(),
/// 			ChildInstanceId:       example.ID(),
/// 			ChildInstanceType:     pulumi.String("VPC"),
/// 			ChildInstanceRegionId: pulumi.String(_default.Regions[0].Id),
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
/// CEN instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/instanceAttachment:InstanceAttachment example cen-m7i7pjmkon********:vpc-2ze2w07mcy9nz********:VPC:cn-beijing
/// ```
class InstanceAttachment extends pulumi.CustomResource {
  /// The account ID to which the CEN instance belongs.
  ///
  /// -&gt;**NOTE:** Ensure that the child instance is not used in Express Connect.
  late final pulumi.Output<int?> cenOwnerId;

  /// The ID of the child instance to attach.
  late final pulumi.Output<String> childInstanceId;

  /// The uid of the child instance. Only used when attach a child instance of other account.
  late final pulumi.Output<int> childInstanceOwnerId;

  /// The region ID of the child instance to attach.
  late final pulumi.Output<String> childInstanceRegionId;

  /// The type of the associated network. Valid values: `VPC`, `VBR` and `CCN`.
  late final pulumi.Output<String> childInstanceType;

  /// The ID of the CEN.
  late final pulumi.Output<String> instanceId;

  /// The associating status of the network.
  late final pulumi.Output<String> status;

  /// Creates a new [InstanceAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceAttachment]. {@macro pulumi_cen_instance_attachment_instance_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceAttachment(
    String name, {
    InstanceAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cen/instanceAttachment:InstanceAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cenOwnerId = registerOutput<int?>('cenOwnerId');
    childInstanceId = registerOutput<String>('childInstanceId');
    childInstanceOwnerId = registerOutput<int>('childInstanceOwnerId');
    childInstanceRegionId = registerOutput<String>('childInstanceRegionId');
    childInstanceType = registerOutput<String>('childInstanceType');
    instanceId = registerOutput<String>('instanceId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [InstanceAttachment] resource's state with the given [name] and [id].
  static InstanceAttachment get(
    String name,
    pulumi.Input<String> id, {
    InstanceAttachmentState? state,
  }) {
    return InstanceAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InstanceAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cen/instanceAttachment:InstanceAttachment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    cenOwnerId = registerOutput<int?>('cenOwnerId');
    childInstanceId = registerOutput<String>('childInstanceId');
    childInstanceOwnerId = registerOutput<int>('childInstanceOwnerId');
    childInstanceRegionId = registerOutput<String>('childInstanceRegionId');
    childInstanceType = registerOutput<String>('childInstanceType');
    instanceId = registerOutput<String>('instanceId');
    status = registerOutput<String>('status');
  }
}
