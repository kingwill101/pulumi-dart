import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_ip_args.dart';
import 'bgp_ip_state.dart';

/// Provides a Anti-DDoS Pro (DdosBgp) Ip resource.
///
///
///
/// For information about Anti-DDoS Pro (DdosBgp) Ip and how to use it, see [What is Ip](https://www.alibabacloud.com/help/en/ddos-protection/latest/addip).
///
/// &gt; **NOTE:** Available since v1.180.0.
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
/// const _default = alicloud.getAccount({});
/// const defaultDdosBgpInstance = new alicloud.ddos.DdosBgpInstance("default", {
///     name: name,
///     baseBandwidth: 20,
///     bandwidth: -1,
///     ipCount: 100,
///     ipType: "IPv4",
///     normalBandwidth: 100,
///     type: "Enterprise",
/// });
/// const defaultEipAddress = new alicloud.ecs.EipAddress("default", {addressName: name});
/// const defaultBgpIp = new alicloud.ddos.BgpIp("default", {
///     instanceId: defaultDdosBgpInstance.id,
///     ip: defaultEipAddress.ipAddress,
///     memberUid: _default.then(_default => _default.id),
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
/// default = alicloud.get_account()
/// default_ddos_bgp_instance = alicloud.ddos.DdosBgpInstance("default",
///     name=name,
///     base_bandwidth=20,
///     bandwidth=-1,
///     ip_count=100,
///     ip_type="IPv4",
///     normal_bandwidth=100,
///     type="Enterprise")
/// default_eip_address = alicloud.ecs.EipAddress("default", address_name=name)
/// default_bgp_ip = alicloud.ddos.BgpIp("default",
///     instance_id=default_ddos_bgp_instance.id,
///     ip=default_eip_address.ip_address,
///     member_uid=default.id)
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
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var defaultDdosBgpInstance = new AliCloud.Ddos.DdosBgpInstance("default", new()
///     {
///         Name = name,
///         BaseBandwidth = 20,
///         Bandwidth = -1,
///         IpCount = 100,
///         IpType = "IPv4",
///         NormalBandwidth = 100,
///         Type = "Enterprise",
///     });
///
///     var defaultEipAddress = new AliCloud.Ecs.EipAddress("default", new()
///     {
///         AddressName = name,
///     });
///
///     var defaultBgpIp = new AliCloud.Ddos.BgpIp("default", new()
///     {
///         InstanceId = defaultDdosBgpInstance.Id,
///         Ip = defaultEipAddress.IpAddress,
///         MemberUid = @default.Apply(@default => @default.Apply(getAccountResult => getAccountResult.Id)),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ddos"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
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
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultDdosBgpInstance, err := ddos.NewDdosBgpInstance(ctx, "default", &ddos.DdosBgpInstanceArgs{
/// 			Name:            pulumi.String(name),
/// 			BaseBandwidth:   pulumi.Int(20),
/// 			Bandwidth:       pulumi.Int(-1),
/// 			IpCount:         pulumi.Int(100),
/// 			IpType:          pulumi.String("IPv4"),
/// 			NormalBandwidth: pulumi.Int(100),
/// 			Type:            pulumi.String("Enterprise"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEipAddress, err := ecs.NewEipAddress(ctx, "default", &ecs.EipAddressArgs{
/// 			AddressName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ddos.NewBgpIp(ctx, "default", &ddos.BgpIpArgs{
/// 			InstanceId: defaultDdosBgpInstance.ID(),
/// 			Ip:         defaultEipAddress.IpAddress,
/// 			MemberUid:  pulumi.String(_default.Id),
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
/// import com.pulumi.alicloud.ddos.DdosBgpInstance;
/// import com.pulumi.alicloud.ddos.DdosBgpInstanceArgs;
/// import com.pulumi.alicloud.ecs.EipAddress;
/// import com.pulumi.alicloud.ecs.EipAddressArgs;
/// import com.pulumi.alicloud.ddos.BgpIp;
/// import com.pulumi.alicloud.ddos.BgpIpArgs;
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
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var defaultDdosBgpInstance = new DdosBgpInstance("defaultDdosBgpInstance", DdosBgpInstanceArgs.builder()
///             .name(name)
///             .baseBandwidth(20)
///             .bandwidth(-1)
///             .ipCount(100)
///             .ipType("IPv4")
///             .normalBandwidth(100)
///             .type("Enterprise")
///             .build());
///
///         var defaultEipAddress = new EipAddress("defaultEipAddress", EipAddressArgs.builder()
///             .addressName(name)
///             .build());
///
///         var defaultBgpIp = new BgpIp("defaultBgpIp", BgpIpArgs.builder()
///             .instanceId(defaultDdosBgpInstance.id())
///             .ip(defaultEipAddress.ipAddress())
///             .memberUid(default_.id())
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
///   defaultDdosBgpInstance:
///     type: alicloud:ddos:DdosBgpInstance
///     name: default
///     properties:
///       name: ${name}
///       baseBandwidth: 20
///       bandwidth: -1
///       ipCount: 100
///       ipType: IPv4
///       normalBandwidth: 100
///       type: Enterprise
///   defaultEipAddress:
///     type: alicloud:ecs:EipAddress
///     name: default
///     properties:
///       addressName: ${name}
///   defaultBgpIp:
///     type: alicloud:ddos:BgpIp
///     name: default
///     properties:
///       instanceId: ${defaultDdosBgpInstance.id}
///       ip: ${defaultEipAddress.ipAddress}
///       memberUid: ${default.id}
/// variables:
///   default:
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
/// Anti-DDoS Pro (DdosBgp) Ip can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ddos/bgpIp:BgpIp example <instance_id>:<ip>
/// ```
class BgpIp extends pulumi.CustomResource {
  /// The ID of the Anti-DDoS Origin instance.
  late final pulumi.Output<String> instanceId;
  /// The IP address that you want to add.
  late final pulumi.Output<String> ip;
  /// The member to which the asset belongs.
  late final pulumi.Output<String> memberUid;
  /// Field `resource_group_id` has been deprecated from provider version 1.259.0.
  late final pulumi.Output<String?> resourceGroupId;
  /// The status of the IP address.
  late final pulumi.Output<String> status;

  /// Creates a new [BgpIp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BgpIp]. {@macro pulumi_ddos_bgp_ip_bgp_ip_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BgpIp(
    String name, {
    BgpIpArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ddos/bgpIp:BgpIp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    instanceId = registerOutput<String>('instanceId');
    ip = registerOutput<String>('ip');
    memberUid = registerOutput<String>('memberUid');
    resourceGroupId = registerOutput<String?>('resourceGroupId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [BgpIp] resource's state with the given [name] and [id].
  static BgpIp get(
    String name,
    pulumi.Input<String> id, {
    BgpIpState? state,
  }) {
    return BgpIp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BgpIp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ddos/bgpIp:BgpIp',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    instanceId = registerOutput<String>('instanceId');
    ip = registerOutput<String>('ip');
    memberUid = registerOutput<String>('memberUid');
    resourceGroupId = registerOutput<String?>('resourceGroupId');
    status = registerOutput<String>('status');
  }
}
