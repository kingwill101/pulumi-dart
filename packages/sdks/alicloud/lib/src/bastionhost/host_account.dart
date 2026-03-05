import 'package:pulumi/pulumi.dart' as pulumi;
import 'host_account_args.dart';
import 'host_account_state.dart';

/// Provides a Bastion Host Host Account resource.
///
/// For information about Bastion Host Host Account and how to use it, see [What is Host Account](https://www.alibabacloud.com/help/en/doc-detail/204377.htm).
///
/// &gt; **NOTE:** Available since v1.135.0.
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
/// const name = config.get("name") || "tf_example";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultGetSwitches = Promise.all([defaultGetNetworks, _default]).then(([defaultGetNetworks, _default]) => alicloud.vpc.getSwitches({
///     cidrBlock: "10.4.0.0/24",
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: _default.zones?.[0]?.id,
/// }));
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {vpcId: defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids?.[0])});
/// const defaultInstance = new alicloud.bastionhost.Instance("default", {
///     description: name,
///     licenseCode: "bhah_ent_50_asset",
///     planCode: "cloudbastion",
///     storage: "5",
///     bandwidth: "5",
///     period: 1,
///     vswitchId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0]),
///     securityGroupIds: [defaultSecurityGroup.id],
/// });
/// const defaultHost = new alicloud.bastionhost.Host("default", {
///     instanceId: defaultInstance.id,
///     hostName: name,
///     activeAddressType: "Private",
///     hostPrivateAddress: "172.16.0.10",
///     osType: "Linux",
///     source: "Local",
/// });
/// const defaultHostAccount = new alicloud.bastionhost.HostAccount("default", {
///     hostAccountName: name,
///     hostId: defaultHost.hostId,
///     instanceId: defaultHost.instanceId,
///     protocolName: "SSH",
///     password: "YourPassword12345",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_get_networks = alicloud.vpc.get_networks(name_regex="^default-NODELETING$",
///     cidr_block="10.4.0.0/16")
/// default_get_switches = alicloud.vpc.get_switches(cidr_block="10.4.0.0/24",
///     vpc_id=default_get_networks.ids[0],
///     zone_id=default.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default", vpc_id=default_get_networks.ids[0])
/// default_instance = alicloud.bastionhost.Instance("default",
///     description=name,
///     license_code="bhah_ent_50_asset",
///     plan_code="cloudbastion",
///     storage="5",
///     bandwidth="5",
///     period=1,
///     vswitch_id=default_get_switches.ids[0],
///     security_group_ids=[default_security_group.id])
/// default_host = alicloud.bastionhost.Host("default",
///     instance_id=default_instance.id,
///     host_name=name,
///     active_address_type="Private",
///     host_private_address="172.16.0.10",
///     os_type="Linux",
///     source="Local")
/// default_host_account = alicloud.bastionhost.HostAccount("default",
///     host_account_name=name,
///     host_id=default_host.host_id,
///     instance_id=default_host.instance_id,
///     protocol_name="SSH",
///     password="YourPassword12345")
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
///     var name = config.Get("name") ?? "tf_example";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         CidrBlock = "10.4.0.0/24",
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///     });
///
///     var defaultInstance = new AliCloud.BastionHost.Instance("default", new()
///     {
///         Description = name,
///         LicenseCode = "bhah_ent_50_asset",
///         PlanCode = "cloudbastion",
///         Storage = "5",
///         Bandwidth = "5",
///         Period = 1,
///         VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///         SecurityGroupIds = new[]
///         {
///             defaultSecurityGroup.Id,
///         },
///     });
///
///     var defaultHost = new AliCloud.BastionHost.Host("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         HostName = name,
///         ActiveAddressType = "Private",
///         HostPrivateAddress = "172.16.0.10",
///         OsType = "Linux",
///         Source = "Local",
///     });
///
///     var defaultHostAccount = new AliCloud.BastionHost.HostAccount("default", new()
///     {
///         HostAccountName = name,
///         HostId = defaultHost.HostId,
///         InstanceId = defaultHost.InstanceId,
///         ProtocolName = "SSH",
///         Password = "YourPassword12345",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/bastionhost"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetNetworks, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("^default-NODELETING$"),
/// 			CidrBlock: pulumi.StringRef("10.4.0.0/16"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			CidrBlock: pulumi.StringRef("10.4.0.0/24"),
/// 			VpcId:     pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// 			ZoneId:    pulumi.StringRef(_default.Zones[0].Id),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			VpcId: pulumi.String(defaultGetNetworks.Ids[0]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := bastionhost.NewInstance(ctx, "default", &bastionhost.InstanceArgs{
/// 			Description: pulumi.String(name),
/// 			LicenseCode: pulumi.String("bhah_ent_50_asset"),
/// 			PlanCode:    pulumi.String("cloudbastion"),
/// 			Storage:     pulumi.String("5"),
/// 			Bandwidth:   pulumi.String("5"),
/// 			Period:      pulumi.Int(1),
/// 			VswitchId:   pulumi.String(defaultGetSwitches.Ids[0]),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				defaultSecurityGroup.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultHost, err := bastionhost.NewHost(ctx, "default", &bastionhost.HostArgs{
/// 			InstanceId:         defaultInstance.ID(),
/// 			HostName:           pulumi.String(name),
/// 			ActiveAddressType:  pulumi.String("Private"),
/// 			HostPrivateAddress: pulumi.String("172.16.0.10"),
/// 			OsType:             pulumi.String("Linux"),
/// 			Source:             pulumi.String("Local"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bastionhost.NewHostAccount(ctx, "default", &bastionhost.HostAccountArgs{
/// 			HostAccountName: pulumi.String(name),
/// 			HostId:          defaultHost.HostId,
/// 			InstanceId:      defaultHost.InstanceId,
/// 			ProtocolName:    pulumi.String("SSH"),
/// 			Password:        pulumi.String("YourPassword12345"),
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
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.bastionhost.Instance;
/// import com.pulumi.alicloud.bastionhost.InstanceArgs;
/// import com.pulumi.alicloud.bastionhost.Host;
/// import com.pulumi.alicloud.bastionhost.HostArgs;
/// import com.pulumi.alicloud.bastionhost.HostAccount;
/// import com.pulumi.alicloud.bastionhost.HostAccountArgs;
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
///         final var name = config.get("name").orElse("tf_example");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .cidrBlock("10.4.0.0/24")
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .description(name)
///             .licenseCode("bhah_ent_50_asset")
///             .planCode("cloudbastion")
///             .storage("5")
///             .bandwidth("5")
///             .period(1)
///             .vswitchId(defaultGetSwitches.ids()[0])
///             .securityGroupIds(defaultSecurityGroup.id())
///             .build());
///
///         var defaultHost = new Host("defaultHost", HostArgs.builder()
///             .instanceId(defaultInstance.id())
///             .hostName(name)
///             .activeAddressType("Private")
///             .hostPrivateAddress("172.16.0.10")
///             .osType("Linux")
///             .source("Local")
///             .build());
///
///         var defaultHostAccount = new HostAccount("defaultHostAccount", HostAccountArgs.builder()
///             .hostAccountName(name)
///             .hostId(defaultHost.hostId())
///             .instanceId(defaultHost.instanceId())
///             .protocolName("SSH")
///             .password("YourPassword12345")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf_example
/// resources:
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       vpcId: ${defaultGetNetworks.ids[0]}
///   defaultInstance:
///     type: alicloud:bastionhost:Instance
///     name: default
///     properties:
///       description: ${name}
///       licenseCode: bhah_ent_50_asset
///       planCode: cloudbastion
///       storage: '5'
///       bandwidth: '5'
///       period: '1'
///       vswitchId: ${defaultGetSwitches.ids[0]}
///       securityGroupIds:
///         - ${defaultSecurityGroup.id}
///   defaultHost:
///     type: alicloud:bastionhost:Host
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       hostName: ${name}
///       activeAddressType: Private
///       hostPrivateAddress: 172.16.0.10
///       osType: Linux
///       source: Local
///   defaultHostAccount:
///     type: alicloud:bastionhost:HostAccount
///     name: default
///     properties:
///       hostAccountName: ${name}
///       hostId: ${defaultHost.hostId}
///       instanceId: ${defaultHost.instanceId}
///       protocolName: SSH
///       password: YourPassword12345
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   defaultGetNetworks:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         nameRegex: ^default-NODELETING$
///         cidrBlock: 10.4.0.0/16
///   defaultGetSwitches:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         cidrBlock: 10.4.0.0/24
///         vpcId: ${defaultGetNetworks.ids[0]}
///         zoneId: ${default.zones[0].id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Bastion Host Host Account can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:bastionhost/hostAccount:HostAccount example <instance_id>:<host_account_id>
/// ```
class HostAccount extends pulumi.CustomResource {
  /// Hosting account ID.
  late final pulumi.Output<String> hostAccountId;
  /// The name of the host account. The name can be up to 128 characters in length.
  late final pulumi.Output<String> hostAccountName;
  /// The ID of the host for which you want to create an account.
  late final pulumi.Output<String> hostId;
  /// The ID of the Bastionhost instance where you want to create an account for the host.
  late final pulumi.Output<String> instanceId;
  /// The passphrase of the private key for the host account. **NOTE:** It is valid when the attribute `protocol_name` is `SSH`.
  late final pulumi.Output<String?> passPhrase;
  /// The password of the host account.
  late final pulumi.Output<String?> password;
  /// The private key of the host account. The value is a Base64-encoded string. **NOTE:** It is valid when the attribute `protocol_name` is `SSH`
  late final pulumi.Output<String?> privateKey;
  /// The protocol used by the host account. Valid values: SSH,RDP
  late final pulumi.Output<String> protocolName;

  /// Creates a new [HostAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HostAccount]. {@macro pulumi_bastionhost_host_account_host_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HostAccount(
    String name, {
    HostAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:bastionhost/hostAccount:HostAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    hostAccountId = registerOutput<String>('hostAccountId');
    hostAccountName = registerOutput<String>('hostAccountName');
    hostId = registerOutput<String>('hostId');
    instanceId = registerOutput<String>('instanceId');
    passPhrase = registerOutput<String?>('passPhrase');
    password = registerOutput<String?>('password');
    privateKey = registerOutput<String?>('privateKey');
    protocolName = registerOutput<String>('protocolName');
  }

  /// Gets an existing [HostAccount] resource's state with the given [name] and [id].
  static HostAccount get(
    String name,
    pulumi.Input<String> id, {
    HostAccountState? state,
  }) {
    return HostAccount._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HostAccount._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:bastionhost/hostAccount:HostAccount',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    hostAccountId = registerOutput<String>('hostAccountId');
    hostAccountName = registerOutput<String>('hostAccountName');
    hostId = registerOutput<String>('hostId');
    instanceId = registerOutput<String>('instanceId');
    passPhrase = registerOutput<String?>('passPhrase');
    password = registerOutput<String?>('password');
    privateKey = registerOutput<String?>('privateKey');
    protocolName = registerOutput<String>('protocolName');
  }
}
