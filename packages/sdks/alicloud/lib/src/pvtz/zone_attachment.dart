import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_attachment_args.dart';
import 'zone_attachment_state.dart';
import 'zone_attachment_vpc.dart';

/// ## Example Usage
///
/// Using `vpc_ids` to attach being in same region several vpc instances to a private zone
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const zone = new alicloud.pvtz.Zone("zone", {zoneName: "foo.example.com"});
/// const first = new alicloud.vpc.Network("first", {
///     vpcName: "the-first-vpc",
///     cidrBlock: "172.16.0.0/12",
/// });
/// const second = new alicloud.vpc.Network("second", {
///     vpcName: "the-second-vpc",
///     cidrBlock: "172.16.0.0/16",
/// });
/// const zone_attachment = new alicloud.pvtz.ZoneAttachment("zone-attachment", {
///     zoneId: zone.id,
///     vpcIds: [
///         first.id,
///         second.id,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// zone = alicloud.pvtz.Zone("zone", zone_name="foo.example.com")
/// first = alicloud.vpc.Network("first",
///     vpc_name="the-first-vpc",
///     cidr_block="172.16.0.0/12")
/// second = alicloud.vpc.Network("second",
///     vpc_name="the-second-vpc",
///     cidr_block="172.16.0.0/16")
/// zone_attachment = alicloud.pvtz.ZoneAttachment("zone-attachment",
///     zone_id=zone.id,
///     vpc_ids=[
///         first.id,
///         second.id,
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var zone = new AliCloud.Pvtz.Zone("zone", new()
///     {
///         ZoneName = "foo.example.com",
///     });
///
///     var first = new AliCloud.Vpc.Network("first", new()
///     {
///         VpcName = "the-first-vpc",
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var second = new AliCloud.Vpc.Network("second", new()
///     {
///         VpcName = "the-second-vpc",
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var zone_attachment = new AliCloud.Pvtz.ZoneAttachment("zone-attachment", new()
///     {
///         ZoneId = zone.Id,
///         VpcIds = new[]
///         {
///             first.Id,
///             second.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/pvtz"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		zone, err := pvtz.NewZone(ctx, "zone", &pvtz.ZoneArgs{
/// 			ZoneName: pulumi.String("foo.example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		first, err := vpc.NewNetwork(ctx, "first", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("the-first-vpc"),
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		second, err := vpc.NewNetwork(ctx, "second", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("the-second-vpc"),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pvtz.NewZoneAttachment(ctx, "zone-attachment", &pvtz.ZoneAttachmentArgs{
/// 			ZoneId: zone.ID(),
/// 			VpcIds: pulumi.StringArray{
/// 				first.ID(),
/// 				second.ID(),
/// 			},
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
/// import com.pulumi.alicloud.pvtz.Zone;
/// import com.pulumi.alicloud.pvtz.ZoneArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.pvtz.ZoneAttachment;
/// import com.pulumi.alicloud.pvtz.ZoneAttachmentArgs;
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
///         var zone = new Zone("zone", ZoneArgs.builder()
///             .zoneName("foo.example.com")
///             .build());
///
///         var first = new Network("first", NetworkArgs.builder()
///             .vpcName("the-first-vpc")
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var second = new Network("second", NetworkArgs.builder()
///             .vpcName("the-second-vpc")
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var zone_attachment = new ZoneAttachment("zone-attachment", ZoneAttachmentArgs.builder()
///             .zoneId(zone.id())
///             .vpcIds(
///                 first.id(),
///                 second.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   zone:
///     type: alicloud:pvtz:Zone
///     properties:
///       zoneName: foo.example.com
///   first:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: the-first-vpc
///       cidrBlock: 172.16.0.0/12
///   second:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: the-second-vpc
///       cidrBlock: 172.16.0.0/16
///   zone-attachment:
///     type: alicloud:pvtz:ZoneAttachment
///     properties:
///       zoneId: ${zone.id}
///       vpcIds:
///         - ${first.id}
///         - ${second.id}
/// ```
///
///
/// Using `vpcs` to attach being in same region several vpc instances to a private zone
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const zone = new alicloud.pvtz.Zone("zone", {zoneName: "foo.example.com"});
/// const first = new alicloud.vpc.Network("first", {
///     vpcName: "the-first-vpc",
///     cidrBlock: "172.16.0.0/12",
/// });
/// const second = new alicloud.vpc.Network("second", {
///     vpcName: "the-second-vpc",
///     cidrBlock: "172.16.0.0/16",
/// });
/// const zone_attachment = new alicloud.pvtz.ZoneAttachment("zone-attachment", {
///     zoneId: zone.id,
///     vpcs: [
///         {
///             vpcId: first.id,
///         },
///         {
///             vpcId: second.id,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// zone = alicloud.pvtz.Zone("zone", zone_name="foo.example.com")
/// first = alicloud.vpc.Network("first",
///     vpc_name="the-first-vpc",
///     cidr_block="172.16.0.0/12")
/// second = alicloud.vpc.Network("second",
///     vpc_name="the-second-vpc",
///     cidr_block="172.16.0.0/16")
/// zone_attachment = alicloud.pvtz.ZoneAttachment("zone-attachment",
///     zone_id=zone.id,
///     vpcs=[
///         {
///             "vpc_id": first.id,
///         },
///         {
///             "vpc_id": second.id,
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var zone = new AliCloud.Pvtz.Zone("zone", new()
///     {
///         ZoneName = "foo.example.com",
///     });
///
///     var first = new AliCloud.Vpc.Network("first", new()
///     {
///         VpcName = "the-first-vpc",
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var second = new AliCloud.Vpc.Network("second", new()
///     {
///         VpcName = "the-second-vpc",
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var zone_attachment = new AliCloud.Pvtz.ZoneAttachment("zone-attachment", new()
///     {
///         ZoneId = zone.Id,
///         Vpcs = new[]
///         {
///             new AliCloud.Pvtz.Inputs.ZoneAttachmentVpcArgs
///             {
///                 VpcId = first.Id,
///             },
///             new AliCloud.Pvtz.Inputs.ZoneAttachmentVpcArgs
///             {
///                 VpcId = second.Id,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/pvtz"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		zone, err := pvtz.NewZone(ctx, "zone", &pvtz.ZoneArgs{
/// 			ZoneName: pulumi.String("foo.example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		first, err := vpc.NewNetwork(ctx, "first", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("the-first-vpc"),
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		second, err := vpc.NewNetwork(ctx, "second", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("the-second-vpc"),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pvtz.NewZoneAttachment(ctx, "zone-attachment", &pvtz.ZoneAttachmentArgs{
/// 			ZoneId: zone.ID(),
/// 			Vpcs: pvtz.ZoneAttachmentVpcArray{
/// 				&pvtz.ZoneAttachmentVpcArgs{
/// 					VpcId: first.ID(),
/// 				},
/// 				&pvtz.ZoneAttachmentVpcArgs{
/// 					VpcId: second.ID(),
/// 				},
/// 			},
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
/// import com.pulumi.alicloud.pvtz.Zone;
/// import com.pulumi.alicloud.pvtz.ZoneArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.pvtz.ZoneAttachment;
/// import com.pulumi.alicloud.pvtz.ZoneAttachmentArgs;
/// import com.pulumi.alicloud.pvtz.inputs.ZoneAttachmentVpcArgs;
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
///         var zone = new Zone("zone", ZoneArgs.builder()
///             .zoneName("foo.example.com")
///             .build());
///
///         var first = new Network("first", NetworkArgs.builder()
///             .vpcName("the-first-vpc")
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var second = new Network("second", NetworkArgs.builder()
///             .vpcName("the-second-vpc")
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var zone_attachment = new ZoneAttachment("zone-attachment", ZoneAttachmentArgs.builder()
///             .zoneId(zone.id())
///             .vpcs(
///                 ZoneAttachmentVpcArgs.builder()
///                     .vpcId(first.id())
///                     .build(),
///                 ZoneAttachmentVpcArgs.builder()
///                     .vpcId(second.id())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   zone:
///     type: alicloud:pvtz:Zone
///     properties:
///       zoneName: foo.example.com
///   first:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: the-first-vpc
///       cidrBlock: 172.16.0.0/12
///   second:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: the-second-vpc
///       cidrBlock: 172.16.0.0/16
///   zone-attachment:
///     type: alicloud:pvtz:ZoneAttachment
///     properties:
///       zoneId: ${zone.id}
///       vpcs:
///         - vpcId: ${first.id}
///         - vpcId: ${second.id}
/// ```
///
///
/// Using `vpcs` to attach being in different regions several vpc instances to a private zone
///
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const zone = new alicloud.pvtz.Zone("zone", {zoneName: "foo.example.com"});
/// const first = new alicloud.vpc.Network("first", {
///     vpcName: "the-first-vpc",
///     cidrBlock: "172.16.0.0/12",
/// });
/// const second = new alicloud.vpc.Network("second", {
///     vpcName: "the-second-vpc",
///     cidrBlock: "172.16.0.0/16",
/// });
/// const third = new alicloud.vpc.Network("third", {
///     vpcName: "the-third-vpc",
///     cidrBlock: "172.16.0.0/16",
/// });
/// const zone_attachment = new alicloud.pvtz.ZoneAttachment("zone-attachment", {
///     zoneId: zone.id,
///     vpcs: [
///         {
///             vpcId: first.id,
///         },
///         {
///             vpcId: second.id,
///         },
///         {
///             regionId: "eu-central-1",
///             vpcId: third.id,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// zone = alicloud.pvtz.Zone("zone", zone_name="foo.example.com")
/// first = alicloud.vpc.Network("first",
///     vpc_name="the-first-vpc",
///     cidr_block="172.16.0.0/12")
/// second = alicloud.vpc.Network("second",
///     vpc_name="the-second-vpc",
///     cidr_block="172.16.0.0/16")
/// third = alicloud.vpc.Network("third",
///     vpc_name="the-third-vpc",
///     cidr_block="172.16.0.0/16")
/// zone_attachment = alicloud.pvtz.ZoneAttachment("zone-attachment",
///     zone_id=zone.id,
///     vpcs=[
///         {
///             "vpc_id": first.id,
///         },
///         {
///             "vpc_id": second.id,
///         },
///         {
///             "region_id": "eu-central-1",
///             "vpc_id": third.id,
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var zone = new AliCloud.Pvtz.Zone("zone", new()
///     {
///         ZoneName = "foo.example.com",
///     });
///
///     var first = new AliCloud.Vpc.Network("first", new()
///     {
///         VpcName = "the-first-vpc",
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var second = new AliCloud.Vpc.Network("second", new()
///     {
///         VpcName = "the-second-vpc",
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var third = new AliCloud.Vpc.Network("third", new()
///     {
///         VpcName = "the-third-vpc",
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var zone_attachment = new AliCloud.Pvtz.ZoneAttachment("zone-attachment", new()
///     {
///         ZoneId = zone.Id,
///         Vpcs = new[]
///         {
///             new AliCloud.Pvtz.Inputs.ZoneAttachmentVpcArgs
///             {
///                 VpcId = first.Id,
///             },
///             new AliCloud.Pvtz.Inputs.ZoneAttachmentVpcArgs
///             {
///                 VpcId = second.Id,
///             },
///             new AliCloud.Pvtz.Inputs.ZoneAttachmentVpcArgs
///             {
///                 RegionId = "eu-central-1",
///                 VpcId = third.Id,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/pvtz"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		zone, err := pvtz.NewZone(ctx, "zone", &pvtz.ZoneArgs{
/// 			ZoneName: pulumi.String("foo.example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		first, err := vpc.NewNetwork(ctx, "first", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("the-first-vpc"),
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		second, err := vpc.NewNetwork(ctx, "second", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("the-second-vpc"),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		third, err := vpc.NewNetwork(ctx, "third", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("the-third-vpc"),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pvtz.NewZoneAttachment(ctx, "zone-attachment", &pvtz.ZoneAttachmentArgs{
/// 			ZoneId: zone.ID(),
/// 			Vpcs: pvtz.ZoneAttachmentVpcArray{
/// 				&pvtz.ZoneAttachmentVpcArgs{
/// 					VpcId: first.ID(),
/// 				},
/// 				&pvtz.ZoneAttachmentVpcArgs{
/// 					VpcId: second.ID(),
/// 				},
/// 				&pvtz.ZoneAttachmentVpcArgs{
/// 					RegionId: pulumi.String("eu-central-1"),
/// 					VpcId:    third.ID(),
/// 				},
/// 			},
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
/// import com.pulumi.alicloud.pvtz.Zone;
/// import com.pulumi.alicloud.pvtz.ZoneArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.pvtz.ZoneAttachment;
/// import com.pulumi.alicloud.pvtz.ZoneAttachmentArgs;
/// import com.pulumi.alicloud.pvtz.inputs.ZoneAttachmentVpcArgs;
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
///         var zone = new Zone("zone", ZoneArgs.builder()
///             .zoneName("foo.example.com")
///             .build());
///
///         var first = new Network("first", NetworkArgs.builder()
///             .vpcName("the-first-vpc")
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var second = new Network("second", NetworkArgs.builder()
///             .vpcName("the-second-vpc")
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var third = new Network("third", NetworkArgs.builder()
///             .vpcName("the-third-vpc")
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var zone_attachment = new ZoneAttachment("zone-attachment", ZoneAttachmentArgs.builder()
///             .zoneId(zone.id())
///             .vpcs(
///                 ZoneAttachmentVpcArgs.builder()
///                     .vpcId(first.id())
///                     .build(),
///                 ZoneAttachmentVpcArgs.builder()
///                     .vpcId(second.id())
///                     .build(),
///                 ZoneAttachmentVpcArgs.builder()
///                     .regionId("eu-central-1")
///                     .vpcId(third.id())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   zone:
///     type: alicloud:pvtz:Zone
///     properties:
///       zoneName: foo.example.com
///   first:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: the-first-vpc
///       cidrBlock: 172.16.0.0/12
///   second:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: the-second-vpc
///       cidrBlock: 172.16.0.0/16
///   third:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: the-third-vpc
///       cidrBlock: 172.16.0.0/16
///   zone-attachment:
///     type: alicloud:pvtz:ZoneAttachment
///     properties:
///       zoneId: ${zone.id}
///       vpcs:
///         - vpcId: ${first.id}
///         - vpcId: ${second.id}
///         - regionId: eu-central-1
///           vpcId: ${third.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Private Zone attachment can be imported using the id(same with `zone_id`), e.g.
///
/// ```sh
/// $ pulumi import alicloud:pvtz/zoneAttachment:ZoneAttachment example abc123456
/// ```
class ZoneAttachment extends pulumi.CustomResource {
  /// The language of code.
  late final pulumi.Output<String?> lang;
  /// The user custom IP address.
  late final pulumi.Output<String?> userClientIp;
  /// The id List of the VPC with the same region, for example:["vpc-1","vpc-2"].
  late final pulumi.Output<List<String>> vpcIds;
  /// See `vpcs` below.Recommend to use `vpcs`.
  late final pulumi.Output<List<ZoneAttachmentVpc>> vpcs;
  /// The name of the Private Zone Record.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ZoneAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZoneAttachment]. {@macro pulumi_pvtz_zone_attachment_zone_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZoneAttachment(
    String name, {
    ZoneAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:pvtz/zoneAttachment:ZoneAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.lang = registerOutput<String?>('lang');
    this.userClientIp = registerOutput<String?>('userClientIp');
    this.vpcIds = registerOutput<List<String>>('vpcIds');
    this.vpcs = registerOutput<List<ZoneAttachmentVpc>>('vpcs');
    this.zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ZoneAttachment] resource's state with the given [name] and [id].
  static ZoneAttachment get(
    String name,
    pulumi.Input<String> id, {
    ZoneAttachmentState? state,
  }) {
    return ZoneAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ZoneAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:pvtz/zoneAttachment:ZoneAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.lang = registerOutput<String?>('lang');
    this.userClientIp = registerOutput<String?>('userClientIp');
    this.vpcIds = registerOutput<List<String>>('vpcIds');
    this.vpcs = registerOutput<List<ZoneAttachmentVpc>>('vpcs');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
