import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';

/// Provides a Bastion Host User resource.
///
/// For information about Bastion Host User and how to use it, see [What is User](https://www.alibabacloud.com/help/en/bastion-host/latest/api-yundun-bastionhost-2019-12-09-createuser).
///
/// > **NOTE:** Available since v1.133.0.
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
/// const localUser = new alicloud.bastionhost.User("local_user", {
///     instanceId: defaultInstance.id,
///     mobileCountryCode: "CN",
///     mobile: "13312345678",
///     password: "YourPassword-123",
///     source: "Local",
///     userName: `${name}_local_user`,
/// });
/// const user = new alicloud.ram.User("user", {
///     name: `${name}_bastionhost_user`,
///     displayName: `${name}_bastionhost_user`,
///     mobile: "86-18688888888",
///     email: "hello.uuu@aaa.com",
///     comments: "yoyoyo",
///     force: true,
/// });
/// const defaultGetAccount = alicloud.getAccount({});
/// const ramUser = new alicloud.bastionhost.User("ram_user", {
///     instanceId: defaultInstance.id,
///     source: "Ram",
///     sourceUserId: defaultGetAccount.then(defaultGetAccount => defaultGetAccount.id),
///     userName: user.name,
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
/// local_user = alicloud.bastionhost.User("local_user",
///     instance_id=default_instance.id,
///     mobile_country_code="CN",
///     mobile="13312345678",
///     password="YourPassword-123",
///     source="Local",
///     user_name=f"{name}_local_user")
/// user = alicloud.ram.User("user",
///     name=f"{name}_bastionhost_user",
///     display_name=f"{name}_bastionhost_user",
///     mobile="86-18688888888",
///     email="hello.uuu@aaa.com",
///     comments="yoyoyo",
///     force=True)
/// default_get_account = alicloud.get_account()
/// ram_user = alicloud.bastionhost.User("ram_user",
///     instance_id=default_instance.id,
///     source="Ram",
///     source_user_id=default_get_account.id,
///     user_name=user.name)
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
///     var localUser = new AliCloud.BastionHost.User("local_user", new()
///     {
///         InstanceId = defaultInstance.Id,
///         MobileCountryCode = "CN",
///         Mobile = "13312345678",
///         Password = "YourPassword-123",
///         Source = "Local",
///         UserName = $"{name}_local_user",
///     });
///
///     var user = new AliCloud.Ram.User("user", new()
///     {
///         Name = $"{name}_bastionhost_user",
///         DisplayName = $"{name}_bastionhost_user",
///         Mobile = "86-18688888888",
///         Email = "hello.uuu@aaa.com",
///         Comments = "yoyoyo",
///         Force = true,
///     });
///
///     var defaultGetAccount = AliCloud.GetAccount.Invoke();
///
///     var ramUser = new AliCloud.BastionHost.User("ram_user", new()
///     {
///         InstanceId = defaultInstance.Id,
///         Source = "Ram",
///         SourceUserId = defaultGetAccount.Apply(getAccountResult => getAccountResult.Id),
///         UserName = user.Name,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/bastionhost"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
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
/// 		_, err = bastionhost.NewUser(ctx, "local_user", &bastionhost.UserArgs{
/// 			InstanceId:        defaultInstance.ID(),
/// 			MobileCountryCode: pulumi.String("CN"),
/// 			Mobile:            pulumi.String("13312345678"),
/// 			Password:          pulumi.String("YourPassword-123"),
/// 			Source:            pulumi.String("Local"),
/// 			UserName:          pulumi.Sprintf("%v_local_user", name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		user, err := ram.NewUser(ctx, "user", &ram.UserArgs{
/// 			Name:        pulumi.Sprintf("%v_bastionhost_user", name),
/// 			DisplayName: pulumi.Sprintf("%v_bastionhost_user", name),
/// 			Mobile:      pulumi.String("86-18688888888"),
/// 			Email:       pulumi.String("hello.uuu@aaa.com"),
/// 			Comments:    pulumi.String("yoyoyo"),
/// 			Force:       pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetAccount, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bastionhost.NewUser(ctx, "ram_user", &bastionhost.UserArgs{
/// 			InstanceId:   defaultInstance.ID(),
/// 			Source:       pulumi.String("Ram"),
/// 			SourceUserId: pulumi.String(defaultGetAccount.Id),
/// 			UserName:     user.Name,
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
///         var localUser = new com.pulumi.alicloud.bastionhost.User("localUser", com.pulumi.alicloud.bastionhost.UserArgs.builder()
///             .instanceId(defaultInstance.id())
///             .mobileCountryCode("CN")
///             .mobile("13312345678")
///             .password("YourPassword-123")
///             .source("Local")
///             .userName(String.format("%s_local_user", name))
///             .build());
///
///         var user = new com.pulumi.alicloud.ram.User("user", com.pulumi.alicloud.ram.UserArgs.builder()
///             .name(String.format("%s_bastionhost_user", name))
///             .displayName(String.format("%s_bastionhost_user", name))
///             .mobile("86-18688888888")
///             .email("hello.uuu@aaa.com")
///             .comments("yoyoyo")
///             .force(true)
///             .build());
///
///         final var defaultGetAccount = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var ramUser = new com.pulumi.alicloud.bastionhost.User("ramUser", com.pulumi.alicloud.bastionhost.UserArgs.builder()
///             .instanceId(defaultInstance.id())
///             .source("Ram")
///             .sourceUserId(defaultGetAccount.id())
///             .userName(user.name())
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
///   localUser:
///     type: alicloud:bastionhost:User
///     name: local_user
///     properties:
///       instanceId: ${defaultInstance.id}
///       mobileCountryCode: CN
///       mobile: '13312345678'
///       password: YourPassword-123
///       source: Local
///       userName: ${name}_local_user
///   user:
///     type: alicloud:ram:User
///     properties:
///       name: ${name}_bastionhost_user
///       displayName: ${name}_bastionhost_user
///       mobile: 86-18688888888
///       email: hello.uuu@aaa.com
///       comments: yoyoyo
///       force: true
///   ramUser:
///     type: alicloud:bastionhost:User
///     name: ram_user
///     properties:
///       instanceId: ${defaultInstance.id}
///       source: Ram
///       sourceUserId: ${defaultGetAccount.id}
///       userName: ${user.name}
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
///   defaultGetAccount:
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
/// Bastion Host User can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:bastionhost/user:User example <instance_id>:<user_id>
/// ```
class User extends pulumi.CustomResource {
  /// Specify the New of the User That Created the Remark Information. Supports up to 500 Characters.
  late final pulumi.Output<String?> comment;
  /// Specify the New Created the User's Display Name. Supports up to 128 Characters.
  late final pulumi.Output<String> displayName;
  /// Specify the New User's Mailbox.
  late final pulumi.Output<String?> email;
  /// You Want to Query the User the Bastion Host ID of.
  late final pulumi.Output<String> instanceId;
  /// Specify the New of the User That Created a Different Mobile Phone Number from Your.
  late final pulumi.Output<String?> mobile;
  /// Specify the New Create User Mobile Phone Number of the International Domain Name. The Default Value Is the CN. Valid Values:
  /// * CN: Mainland China (+86)
  /// * HK: hong Kong, China (+852)
  /// * MO: Macau, China (+853)
  /// * TW: Taiwan, China (+886)
  /// * RU: Russian (+7)
  /// * SG: Singapore (+65)
  /// * MY: malaysia (+60)
  /// * ID: Indonesia (+62)
  /// * DE: Germany (+49)
  /// * AU: Australia (+61)
  /// * US: United States (+1)
  /// * AE: dubai (+971)
  /// * JP: Japan (+81) Introducing the Long-Range
  /// * GB: United Kingdom (+44)
  /// * IN: India (+91)
  /// * KR: South Korea (+82)
  /// * PH: philippines (+63)
  /// * CH: Switzerland (+41)
  /// * SE: Sweden (+46)
  late final pulumi.Output<String> mobileCountryCode;
  /// Specify the New User's Password. Supports up to 128 Characters. Description of the New User as the Source of the Local User That Is, Source Value for Local, this Parameter Is Required.
  late final pulumi.Output<String?> password;
  /// Specify the New of the User That Created the Source. Valid Values:
  /// * Local: Local User
  /// * Ram: Ram User
  /// * AD: AD-authenticated User
  /// * LDAP: LDAP-authenticated User
  /// > **NOTE:** From version 1.199.0, `source` can be set to `AD`, `LDAP`.
  late final pulumi.Output<String> source;
  /// Specify the Newly Created User Is Uniquely Identified. Indicates That the Parameter Is a Bastion Host Corresponding to the User with the Ram User's Unique Identifier. The Newly Created User Source Grant Permission to a RAM User (That Is, Source Used as a Ram), this Parameter Is Required. You Can Call Access Control of Listusers Interface from the Return Data Userid to Obtain the Parameters.
  late final pulumi.Output<String?> sourceUserId;
  /// The status of the resource. Valid values: `Frozen`, `Normal`.
  late final pulumi.Output<String> status;
  /// The User ID.
  late final pulumi.Output<String> userId;
  /// Specify the New User Name. This Parameter Is Only by Letters, Lowercase Letters, Numbers, and Underscores (_), Supports up to 128 Characters.
  late final pulumi.Output<String> userName;

  /// Creates a new [User].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [User]. {@macro pulumi_bastionhost_user_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:bastionhost/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.comment = registerOutput<String?>('comment');
    this.displayName = registerOutput<String>('displayName');
    this.email = registerOutput<String?>('email');
    this.instanceId = registerOutput<String>('instanceId');
    this.mobile = registerOutput<String?>('mobile');
    this.mobileCountryCode = registerOutput<String>('mobileCountryCode');
    this.password = registerOutput<String?>('password');
    this.source = registerOutput<String>('source');
    this.sourceUserId = registerOutput<String?>('sourceUserId');
    this.status = registerOutput<String>('status');
    this.userId = registerOutput<String>('userId');
    this.userName = registerOutput<String>('userName');
  }
}
