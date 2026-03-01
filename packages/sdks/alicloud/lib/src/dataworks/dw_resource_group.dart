import 'package:pulumi/pulumi.dart' as pulumi;
import 'dw_resource_group_args.dart';
import 'dw_resource_group_state.dart';

/// Provides a Data Works Dw Resource Group resource.
///
///
///
/// For information about Data Works Dw Resource Group and how to use it, see [What is Dw Resource Group](https://www.alibabacloud.com/help/en/dataworks/developer-reference/api-dataworks-public-2024-05-18-createresourcegroup).
///
/// > **NOTE:** Available since v1.241.0.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform_example";
/// const defaultZImuCO = new alicloud.dataworks.Project("defaultZImuCO", {
///     description: "default_pj002",
///     projectName: name,
///     displayName: "default_pj002",
///     paiTaskEnabled: true,
/// });
/// const defaulte4zhaL = new alicloud.vpc.Network("defaulte4zhaL", {
///     description: "default_resgv2_vpc001",
///     vpcName: std.format({
///         input: "%s1",
///         args: [name],
///     }).then(invoke => invoke.result),
///     cidrBlock: "172.16.0.0/12",
/// });
/// const default675v38 = new alicloud.vpc.Switch("default675v38", {
///     description: "default_resg_vsw001",
///     vpcId: defaulte4zhaL.id,
///     zoneId: "cn-beijing-g",
///     vswitchName: std.format({
///         input: "%s2",
///         args: [name],
///     }).then(invoke => invoke.result),
///     cidrBlock: "172.16.0.0/24",
/// });
/// const _default = new alicloud.dataworks.DwResourceGroup("default", {
///     paymentType: "PostPaid",
///     defaultVpcId: defaulte4zhaL.id,
///     remark: "openapi_example",
///     resourceGroupName: "openapi_pop2_example_resg00002",
///     defaultVswitchId: default675v38.id,
///     paymentDurationUnit: "Month",
///     specification: 500,
///     paymentDuration: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform_example"
/// default_z_imu_co = alicloud.dataworks.Project("defaultZImuCO",
///     description="default_pj002",
///     project_name=name,
///     display_name="default_pj002",
///     pai_task_enabled=True)
/// defaulte4zha_l = alicloud.vpc.Network("defaulte4zhaL",
///     description="default_resgv2_vpc001",
///     vpc_name=std.format(input="%s1",
///         args=[name]).result,
///     cidr_block="172.16.0.0/12")
/// default675v38 = alicloud.vpc.Switch("default675v38",
///     description="default_resg_vsw001",
///     vpc_id=defaulte4zha_l.id,
///     zone_id="cn-beijing-g",
///     vswitch_name=std.format(input="%s2",
///         args=[name]).result,
///     cidr_block="172.16.0.0/24")
/// default = alicloud.dataworks.DwResourceGroup("default",
///     payment_type="PostPaid",
///     default_vpc_id=defaulte4zha_l.id,
///     remark="openapi_example",
///     resource_group_name="openapi_pop2_example_resg00002",
///     default_vswitch_id=default675v38.id,
///     payment_duration_unit="Month",
///     specification=500,
///     payment_duration=1)
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
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform_example";
///     var defaultZImuCO = new AliCloud.DataWorks.Project("defaultZImuCO", new()
///     {
///         Description = "default_pj002",
///         ProjectName = name,
///         DisplayName = "default_pj002",
///         PaiTaskEnabled = true,
///     });
///
///     var defaulte4zhaL = new AliCloud.Vpc.Network("defaulte4zhaL", new()
///     {
///         Description = "default_resgv2_vpc001",
///         VpcName = Std.Format.Invoke(new()
///         {
///             Input = "%s1",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var default675v38 = new AliCloud.Vpc.Switch("default675v38", new()
///     {
///         Description = "default_resg_vsw001",
///         VpcId = defaulte4zhaL.Id,
///         ZoneId = "cn-beijing-g",
///         VswitchName = Std.Format.Invoke(new()
///         {
///             Input = "%s2",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///         CidrBlock = "172.16.0.0/24",
///     });
///
///     var @default = new AliCloud.DataWorks.DwResourceGroup("default", new()
///     {
///         PaymentType = "PostPaid",
///         DefaultVpcId = defaulte4zhaL.Id,
///         Remark = "openapi_example",
///         ResourceGroupName = "openapi_pop2_example_resg00002",
///         DefaultVswitchId = default675v38.Id,
///         PaymentDurationUnit = "Month",
///         Specification = 500,
///         PaymentDuration = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/dataworks"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := dataworks.NewProject(ctx, "defaultZImuCO", &dataworks.ProjectArgs{
/// 			Description:    pulumi.String("default_pj002"),
/// 			ProjectName:    pulumi.String(name),
/// 			DisplayName:    pulumi.String("default_pj002"),
/// 			PaiTaskEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s1",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaulte4zhaL, err := vpc.NewNetwork(ctx, "defaulte4zhaL", &vpc.NetworkArgs{
/// 			Description: pulumi.String("default_resgv2_vpc001"),
/// 			VpcName:     pulumi.String(invokeFormat.Result),
/// 			CidrBlock:   pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat1, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s2",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default675v38, err := vpc.NewSwitch(ctx, "default675v38", &vpc.SwitchArgs{
/// 			Description: pulumi.String("default_resg_vsw001"),
/// 			VpcId:       defaulte4zhaL.ID(),
/// 			ZoneId:      pulumi.String("cn-beijing-g"),
/// 			VswitchName: pulumi.String(invokeFormat1.Result),
/// 			CidrBlock:   pulumi.String("172.16.0.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataworks.NewDwResourceGroup(ctx, "default", &dataworks.DwResourceGroupArgs{
/// 			PaymentType:         pulumi.String("PostPaid"),
/// 			DefaultVpcId:        defaulte4zhaL.ID(),
/// 			Remark:              pulumi.String("openapi_example"),
/// 			ResourceGroupName:   pulumi.String("openapi_pop2_example_resg00002"),
/// 			DefaultVswitchId:    default675v38.ID(),
/// 			PaymentDurationUnit: pulumi.String("Month"),
/// 			Specification:       pulumi.Int(500),
/// 			PaymentDuration:     pulumi.Int(1),
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
/// import com.pulumi.alicloud.dataworks.Project;
/// import com.pulumi.alicloud.dataworks.ProjectArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.dataworks.DwResourceGroup;
/// import com.pulumi.alicloud.dataworks.DwResourceGroupArgs;
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
///         final var name = config.get("name").orElse("terraform_example");
///         var defaultZImuCO = new Project("defaultZImuCO", ProjectArgs.builder()
///             .description("default_pj002")
///             .projectName(name)
///             .displayName("default_pj002")
///             .paiTaskEnabled(true)
///             .build());
///
///         var defaulte4zhaL = new Network("defaulte4zhaL", NetworkArgs.builder()
///             .description("default_resgv2_vpc001")
///             .vpcName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s1")
///                 .args(name)
///                 .build()).result())
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var default675v38 = new Switch("default675v38", SwitchArgs.builder()
///             .description("default_resg_vsw001")
///             .vpcId(defaulte4zhaL.id())
///             .zoneId("cn-beijing-g")
///             .vswitchName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s2")
///                 .args(name)
///                 .build()).result())
///             .cidrBlock("172.16.0.0/24")
///             .build());
///
///         var default_ = new DwResourceGroup("default", DwResourceGroupArgs.builder()
///             .paymentType("PostPaid")
///             .defaultVpcId(defaulte4zhaL.id())
///             .remark("openapi_example")
///             .resourceGroupName("openapi_pop2_example_resg00002")
///             .defaultVswitchId(default675v38.id())
///             .paymentDurationUnit("Month")
///             .specification(500)
///             .paymentDuration(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform_example
/// resources:
///   defaultZImuCO:
///     type: alicloud:dataworks:Project
///     properties:
///       description: default_pj002
///       projectName: ${name}
///       displayName: default_pj002
///       paiTaskEnabled: true
///   defaulte4zhaL:
///     type: alicloud:vpc:Network
///     properties:
///       description: default_resgv2_vpc001
///       vpcName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s1'
///             args:
///               - ${name}
///           return: result
///       cidrBlock: 172.16.0.0/12
///   default675v38:
///     type: alicloud:vpc:Switch
///     properties:
///       description: default_resg_vsw001
///       vpcId: ${defaulte4zhaL.id}
///       zoneId: cn-beijing-g
///       vswitchName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s2'
///             args:
///               - ${name}
///           return: result
///       cidrBlock: 172.16.0.0/24
///   default:
///     type: alicloud:dataworks:DwResourceGroup
///     properties:
///       paymentType: PostPaid
///       defaultVpcId: ${defaulte4zhaL.id}
///       remark: openapi_example
///       resourceGroupName: openapi_pop2_example_resg00002
///       defaultVswitchId: ${default675v38.id}
///       paymentDurationUnit: Month
///       specification: '500'
///       paymentDuration: '1'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Data Works Dw Resource Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:dataworks/dwResourceGroup:DwResourceGroup example <id>
/// ```
class DwResourceGroup extends pulumi.CustomResource {
  /// Whether to automatically renew. The default value is false.
  late final pulumi.Output<bool?> autoRenew;
  /// Resource group creation time
  late final pulumi.Output<int> createTime;
  /// The VPC ID of the default network resource.
  late final pulumi.Output<String> defaultVpcId;
  /// The ID of the vswitch bound to the network resource by default.
  late final pulumi.Output<String> defaultVswitchId;
  /// When the payment method is Prepaid, the unit is PaymentDurationUnit.
  late final pulumi.Output<int?> paymentDuration;
  /// When the payment method is Prepaid, the payment duration unit, Month is Month, Year is Year, and there is no other optional value.
  late final pulumi.Output<String?> paymentDurationUnit;
  /// The billing type of the resource group. PrePaid is Subscription, and PostPaid is Pay-As-You-Go.
  late final pulumi.Output<String> paymentType;
  /// Resource Group Comments
  late final pulumi.Output<String> remark;
  /// The ID of the resource group
  late final pulumi.Output<String> resourceGroupId;
  /// Resource group name
  late final pulumi.Output<String?> resourceGroupName;
  /// Package year and package month resource group specifications, unit CU
  late final pulumi.Output<int?> specification;
  /// Resource group status:
  late final pulumi.Output<String> status;
  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [DwResourceGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DwResourceGroup]. {@macro pulumi_dataworks_dw_resource_group_dw_resource_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DwResourceGroup(
    String name, {
    DwResourceGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dataworks/dwResourceGroup:DwResourceGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoRenew = registerOutput<bool?>('autoRenew');
    this.createTime = registerOutput<int>('createTime');
    this.defaultVpcId = registerOutput<String>('defaultVpcId');
    this.defaultVswitchId = registerOutput<String>('defaultVswitchId');
    this.paymentDuration = registerOutput<int?>('paymentDuration');
    this.paymentDurationUnit = registerOutput<String?>('paymentDurationUnit');
    this.paymentType = registerOutput<String>('paymentType');
    this.remark = registerOutput<String>('remark');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.resourceGroupName = registerOutput<String?>('resourceGroupName');
    this.specification = registerOutput<int?>('specification');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [DwResourceGroup] resource's state with the given [name] and [id].
  static DwResourceGroup get(
    String name,
    pulumi.Input<String> id, {
    DwResourceGroupState? state,
  }) {
    return DwResourceGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DwResourceGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:dataworks/dwResourceGroup:DwResourceGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoRenew = registerOutput<bool?>('autoRenew');
    this.createTime = registerOutput<int>('createTime');
    this.defaultVpcId = registerOutput<String>('defaultVpcId');
    this.defaultVswitchId = registerOutput<String>('defaultVswitchId');
    this.paymentDuration = registerOutput<int?>('paymentDuration');
    this.paymentDurationUnit = registerOutput<String?>('paymentDurationUnit');
    this.paymentType = registerOutput<String>('paymentType');
    this.remark = registerOutput<String>('remark');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.resourceGroupName = registerOutput<String?>('resourceGroupName');
    this.specification = registerOutput<int?>('specification');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
