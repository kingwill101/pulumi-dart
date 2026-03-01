import 'package:pulumi/pulumi.dart' as pulumi;
import 'ad_connector_directory_args.dart';

/// Provides a ECD Ad Connector Directory resource.
///
/// For information about ECD Ad Connector Directory and how to use it, see [What is Ad Connector Directory](https://www.alibabacloud.com/help/en/wuying-workspace/developer-reference/api-ecd-2020-09-30-createadconnectordirectory).
///
/// > **NOTE:** Available since v1.174.0.
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.eds.getZones({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/24",
///     zoneId: _default.then(_default => _default.ids?.[0]),
///     vswitchName: name,
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultAdConnectorDirectory = new alicloud.eds.AdConnectorDirectory("default", {
///     directoryName: `${name}-${defaultInteger.result}`,
///     desktopAccessType: "INTERNET",
///     dnsAddresses: ["127.0.0.2"],
///     domainName: "corp.example.com",
///     domainPassword: "Example1234",
///     domainUserName: "sAMAccountName",
///     enableAdminAccess: false,
///     mfaEnabled: false,
///     specification: 1,
///     subDomainDnsAddresses: ["127.0.0.3"],
///     subDomainName: "child.example.com",
///     vswitchIds: [defaultSwitch.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.eds.get_zones()
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/24",
///     zone_id=default.ids[0],
///     vswitch_name=name)
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_ad_connector_directory = alicloud.eds.AdConnectorDirectory("default",
///     directory_name=f"{name}-{default_integer['result']}",
///     desktop_access_type="INTERNET",
///     dns_addresses=["127.0.0.2"],
///     domain_name="corp.example.com",
///     domain_password="Example1234",
///     domain_user_name="sAMAccountName",
///     enable_admin_access=False,
///     mfa_enabled=False,
///     specification=1,
///     sub_domain_dns_addresses=["127.0.0.3"],
///     sub_domain_name="child.example.com",
///     vswitch_ids=[default_switch.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.Eds.GetZones.Invoke();
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Ids[0])),
///         VswitchName = name,
///     });
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultAdConnectorDirectory = new AliCloud.Eds.AdConnectorDirectory("default", new()
///     {
///         DirectoryName = $"{name}-{defaultInteger.Result}",
///         DesktopAccessType = "INTERNET",
///         DnsAddresses = new[]
///         {
///             "127.0.0.2",
///         },
///         DomainName = "corp.example.com",
///         DomainPassword = "Example1234",
///         DomainUserName = "sAMAccountName",
///         EnableAdminAccess = false,
///         MfaEnabled = false,
///         Specification = 1,
///         SubDomainDnsAddresses = new[]
///         {
///             "127.0.0.3",
///         },
///         SubDomainName = "child.example.com",
///         VswitchIds = new[]
///         {
///             defaultSwitch.Id,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		_default, err := eds.GetZones(ctx, &eds.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 			ZoneId:      pulumi.String(_default.Ids[0]),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eds.NewAdConnectorDirectory(ctx, "default", &eds.AdConnectorDirectoryArgs{
/// 			DirectoryName:     pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			DesktopAccessType: pulumi.String("INTERNET"),
/// 			DnsAddresses: pulumi.StringArray{
/// 				pulumi.String("127.0.0.2"),
/// 			},
/// 			DomainName:        pulumi.String("corp.example.com"),
/// 			DomainPassword:    pulumi.String("Example1234"),
/// 			DomainUserName:    pulumi.String("sAMAccountName"),
/// 			EnableAdminAccess: pulumi.Bool(false),
/// 			MfaEnabled:        pulumi.Bool(false),
/// 			Specification:     pulumi.Int(1),
/// 			SubDomainDnsAddresses: pulumi.StringArray{
/// 				pulumi.String("127.0.0.3"),
/// 			},
/// 			SubDomainName: pulumi.String("child.example.com"),
/// 			VswitchIds: pulumi.StringArray{
/// 				defaultSwitch.ID(),
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
/// import com.pulumi.alicloud.eds.EdsFunctions;
/// import com.pulumi.alicloud.eds.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.eds.AdConnectorDirectory;
/// import com.pulumi.alicloud.eds.AdConnectorDirectoryArgs;
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
///         final var default = EdsFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/24")
///             .zoneId(default_.ids()[0])
///             .vswitchName(name)
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultAdConnectorDirectory = new AdConnectorDirectory("defaultAdConnectorDirectory", AdConnectorDirectoryArgs.builder()
///             .directoryName(String.format("%s-%s", name,defaultInteger.result()))
///             .desktopAccessType("INTERNET")
///             .dnsAddresses("127.0.0.2")
///             .domainName("corp.example.com")
///             .domainPassword("Example1234")
///             .domainUserName("sAMAccountName")
///             .enableAdminAccess(false)
///             .mfaEnabled(false)
///             .specification(1)
///             .subDomainDnsAddresses("127.0.0.3")
///             .subDomainName("child.example.com")
///             .vswitchIds(defaultSwitch.id())
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
///       cidrBlock: 172.16.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/24
///       zoneId: ${default.ids[0]}
///       vswitchName: ${name}
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   defaultAdConnectorDirectory:
///     type: alicloud:eds:AdConnectorDirectory
///     name: default
///     properties:
///       directoryName: ${name}-${defaultInteger.result}
///       desktopAccessType: INTERNET
///       dnsAddresses:
///         - 127.0.0.2
///       domainName: corp.example.com
///       domainPassword: Example1234
///       domainUserName: sAMAccountName
///       enableAdminAccess: false
///       mfaEnabled: false
///       specification: 1
///       subDomainDnsAddresses:
///         - 127.0.0.3
///       subDomainName: child.example.com
///       vswitchIds:
///         - ${defaultSwitch.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:eds:getZones
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECD Ad Connector Directory can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eds/adConnectorDirectory:AdConnectorDirectory example <id>
/// ```
class AdConnectorDirectory extends pulumi.CustomResource {
  /// The desktop access type. Valid values: `VPC`, `INTERNET`, `ANY`.
  late final pulumi.Output<String> desktopAccessType;
  /// The name of the directory. The name must be 2 to 255 characters in length. It must start with a letter but cannot start with `http://` or `https://`. It can contain letters, digits, colons (:), underscores (_), and hyphens (-).
  late final pulumi.Output<String> directoryName;
  /// The DNS address list.
  late final pulumi.Output<List<String>> dnsAddresses;
  /// The name of the domain.
  late final pulumi.Output<String> domainName;
  /// The user password of the domain administrator. The maximum number of English characters is 64.
  late final pulumi.Output<String> domainPassword;
  /// The username of the domain administrator. The maximum number of English characters is 64.
  late final pulumi.Output<String> domainUserName;
  /// Whether to grant local administrator rights to users who use cloud desktops.
  late final pulumi.Output<bool> enableAdminAccess;
  /// Whether MFA authentication is enabled. After all AD users in this directory log on to the cloud desktop, enter the correct password and then enter the dynamic verification code generated by the MFA device. **NOTE:** The MFA device needs to be bound when logging in for the first time.
  late final pulumi.Output<bool> mfaEnabled;
  /// The AD Connector specifications. Valid values: `1`, `2`.
  late final pulumi.Output<int?> specification;
  /// The status of directory.
  late final pulumi.Output<String> status;
  /// The Enterprise already has the DNS address of the AD subdomain. If `sub_domain_name` is set and this parameter is not set, the child Domain DNS is considered consistent with the parent domain.
  late final pulumi.Output<List<String>?> subDomainDnsAddresses;
  /// The Enterprise already has a fully qualified domain name (FQDN) of an AD subdomain, with both a host name and a domain name.
  late final pulumi.Output<String?> subDomainName;
  /// List of VSwitch IDs in the directory.
  late final pulumi.Output<List<String>> vswitchIds;

  /// Creates a new [AdConnectorDirectory].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AdConnectorDirectory]. {@macro pulumi_eds_ad_connector_directory_ad_connector_directory_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AdConnectorDirectory(
    String name, {
    AdConnectorDirectoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eds/adConnectorDirectory:AdConnectorDirectory',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.desktopAccessType = registerOutput<String>('desktopAccessType');
    this.directoryName = registerOutput<String>('directoryName');
    this.dnsAddresses = registerOutput<List<String>>('dnsAddresses');
    this.domainName = registerOutput<String>('domainName');
    this.domainPassword = registerOutput<String>('domainPassword');
    this.domainUserName = registerOutput<String>('domainUserName');
    this.enableAdminAccess = registerOutput<bool>('enableAdminAccess');
    this.mfaEnabled = registerOutput<bool>('mfaEnabled');
    this.specification = registerOutput<int?>('specification');
    this.status = registerOutput<String>('status');
    this.subDomainDnsAddresses = registerOutput<List<String>?>('subDomainDnsAddresses');
    this.subDomainName = registerOutput<String?>('subDomainName');
    this.vswitchIds = registerOutput<List<String>>('vswitchIds');
  }
}
