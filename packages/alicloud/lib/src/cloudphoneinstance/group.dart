import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_args.dart';

/// Provides a Cloud Phone Instance Group resource.
///
///
///
/// For information about Cloud Phone Instance Group and how to use it, see [What is Instance Group](https://next.api.alibabacloud.com/document/eds-aic/2023-09-30/CreateAndroidInstanceGroup).
///
/// > **NOTE:** Available since v1.243.0.
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
/// const regionId = config.get("regionId") || "cn-hangzhou";
/// const defaultjZ1gi0 = new alicloud.cloudphone.Policy("defaultjZ1gi0", {
///     lockResolution: "off",
///     resolutionWidth: 720,
///     cameraRedirect: "on",
///     policyGroupName: "defaultPolicyGroup",
///     resolutionHeight: 1280,
///     clipboard: "readwrite",
///     netRedirectPolicy: {
///         netRedirect: "off",
///         customProxy: "off",
///     },
/// });
/// const defaultH2a5KS = new alicloud.eds.SimpleOfficeSite("defaultH2a5KS", {
///     officeSiteName: "InitOfficeSite",
///     cidrBlock: "172.16.0.0/12",
/// });
/// const _default = new alicloud.cloudphoneinstance.Group("default", {
///     instanceGroupSpec: "acp.basic.small",
///     instanceGroupName: "AutoCreateGroupName",
///     period: 1,
///     numberOfInstances: 1,
///     chargeType: "PostPaid",
///     imageId: "imgc-075cllfeuazh03tg9",
///     periodUnit: "Hour",
///     autoRenew: false,
///     amount: 1,
///     autoPay: false,
///     gpuAcceleration: false,
///     policyGroupId: defaultjZ1gi0.id,
///     officeSiteId: defaultH2a5KS.id,
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
/// region_id = config.get("regionId")
/// if region_id is None:
///     region_id = "cn-hangzhou"
/// defaultj_z1gi0 = alicloud.cloudphone.Policy("defaultjZ1gi0",
///     lock_resolution="off",
///     resolution_width=720,
///     camera_redirect="on",
///     policy_group_name="defaultPolicyGroup",
///     resolution_height=1280,
///     clipboard="readwrite",
///     net_redirect_policy={
///         "net_redirect": "off",
///         "custom_proxy": "off",
///     })
/// default_h2a5_ks = alicloud.eds.SimpleOfficeSite("defaultH2a5KS",
///     office_site_name="InitOfficeSite",
///     cidr_block="172.16.0.0/12")
/// default = alicloud.cloudphoneinstance.Group("default",
///     instance_group_spec="acp.basic.small",
///     instance_group_name="AutoCreateGroupName",
///     period=1,
///     number_of_instances=1,
///     charge_type="PostPaid",
///     image_id="imgc-075cllfeuazh03tg9",
///     period_unit="Hour",
///     auto_renew=False,
///     amount=1,
///     auto_pay=False,
///     gpu_acceleration=False,
///     policy_group_id=defaultj_z1gi0.id,
///     office_site_id=default_h2a5_ks.id)
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
///     var regionId = config.Get("regionId") ?? "cn-hangzhou";
///     var defaultjZ1gi0 = new AliCloud.CloudPhone.Policy("defaultjZ1gi0", new()
///     {
///         LockResolution = "off",
///         ResolutionWidth = 720,
///         CameraRedirect = "on",
///         PolicyGroupName = "defaultPolicyGroup",
///         ResolutionHeight = 1280,
///         Clipboard = "readwrite",
///         NetRedirectPolicy = new AliCloud.cloudPhone.Inputs.PolicyNetRedirectPolicyArgs
///         {
///             NetRedirect = "off",
///             CustomProxy = "off",
///         },
///     });
///
///     var defaultH2a5KS = new AliCloud.Eds.SimpleOfficeSite("defaultH2a5KS", new()
///     {
///         OfficeSiteName = "InitOfficeSite",
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var @default = new AliCloud.CloudPhoneInstance.Group("default", new()
///     {
///         InstanceGroupSpec = "acp.basic.small",
///         InstanceGroupName = "AutoCreateGroupName",
///         Period = 1,
///         NumberOfInstances = 1,
///         ChargeType = "PostPaid",
///         ImageId = "imgc-075cllfeuazh03tg9",
///         PeriodUnit = "Hour",
///         AutoRenew = false,
///         Amount = 1,
///         AutoPay = false,
///         GpuAcceleration = false,
///         PolicyGroupId = defaultjZ1gi0.Id,
///         OfficeSiteId = defaultH2a5KS.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudphone"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudphoneinstance"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
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
/// 		regionId := "cn-hangzhou"
/// 		if param := cfg.Get("regionId"); param != "" {
/// 			regionId = param
/// 		}
/// 		defaultjZ1gi0, err := cloudphone.NewPolicy(ctx, "defaultjZ1gi0", &cloudphone.PolicyArgs{
/// 			LockResolution:   pulumi.String("off"),
/// 			ResolutionWidth:  pulumi.Int(720),
/// 			CameraRedirect:   pulumi.String("on"),
/// 			PolicyGroupName:  pulumi.String("defaultPolicyGroup"),
/// 			ResolutionHeight: pulumi.Int(1280),
/// 			Clipboard:        pulumi.String("readwrite"),
/// 			NetRedirectPolicy: &cloudphone.PolicyNetRedirectPolicyArgs{
/// 				NetRedirect: pulumi.String("off"),
/// 				CustomProxy: pulumi.String("off"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultH2a5KS, err := eds.NewSimpleOfficeSite(ctx, "defaultH2a5KS", &eds.SimpleOfficeSiteArgs{
/// 			OfficeSiteName: pulumi.String("InitOfficeSite"),
/// 			CidrBlock:      pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudphoneinstance.NewGroup(ctx, "default", &cloudphoneinstance.GroupArgs{
/// 			InstanceGroupSpec: pulumi.String("acp.basic.small"),
/// 			InstanceGroupName: pulumi.String("AutoCreateGroupName"),
/// 			Period:            pulumi.Int(1),
/// 			NumberOfInstances: pulumi.Int(1),
/// 			ChargeType:        pulumi.String("PostPaid"),
/// 			ImageId:           pulumi.String("imgc-075cllfeuazh03tg9"),
/// 			PeriodUnit:        pulumi.String("Hour"),
/// 			AutoRenew:         pulumi.Bool(false),
/// 			Amount:            pulumi.Int(1),
/// 			AutoPay:           pulumi.Bool(false),
/// 			GpuAcceleration:   pulumi.Bool(false),
/// 			PolicyGroupId:     defaultjZ1gi0.ID(),
/// 			OfficeSiteId:      defaultH2a5KS.ID(),
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
/// import com.pulumi.alicloud.cloudphone.Policy;
/// import com.pulumi.alicloud.cloudphone.PolicyArgs;
/// import com.pulumi.alicloud.cloudphone.inputs.PolicyNetRedirectPolicyArgs;
/// import com.pulumi.alicloud.eds.SimpleOfficeSite;
/// import com.pulumi.alicloud.eds.SimpleOfficeSiteArgs;
/// import com.pulumi.alicloud.cloudphoneinstance.Group;
/// import com.pulumi.alicloud.cloudphoneinstance.GroupArgs;
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
///         final var regionId = config.get("regionId").orElse("cn-hangzhou");
///         var defaultjZ1gi0 = new Policy("defaultjZ1gi0", PolicyArgs.builder()
///             .lockResolution("off")
///             .resolutionWidth(720)
///             .cameraRedirect("on")
///             .policyGroupName("defaultPolicyGroup")
///             .resolutionHeight(1280)
///             .clipboard("readwrite")
///             .netRedirectPolicy(PolicyNetRedirectPolicyArgs.builder()
///                 .netRedirect("off")
///                 .customProxy("off")
///                 .build())
///             .build());
///
///         var defaultH2a5KS = new SimpleOfficeSite("defaultH2a5KS", SimpleOfficeSiteArgs.builder()
///             .officeSiteName("InitOfficeSite")
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var default_ = new Group("default", GroupArgs.builder()
///             .instanceGroupSpec("acp.basic.small")
///             .instanceGroupName("AutoCreateGroupName")
///             .period(1)
///             .numberOfInstances(1)
///             .chargeType("PostPaid")
///             .imageId("imgc-075cllfeuazh03tg9")
///             .periodUnit("Hour")
///             .autoRenew(false)
///             .amount(1)
///             .autoPay(false)
///             .gpuAcceleration(false)
///             .policyGroupId(defaultjZ1gi0.id())
///             .officeSiteId(defaultH2a5KS.id())
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
///   regionId:
///     type: string
///     default: cn-hangzhou
/// resources:
///   defaultjZ1gi0:
///     type: alicloud:cloudphone:Policy
///     properties:
///       lockResolution: off
///       resolutionWidth: '720'
///       cameraRedirect: on
///       policyGroupName: defaultPolicyGroup
///       resolutionHeight: '1280'
///       clipboard: readwrite
///       netRedirectPolicy:
///         netRedirect: off
///         customProxy: off
///   defaultH2a5KS:
///     type: alicloud:eds:SimpleOfficeSite
///     properties:
///       officeSiteName: InitOfficeSite
///       cidrBlock: 172.16.0.0/12
///   default:
///     type: alicloud:cloudphoneinstance:Group
///     properties:
///       instanceGroupSpec: acp.basic.small
///       instanceGroupName: AutoCreateGroupName
///       period: '1'
///       numberOfInstances: '1'
///       chargeType: PostPaid
///       imageId: imgc-075cllfeuazh03tg9
///       periodUnit: Hour
///       autoRenew: false
///       amount: '1'
///       autoPay: false
///       gpuAcceleration: false
///       policyGroupId: ${defaultjZ1gi0.id}
///       officeSiteId: ${defaultH2a5KS.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Phone Instance Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudphoneinstance/group:Group example <id>
/// ```
class Group extends pulumi.CustomResource {
  /// The number of instance groups. The default value is 1 and the maximum value is 100.
  late final pulumi.Output<int?> amount;
  /// Whether to pay automatically. The default is false.
  late final pulumi.Output<bool?> autoPay;
  /// Whether to enable automatic renewal. The default is false.
  late final pulumi.Output<bool?> autoRenew;
  /// The billing type.
  late final pulumi.Output<String?> chargeType;
  /// Whether to enable GPU acceleration. The default value is false.
  /// - true: On.
  /// - false: closed.
  late final pulumi.Output<bool?> gpuAcceleration;
  /// The image ID.
  late final pulumi.Output<String> imageId;
  /// The instance group name
  ///
  /// > **NOTE:** >
  ///
  /// > **NOTE:** - The instance group name must be no more than 30 characters in length. Start with an uppercase/lowercase letter or Chinese. It cannot start with http:// or https://. Only Chinese, English, numbers, half-width colons (:), underscores (_), periods (.), or hyphens (-) are supported.
  late final pulumi.Output<String?> instanceGroupName;
  /// Instance group specifications.
  late final pulumi.Output<String> instanceGroupSpec;
  /// The number of instances in the instance group. The maximum value is 100.
  late final pulumi.Output<int?> numberOfInstances;
  /// The network ID.
  /// - Create a shared network instance: Network ID is optional. Enter the network ID whose type is **Shared Network** on the [cloud mobile phone console> Network](https://wya.wuying.aliyun.com/network) page. If the console does not have a shared network, you can fill it in. A shared network is automatically created when the instance group is created.
  /// - Create a VPC instance: the network ID is required. Enter the network ID of `VPC` on the [cloud mobile phone console> Network](https://wya.wuying.aliyun.com/network) page. If the console does not have a VPC network, you need to create a network first.
  late final pulumi.Output<String?> officeSiteId;
  /// The duration of the resource purchase. The unit is specified by PeriodUnit.
  late final pulumi.Output<int?> period;
  /// The unit of time for purchasing resources.
  late final pulumi.Output<String?> periodUnit;
  /// The policy ID. You can query the list of policies by calling ListPolicyGroups.
  late final pulumi.Output<String?> policyGroupId;
  /// Instance group status
  late final pulumi.Output<String> status;
  /// The vSwitch ID.
  late final pulumi.Output<String?> vswitchId;

  /// Creates a new [Group].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Group]. {@macro pulumi_cloudphoneinstance_group_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Group(
    String name, {
    GroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudphoneinstance/group:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.amount = registerOutput<int?>('amount');
    this.autoPay = registerOutput<bool?>('autoPay');
    this.autoRenew = registerOutput<bool?>('autoRenew');
    this.chargeType = registerOutput<String?>('chargeType');
    this.gpuAcceleration = registerOutput<bool?>('gpuAcceleration');
    this.imageId = registerOutput<String>('imageId');
    this.instanceGroupName = registerOutput<String?>('instanceGroupName');
    this.instanceGroupSpec = registerOutput<String>('instanceGroupSpec');
    this.numberOfInstances = registerOutput<int?>('numberOfInstances');
    this.officeSiteId = registerOutput<String?>('officeSiteId');
    this.period = registerOutput<int?>('period');
    this.periodUnit = registerOutput<String?>('periodUnit');
    this.policyGroupId = registerOutput<String?>('policyGroupId');
    this.status = registerOutput<String>('status');
    this.vswitchId = registerOutput<String?>('vswitchId');
  }
}
