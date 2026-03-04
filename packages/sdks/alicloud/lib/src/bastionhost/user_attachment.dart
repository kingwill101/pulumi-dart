import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_attachment_args.dart';
import 'user_attachment_state.dart';

/// Provides a Bastion Host User Attachment resource to add user to one user group.
///
/// &gt; **NOTE:** Available since v1.134.0.
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
/// const defaultUserGroup = new alicloud.bastionhost.UserGroup("default", {
///     instanceId: defaultInstance.id,
///     userGroupName: name,
/// });
/// const localUser = new alicloud.bastionhost.User("local_user", {
///     instanceId: defaultInstance.id,
///     mobileCountryCode: "CN",
///     mobile: "13312345678",
///     password: "YourPassword-123",
///     source: "Local",
///     userName: `${name}_local_user`,
/// });
/// const defaultUserAttachment = new alicloud.bastionhost.UserAttachment("default", {
///     instanceId: defaultInstance.id,
///     userGroupId: defaultUserGroup.userGroupId,
///     userId: localUser.userId,
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
/// default_user_group = alicloud.bastionhost.UserGroup("default",
///     instance_id=default_instance.id,
///     user_group_name=name)
/// local_user = alicloud.bastionhost.User("local_user",
///     instance_id=default_instance.id,
///     mobile_country_code="CN",
///     mobile="13312345678",
///     password="YourPassword-123",
///     source="Local",
///     user_name=f"{name}_local_user")
/// default_user_attachment = alicloud.bastionhost.UserAttachment("default",
///     instance_id=default_instance.id,
///     user_group_id=default_user_group.user_group_id,
///     user_id=local_user.user_id)
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
///     var defaultUserGroup = new AliCloud.BastionHost.UserGroup("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         UserGroupName = name,
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
///     var defaultUserAttachment = new AliCloud.BastionHost.UserAttachment("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         UserGroupId = defaultUserGroup.UserGroupId,
///         UserId = localUser.UserId,
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
/// 		defaultUserGroup, err := bastionhost.NewUserGroup(ctx, "default", &bastionhost.UserGroupArgs{
/// 			InstanceId:    defaultInstance.ID(),
/// 			UserGroupName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		localUser, err := bastionhost.NewUser(ctx, "local_user", &bastionhost.UserArgs{
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
/// 		_, err = bastionhost.NewUserAttachment(ctx, "default", &bastionhost.UserAttachmentArgs{
/// 			InstanceId:  defaultInstance.ID(),
/// 			UserGroupId: defaultUserGroup.UserGroupId,
/// 			UserId:      localUser.UserId,
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
/// import com.pulumi.alicloud.bastionhost.UserGroup;
/// import com.pulumi.alicloud.bastionhost.UserGroupArgs;
/// import com.pulumi.alicloud.bastionhost.User;
/// import com.pulumi.alicloud.bastionhost.UserArgs;
/// import com.pulumi.alicloud.bastionhost.UserAttachment;
/// import com.pulumi.alicloud.bastionhost.UserAttachmentArgs;
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
///         var defaultUserGroup = new UserGroup("defaultUserGroup", UserGroupArgs.builder()
///             .instanceId(defaultInstance.id())
///             .userGroupName(name)
///             .build());
///
///         var localUser = new User("localUser", UserArgs.builder()
///             .instanceId(defaultInstance.id())
///             .mobileCountryCode("CN")
///             .mobile("13312345678")
///             .password("YourPassword-123")
///             .source("Local")
///             .userName(String.format("%s_local_user", name))
///             .build());
///
///         var defaultUserAttachment = new UserAttachment("defaultUserAttachment", UserAttachmentArgs.builder()
///             .instanceId(defaultInstance.id())
///             .userGroupId(defaultUserGroup.userGroupId())
///             .userId(localUser.userId())
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
///   defaultUserGroup:
///     type: alicloud:bastionhost:UserGroup
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       userGroupName: ${name}
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
///   defaultUserAttachment:
///     type: alicloud:bastionhost:UserAttachment
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       userGroupId: ${defaultUserGroup.userGroupId}
///       userId: ${localUser.userId}
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
/// Bastion Host User Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:bastionhost/userAttachment:UserAttachment example <instance_id>:<user_group_id>:<user_id>
/// ```
class UserAttachment extends pulumi.CustomResource {
  /// Specifies the user group to add the user's bastion host ID of.
  late final pulumi.Output<String> instanceId;

  /// Specifies the user group to which you want to add the user ID.
  late final pulumi.Output<String> userGroupId;

  /// Specify that you want to add to the policy attached to the user group ID. This includes response parameters in a Json-formatted string supports up to set up 100 USER ID.
  late final pulumi.Output<String> userId;

  /// Creates a new [UserAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserAttachment]. {@macro pulumi_bastionhost_user_attachment_user_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserAttachment(
    String name, {
    UserAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:bastionhost/userAttachment:UserAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    instanceId = registerOutput<String>('instanceId');
    userGroupId = registerOutput<String>('userGroupId');
    userId = registerOutput<String>('userId');
  }

  /// Gets an existing [UserAttachment] resource's state with the given [name] and [id].
  static UserAttachment get(
    String name,
    pulumi.Input<String> id, {
    UserAttachmentState? state,
  }) {
    return UserAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UserAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:bastionhost/userAttachment:UserAttachment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    instanceId = registerOutput<String>('instanceId');
    userGroupId = registerOutput<String>('userGroupId');
    userId = registerOutput<String>('userId');
  }
}
