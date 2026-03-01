import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_network_acl_attachment_args.dart';
import 'vpc_network_acl_attachment_state.dart';

/// Provides a VPC Network Acl Attachment resource.
///
/// Resources associated with network Acl.
///
/// For information about VPC Network Acl Attachment and how to use it, see [What is Network Acl Attachment](https://www.alibabacloud.com/help/en/virtual-private-cloud/latest/associatenetworkacl).
///
/// > **NOTE:** Available since v1.193.0.
///
/// > **WARNING:** Do not mix the use of this resource with the `resources` field in the `alicloud.vpc.NetworkAcl` resource to bind VSW (Virtual Switch) to the same ACL. Using both methods simultaneously can cause conflicts and result in repeated apply operations that toggle between binding and unbinding VSWs. Choose one method and stick with it to avoid these issues.
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
/// import * as std from "@pulumi/std";
///
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {cidrBlock: "192.168.0.0/16"});
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: defaultNetwork.cidrBlock.apply(cidrBlock => std.cidrsubnetOutput({
///         input: cidrBlock,
///         newbits: 8,
///         netnum: 2,
///     })).apply(invoke => invoke.result),
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultNetworkAcl = new alicloud.vpc.NetworkAcl("default", {vpcId: defaultSwitch.vpcId});
/// const defaultVpcNetworkAclAttachment = new alicloud.vpc.VpcNetworkAclAttachment("default", {
///     networkAclId: defaultNetworkAcl.id,
///     resourceId: defaultSwitch.id,
///     resourceType: "VSwitch",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default", cidr_block="192.168.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block=default_network.cidr_block.apply(lambda cidr_block: std.cidrsubnet_output(input=cidr_block,
///         newbits=8,
///         netnum=2)).apply(lambda invoke: invoke.result),
///     zone_id=default.zones[0].id)
/// default_network_acl = alicloud.vpc.NetworkAcl("default", vpc_id=default_switch.vpc_id)
/// default_vpc_network_acl_attachment = alicloud.vpc.VpcNetworkAclAttachment("default",
///     network_acl_id=default_network_acl.id,
///     resource_id=default_switch.id,
///     resource_type="VSwitch")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = defaultNetwork.CidrBlock.Apply(cidrBlock => Std.Cidrsubnet.Invoke(new()
///         {
///             Input = cidrBlock,
///             Newbits = 8,
///             Netnum = 2,
///         })).Apply(invoke => invoke.Result),
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultNetworkAcl = new AliCloud.Vpc.NetworkAcl("default", new()
///     {
///         VpcId = defaultSwitch.VpcId,
///     });
///
///     var defaultVpcNetworkAclAttachment = new AliCloud.Vpc.VpcNetworkAclAttachment("default", new()
///     {
///         NetworkAclId = defaultNetworkAcl.Id,
///         ResourceId = defaultSwitch.Id,
///         ResourceType = "VSwitch",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// CidrBlock: pulumi.String("192.168.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// invokeCidrsubnet, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// Input: cidrBlock,
/// Newbits: 8,
/// Netnum: 2,
/// }, nil)
/// if err != nil {
/// return err
/// }
/// defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// VpcId: defaultNetwork.ID(),
/// CidrBlock: pulumi.String(defaultNetwork.CidrBlock.ApplyT(func(cidrBlock string) (std.CidrsubnetResult, error) {
/// %!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference)).(std.CidrsubnetResultOutput).ApplyT(func(invoke std.CidrsubnetResult) (*string, error) {
/// return invoke.Result, nil
/// }).(pulumi.StringPtrOutput)),
/// ZoneId: pulumi.String(_default.Zones[0].Id),
/// })
/// if err != nil {
/// return err
/// }
/// defaultNetworkAcl, err := vpc.NewNetworkAcl(ctx, "default", &vpc.NetworkAclArgs{
/// VpcId: defaultSwitch.VpcId,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = vpc.NewVpcNetworkAclAttachment(ctx, "default", &vpc.VpcNetworkAclAttachmentArgs{
/// NetworkAclId: defaultNetworkAcl.ID(),
/// ResourceId: defaultSwitch.ID(),
/// ResourceType: pulumi.String("VSwitch"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrsubnetArgs;
/// import com.pulumi.alicloud.vpc.NetworkAcl;
/// import com.pulumi.alicloud.vpc.NetworkAclArgs;
/// import com.pulumi.alicloud.vpc.VpcNetworkAclAttachment;
/// import com.pulumi.alicloud.vpc.VpcNetworkAclAttachmentArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock(defaultNetwork.cidrBlock().applyValue(_cidrBlock -> StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                 .input(_cidrBlock)
///                 .newbits(8)
///                 .netnum(2)
///                 .build())).applyValue(_invoke -> _invoke.result()))
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultNetworkAcl = new NetworkAcl("defaultNetworkAcl", NetworkAclArgs.builder()
///             .vpcId(defaultSwitch.vpcId())
///             .build());
///
///         var defaultVpcNetworkAclAttachment = new VpcNetworkAclAttachment("defaultVpcNetworkAclAttachment", VpcNetworkAclAttachmentArgs.builder()
///             .networkAclId(defaultNetworkAcl.id())
///             .resourceId(defaultSwitch.id())
///             .resourceType("VSwitch")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       cidrBlock: 192.168.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock:
///         fn::invoke:
///           function: std:cidrsubnet
///           arguments:
///             input: ${defaultNetwork.cidrBlock}
///             newbits: 8
///             netnum: 2
///           return: result
///       zoneId: ${default.zones[0].id}
///   defaultNetworkAcl:
///     type: alicloud:vpc:NetworkAcl
///     name: default
///     properties:
///       vpcId: ${defaultSwitch.vpcId}
///   defaultVpcNetworkAclAttachment:
///     type: alicloud:vpc:VpcNetworkAclAttachment
///     name: default
///     properties:
///       networkAclId: ${defaultNetworkAcl.id}
///       resourceId: ${defaultSwitch.id}
///       resourceType: VSwitch
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VPC Network Acl Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/vpcNetworkAclAttachment:VpcNetworkAclAttachment example <network_acl_id>:<resource_id>
/// ```
class VpcNetworkAclAttachment extends pulumi.CustomResource {
  /// The ID of the network ACL instance.
  late final pulumi.Output<String> networkAclId;
  /// The ID of the associated  vswitch instance.
  late final pulumi.Output<String> resourceId;
  /// The type of the associated resource. Valid values: `VSwitch`.
  late final pulumi.Output<String> resourceType;
  /// The status of the Network Acl Attachment.
  late final pulumi.Output<String> status;

  /// Creates a new [VpcNetworkAclAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcNetworkAclAttachment]. {@macro pulumi_vpc_vpc_network_acl_attachment_vpc_network_acl_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcNetworkAclAttachment(
    String name, {
    VpcNetworkAclAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/vpcNetworkAclAttachment:VpcNetworkAclAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.networkAclId = registerOutput<String>('networkAclId');
    this.resourceId = registerOutput<String>('resourceId');
    this.resourceType = registerOutput<String>('resourceType');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [VpcNetworkAclAttachment] resource's state with the given [name] and [id].
  static VpcNetworkAclAttachment get(
    String name,
    pulumi.Input<String> id, {
    VpcNetworkAclAttachmentState? state,
  }) {
    return VpcNetworkAclAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcNetworkAclAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/vpcNetworkAclAttachment:VpcNetworkAclAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.networkAclId = registerOutput<String>('networkAclId');
    this.resourceId = registerOutput<String>('resourceId');
    this.resourceType = registerOutput<String>('resourceType');
    this.status = registerOutput<String>('status');
  }
}
