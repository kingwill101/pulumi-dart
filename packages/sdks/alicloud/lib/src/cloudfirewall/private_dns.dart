import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_dns_args.dart';
import 'private_dns_state.dart';

/// Provides a Cloud Firewall Private Dns resource.
///
/// Private DNS Endpoint.
///
/// For information about Cloud Firewall Private Dns and how to use it, see [What is Private Dns](https://next.api.alibabacloud.com/document/Cloudfw/2017-12-07/CreatePrivateDnsEndpoint).
///
/// > **NOTE:** Available since v1.264.0.
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
/// const current = alicloud.getAccount({});
/// const vpc = new alicloud.vpc.Network("vpc", {
///     cidrBlock: "172.16.0.0/12",
///     vpcName: "yqc-example-vpc",
/// });
/// const vpcvsw1 = new alicloud.vpc.Switch("vpcvsw1", {
///     vpcId: vpc.id,
///     zoneId: "cn-hangzhou-i",
///     cidrBlock: "172.16.3.0/24",
/// });
/// const vpcvsw2 = new alicloud.vpc.Switch("vpcvsw2", {
///     vpcId: vpc.id,
///     zoneId: "cn-hangzhou-j",
///     cidrBlock: "172.16.4.0/24",
/// });
/// const _default = new alicloud.cloudfirewall.PrivateDns("default", {
///     regionNo: "cn-hangzhou",
///     accessInstanceName: name,
///     port: 53,
///     primaryVswitchId: vpcvsw1.id,
///     standbyDns: "4.4.4.4",
///     primaryDns: "8.8.8.8",
///     vpcId: vpc.id,
///     privateDnsType: "Custom",
///     firewallTypes: ["internet"],
///     ipProtocol: "UDP",
///     standbyVswitchId: vpcvsw2.id,
///     domainNameLists: ["www.aliyun.com"],
///     primaryVswitchIp: "172.16.3.1",
///     standbyVswitchIp: "172.16.4.1",
///     memberUid: current.then(current => current.id),
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
/// current = alicloud.get_account()
/// vpc = alicloud.vpc.Network("vpc",
///     cidr_block="172.16.0.0/12",
///     vpc_name="yqc-example-vpc")
/// vpcvsw1 = alicloud.vpc.Switch("vpcvsw1",
///     vpc_id=vpc.id,
///     zone_id="cn-hangzhou-i",
///     cidr_block="172.16.3.0/24")
/// vpcvsw2 = alicloud.vpc.Switch("vpcvsw2",
///     vpc_id=vpc.id,
///     zone_id="cn-hangzhou-j",
///     cidr_block="172.16.4.0/24")
/// default = alicloud.cloudfirewall.PrivateDns("default",
///     region_no="cn-hangzhou",
///     access_instance_name=name,
///     port=53,
///     primary_vswitch_id=vpcvsw1.id,
///     standby_dns="4.4.4.4",
///     primary_dns="8.8.8.8",
///     vpc_id=vpc.id,
///     private_dns_type="Custom",
///     firewall_types=["internet"],
///     ip_protocol="UDP",
///     standby_vswitch_id=vpcvsw2.id,
///     domain_name_lists=["www.aliyun.com"],
///     primary_vswitch_ip="172.16.3.1",
///     standby_vswitch_ip="172.16.4.1",
///     member_uid=current.id)
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
///     var current = AliCloud.GetAccount.Invoke();
///
///     var vpc = new AliCloud.Vpc.Network("vpc", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         VpcName = "yqc-example-vpc",
///     });
///
///     var vpcvsw1 = new AliCloud.Vpc.Switch("vpcvsw1", new()
///     {
///         VpcId = vpc.Id,
///         ZoneId = "cn-hangzhou-i",
///         CidrBlock = "172.16.3.0/24",
///     });
///
///     var vpcvsw2 = new AliCloud.Vpc.Switch("vpcvsw2", new()
///     {
///         VpcId = vpc.Id,
///         ZoneId = "cn-hangzhou-j",
///         CidrBlock = "172.16.4.0/24",
///     });
///
///     var @default = new AliCloud.CloudFirewall.PrivateDns("default", new()
///     {
///         RegionNo = "cn-hangzhou",
///         AccessInstanceName = name,
///         Port = 53,
///         PrimaryVswitchId = vpcvsw1.Id,
///         StandbyDns = "4.4.4.4",
///         PrimaryDns = "8.8.8.8",
///         VpcId = vpc.Id,
///         PrivateDnsType = "Custom",
///         FirewallTypes = new[]
///         {
///             "internet",
///         },
///         IpProtocol = "UDP",
///         StandbyVswitchId = vpcvsw2.Id,
///         DomainNameLists = new[]
///         {
///             "www.aliyun.com",
///         },
///         PrimaryVswitchIp = "172.16.3.1",
///         StandbyVswitchIp = "172.16.4.1",
///         MemberUid = current.Apply(getAccountResult => getAccountResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudfirewall"
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
/// 		current, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpc, err := vpc.NewNetwork(ctx, "vpc", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 			VpcName:   pulumi.String("yqc-example-vpc"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpcvsw1, err := vpc.NewSwitch(ctx, "vpcvsw1", &vpc.SwitchArgs{
/// 			VpcId:     vpc.ID(),
/// 			ZoneId:    pulumi.String("cn-hangzhou-i"),
/// 			CidrBlock: pulumi.String("172.16.3.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpcvsw2, err := vpc.NewSwitch(ctx, "vpcvsw2", &vpc.SwitchArgs{
/// 			VpcId:     vpc.ID(),
/// 			ZoneId:    pulumi.String("cn-hangzhou-j"),
/// 			CidrBlock: pulumi.String("172.16.4.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfirewall.NewPrivateDns(ctx, "default", &cloudfirewall.PrivateDnsArgs{
/// 			RegionNo:           pulumi.String("cn-hangzhou"),
/// 			AccessInstanceName: pulumi.String(name),
/// 			Port:               pulumi.Int(53),
/// 			PrimaryVswitchId:   vpcvsw1.ID(),
/// 			StandbyDns:         pulumi.String("4.4.4.4"),
/// 			PrimaryDns:         pulumi.String("8.8.8.8"),
/// 			VpcId:              vpc.ID(),
/// 			PrivateDnsType:     pulumi.String("Custom"),
/// 			FirewallTypes: pulumi.StringArray{
/// 				pulumi.String("internet"),
/// 			},
/// 			IpProtocol:       pulumi.String("UDP"),
/// 			StandbyVswitchId: vpcvsw2.ID(),
/// 			DomainNameLists: pulumi.StringArray{
/// 				pulumi.String("www.aliyun.com"),
/// 			},
/// 			PrimaryVswitchIp: pulumi.String("172.16.3.1"),
/// 			StandbyVswitchIp: pulumi.String("172.16.4.1"),
/// 			MemberUid:        pulumi.String(current.Id),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.cloudfirewall.PrivateDns;
/// import com.pulumi.alicloud.cloudfirewall.PrivateDnsArgs;
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
///         final var current = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var vpc = new Network("vpc", NetworkArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .vpcName("yqc-example-vpc")
///             .build());
///
///         var vpcvsw1 = new Switch("vpcvsw1", SwitchArgs.builder()
///             .vpcId(vpc.id())
///             .zoneId("cn-hangzhou-i")
///             .cidrBlock("172.16.3.0/24")
///             .build());
///
///         var vpcvsw2 = new Switch("vpcvsw2", SwitchArgs.builder()
///             .vpcId(vpc.id())
///             .zoneId("cn-hangzhou-j")
///             .cidrBlock("172.16.4.0/24")
///             .build());
///
///         var default_ = new PrivateDns("default", PrivateDnsArgs.builder()
///             .regionNo("cn-hangzhou")
///             .accessInstanceName(name)
///             .port(53)
///             .primaryVswitchId(vpcvsw1.id())
///             .standbyDns("4.4.4.4")
///             .primaryDns("8.8.8.8")
///             .vpcId(vpc.id())
///             .privateDnsType("Custom")
///             .firewallTypes("internet")
///             .ipProtocol("UDP")
///             .standbyVswitchId(vpcvsw2.id())
///             .domainNameLists("www.aliyun.com")
///             .primaryVswitchIp("172.16.3.1")
///             .standbyVswitchIp("172.16.4.1")
///             .memberUid(current.id())
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
///   vpc:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 172.16.0.0/12
///       vpcName: yqc-example-vpc
///   vpcvsw1:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${vpc.id}
///       zoneId: cn-hangzhou-i
///       cidrBlock: 172.16.3.0/24
///   vpcvsw2:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${vpc.id}
///       zoneId: cn-hangzhou-j
///       cidrBlock: 172.16.4.0/24
///   default:
///     type: alicloud:cloudfirewall:PrivateDns
///     properties:
///       regionNo: cn-hangzhou
///       accessInstanceName: ${name}
///       port: '53'
///       primaryVswitchId: ${vpcvsw1.id}
///       standbyDns: 4.4.4.4
///       primaryDns: 8.8.8.8
///       vpcId: ${vpc.id}
///       privateDnsType: Custom
///       firewallTypes:
///         - internet
///       ipProtocol: UDP
///       standbyVswitchId: ${vpcvsw2.id}
///       domainNameLists:
///         - www.aliyun.com
///       primaryVswitchIp: 172.16.3.1
///       standbyVswitchIp: 172.16.4.1
///       memberUid: ${current.id}
/// variables:
///   current:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Firewall Private Dns can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudfirewall/privateDns:PrivateDns example <access_instance_id>:<region_no>
/// ```
class PrivateDns extends pulumi.CustomResource {
  /// The id of Private DNS instance
  late final pulumi.Output<String> accessInstanceId;
  /// The name of Private DNS instance
  late final pulumi.Output<String> accessInstanceName;
  /// Private DNS domain name list
  late final pulumi.Output<List<String>?> domainNameLists;
  /// The type of firewall
  late final pulumi.Output<List<String>> firewallTypes;
  /// IP protocol
  late final pulumi.Output<String?> ipProtocol;
  /// The member Uid
  late final pulumi.Output<int?> memberUid;
  /// The Port of Private DNS instance
  late final pulumi.Output<int?> port;
  /// Primary DNS IP
  late final pulumi.Output<String?> primaryDns;
  /// Primary zone Switch ID
  late final pulumi.Output<String?> primaryVswitchId;
  /// Primary zone switch IP
  late final pulumi.Output<String?> primaryVswitchIp;
  /// The type of Private DNS instance
  late final pulumi.Output<String> privateDnsType;
  /// The region ID of Private DNS instance
  late final pulumi.Output<String> regionNo;
  /// Standby DNS IP
  late final pulumi.Output<String?> standbyDns;
  /// Standby zone switch ID
  late final pulumi.Output<String?> standbyVswitchId;
  /// Standby zone switch IP address
  late final pulumi.Output<String?> standbyVswitchIp;
  /// status
  late final pulumi.Output<String> status;
  /// The ID of the VPC.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [PrivateDns].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateDns]. {@macro pulumi_cloudfirewall_private_dns_private_dns_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateDns(
    String name, {
    PrivateDnsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudfirewall/privateDns:PrivateDns',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessInstanceId = registerOutput<String>('accessInstanceId');
    this.accessInstanceName = registerOutput<String>('accessInstanceName');
    this.domainNameLists = registerOutput<List<String>?>('domainNameLists');
    this.firewallTypes = registerOutput<List<String>>('firewallTypes');
    this.ipProtocol = registerOutput<String?>('ipProtocol');
    this.memberUid = registerOutput<int?>('memberUid');
    this.port = registerOutput<int?>('port');
    this.primaryDns = registerOutput<String?>('primaryDns');
    this.primaryVswitchId = registerOutput<String?>('primaryVswitchId');
    this.primaryVswitchIp = registerOutput<String?>('primaryVswitchIp');
    this.privateDnsType = registerOutput<String>('privateDnsType');
    this.regionNo = registerOutput<String>('regionNo');
    this.standbyDns = registerOutput<String?>('standbyDns');
    this.standbyVswitchId = registerOutput<String?>('standbyVswitchId');
    this.standbyVswitchIp = registerOutput<String?>('standbyVswitchIp');
    this.status = registerOutput<String>('status');
    this.vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [PrivateDns] resource's state with the given [name] and [id].
  static PrivateDns get(
    String name,
    pulumi.Input<String> id, {
    PrivateDnsState? state,
  }) {
    return PrivateDns._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PrivateDns._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudfirewall/privateDns:PrivateDns',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessInstanceId = registerOutput<String>('accessInstanceId');
    this.accessInstanceName = registerOutput<String>('accessInstanceName');
    this.domainNameLists = registerOutput<List<String>?>('domainNameLists');
    this.firewallTypes = registerOutput<List<String>>('firewallTypes');
    this.ipProtocol = registerOutput<String?>('ipProtocol');
    this.memberUid = registerOutput<int?>('memberUid');
    this.port = registerOutput<int?>('port');
    this.primaryDns = registerOutput<String?>('primaryDns');
    this.primaryVswitchId = registerOutput<String?>('primaryVswitchId');
    this.primaryVswitchIp = registerOutput<String?>('primaryVswitchIp');
    this.privateDnsType = registerOutput<String>('privateDnsType');
    this.regionNo = registerOutput<String>('regionNo');
    this.standbyDns = registerOutput<String?>('standbyDns');
    this.standbyVswitchId = registerOutput<String?>('standbyVswitchId');
    this.standbyVswitchIp = registerOutput<String?>('standbyVswitchIp');
    this.status = registerOutput<String>('status');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
