import 'package:pulumi/pulumi.dart' as pulumi;
import 'eip_instance_attachment_args.dart';
import 'eip_instance_attachment_state.dart';

/// Provides a Ens Eip Instance Attachment resource.
///
/// Bind an EIP to an instance.
///
/// For information about Ens Eip Instance Attachment and how to use it, see [What is Eip Instance Attachment](https://www.alibabacloud.com/help/en/ens/developer-reference/api-ens-2017-11-10-associateenseipaddress).
///
/// &gt; **NOTE:** Available since v1.227.0.
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
/// const ensRegionId = config.get("ensRegionId") || "cn-chenzhou-telecom_unicom_cmcc";
/// const defaultXKjq1W = new alicloud.ens.Instance("defaultXKjq1W", {
///     systemDisk: {
///         size: 20,
///         category: "cloud_efficiency",
///     },
///     schedulingStrategy: "Concentrate",
///     scheduleAreaLevel: "Region",
///     imageId: "centos_6_08_64_20G_alibase_20171208",
///     paymentType: "Subscription",
///     instanceType: "ens.sn1.stiny",
///     password: "12345678abcABC",
///     status: "Running",
///     amount: 1,
///     internetChargeType: "95BandwidthByMonth",
///     instanceName: name,
///     autoUseCoupon: "true",
///     instanceChargeStrategy: "PriceHighPriority",
///     ensRegionId: ensRegionId,
///     periodUnit: "Month",
/// });
/// const defaultsGsN4e = new alicloud.ens.Eip("defaultsGsN4e", {
///     bandwidth: 5,
///     eipName: name,
///     ensRegionId: ensRegionId,
///     internetChargeType: "95BandwidthByMonth",
///     paymentType: "PayAsYouGo",
/// });
/// const _default = new alicloud.ens.EipInstanceAttachment("default", {
///     instanceId: defaultXKjq1W.id,
///     allocationId: defaultsGsN4e.id,
///     instanceType: "EnsInstance",
///     standby: false,
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
/// ens_region_id = config.get("ensRegionId")
/// if ens_region_id is None:
///     ens_region_id = "cn-chenzhou-telecom_unicom_cmcc"
/// default_x_kjq1_w = alicloud.ens.Instance("defaultXKjq1W",
///     system_disk={
///         "size": 20,
///         "category": "cloud_efficiency",
///     },
///     scheduling_strategy="Concentrate",
///     schedule_area_level="Region",
///     image_id="centos_6_08_64_20G_alibase_20171208",
///     payment_type="Subscription",
///     instance_type="ens.sn1.stiny",
///     password="12345678abcABC",
///     status="Running",
///     amount=1,
///     internet_charge_type="95BandwidthByMonth",
///     instance_name=name,
///     auto_use_coupon="true",
///     instance_charge_strategy="PriceHighPriority",
///     ens_region_id=ens_region_id,
///     period_unit="Month")
/// defaults_gs_n4e = alicloud.ens.Eip("defaultsGsN4e",
///     bandwidth=5,
///     eip_name=name,
///     ens_region_id=ens_region_id,
///     internet_charge_type="95BandwidthByMonth",
///     payment_type="PayAsYouGo")
/// default = alicloud.ens.EipInstanceAttachment("default",
///     instance_id=default_x_kjq1_w.id,
///     allocation_id=defaults_gs_n4e.id,
///     instance_type="EnsInstance",
///     standby=False)
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
///     var ensRegionId = config.Get("ensRegionId") ?? "cn-chenzhou-telecom_unicom_cmcc";
///     var defaultXKjq1W = new AliCloud.Ens.Instance("defaultXKjq1W", new()
///     {
///         SystemDisk = new AliCloud.Ens.Inputs.InstanceSystemDiskArgs
///         {
///             Size = 20,
///             Category = "cloud_efficiency",
///         },
///         SchedulingStrategy = "Concentrate",
///         ScheduleAreaLevel = "Region",
///         ImageId = "centos_6_08_64_20G_alibase_20171208",
///         PaymentType = "Subscription",
///         InstanceType = "ens.sn1.stiny",
///         Password = "12345678abcABC",
///         Status = "Running",
///         Amount = 1,
///         InternetChargeType = "95BandwidthByMonth",
///         InstanceName = name,
///         AutoUseCoupon = "true",
///         InstanceChargeStrategy = "PriceHighPriority",
///         EnsRegionId = ensRegionId,
///         PeriodUnit = "Month",
///     });
///
///     var defaultsGsN4e = new AliCloud.Ens.Eip("defaultsGsN4e", new()
///     {
///         Bandwidth = 5,
///         EipName = name,
///         EnsRegionId = ensRegionId,
///         InternetChargeType = "95BandwidthByMonth",
///         PaymentType = "PayAsYouGo",
///     });
///
///     var @default = new AliCloud.Ens.EipInstanceAttachment("default", new()
///     {
///         InstanceId = defaultXKjq1W.Id,
///         AllocationId = defaultsGsN4e.Id,
///         InstanceType = "EnsInstance",
///         Standby = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ens"
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
/// 		ensRegionId := "cn-chenzhou-telecom_unicom_cmcc"
/// 		if param := cfg.Get("ensRegionId"); param != "" {
/// 			ensRegionId = param
/// 		}
/// 		defaultXKjq1W, err := ens.NewInstance(ctx, "defaultXKjq1W", &ens.InstanceArgs{
/// 			SystemDisk: &ens.InstanceSystemDiskArgs{
/// 				Size:     pulumi.Int(20),
/// 				Category: pulumi.String("cloud_efficiency"),
/// 			},
/// 			SchedulingStrategy:     pulumi.String("Concentrate"),
/// 			ScheduleAreaLevel:      pulumi.String("Region"),
/// 			ImageId:                pulumi.String("centos_6_08_64_20G_alibase_20171208"),
/// 			PaymentType:            pulumi.String("Subscription"),
/// 			InstanceType:           pulumi.String("ens.sn1.stiny"),
/// 			Password:               pulumi.String("12345678abcABC"),
/// 			Status:                 pulumi.String("Running"),
/// 			Amount:                 pulumi.Int(1),
/// 			InternetChargeType:     pulumi.String("95BandwidthByMonth"),
/// 			InstanceName:           pulumi.String(name),
/// 			AutoUseCoupon:          pulumi.String("true"),
/// 			InstanceChargeStrategy: pulumi.String("PriceHighPriority"),
/// 			EnsRegionId:            pulumi.String(ensRegionId),
/// 			PeriodUnit:             pulumi.String("Month"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultsGsN4e, err := ens.NewEip(ctx, "defaultsGsN4e", &ens.EipArgs{
/// 			Bandwidth:          pulumi.Int(5),
/// 			EipName:            pulumi.String(name),
/// 			EnsRegionId:        pulumi.String(ensRegionId),
/// 			InternetChargeType: pulumi.String("95BandwidthByMonth"),
/// 			PaymentType:        pulumi.String("PayAsYouGo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ens.NewEipInstanceAttachment(ctx, "default", &ens.EipInstanceAttachmentArgs{
/// 			InstanceId:   defaultXKjq1W.ID(),
/// 			AllocationId: defaultsGsN4e.ID(),
/// 			InstanceType: pulumi.String("EnsInstance"),
/// 			Standby:      pulumi.Bool(false),
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
/// import com.pulumi.alicloud.ens.Instance;
/// import com.pulumi.alicloud.ens.InstanceArgs;
/// import com.pulumi.alicloud.ens.inputs.InstanceSystemDiskArgs;
/// import com.pulumi.alicloud.ens.Eip;
/// import com.pulumi.alicloud.ens.EipArgs;
/// import com.pulumi.alicloud.ens.EipInstanceAttachment;
/// import com.pulumi.alicloud.ens.EipInstanceAttachmentArgs;
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
///         final var ensRegionId = config.get("ensRegionId").orElse("cn-chenzhou-telecom_unicom_cmcc");
///         var defaultXKjq1W = new Instance("defaultXKjq1W", InstanceArgs.builder()
///             .systemDisk(InstanceSystemDiskArgs.builder()
///                 .size(20)
///                 .category("cloud_efficiency")
///                 .build())
///             .schedulingStrategy("Concentrate")
///             .scheduleAreaLevel("Region")
///             .imageId("centos_6_08_64_20G_alibase_20171208")
///             .paymentType("Subscription")
///             .instanceType("ens.sn1.stiny")
///             .password("12345678abcABC")
///             .status("Running")
///             .amount(1)
///             .internetChargeType("95BandwidthByMonth")
///             .instanceName(name)
///             .autoUseCoupon("true")
///             .instanceChargeStrategy("PriceHighPriority")
///             .ensRegionId(ensRegionId)
///             .periodUnit("Month")
///             .build());
///
///         var defaultsGsN4e = new Eip("defaultsGsN4e", EipArgs.builder()
///             .bandwidth(5)
///             .eipName(name)
///             .ensRegionId(ensRegionId)
///             .internetChargeType("95BandwidthByMonth")
///             .paymentType("PayAsYouGo")
///             .build());
///
///         var default_ = new EipInstanceAttachment("default", EipInstanceAttachmentArgs.builder()
///             .instanceId(defaultXKjq1W.id())
///             .allocationId(defaultsGsN4e.id())
///             .instanceType("EnsInstance")
///             .standby(false)
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
///   ensRegionId:
///     type: string
///     default: cn-chenzhou-telecom_unicom_cmcc
/// resources:
///   defaultXKjq1W:
///     type: alicloud:ens:Instance
///     properties:
///       systemDisk:
///         size: '20'
///         category: cloud_efficiency
///       schedulingStrategy: Concentrate
///       scheduleAreaLevel: Region
///       imageId: centos_6_08_64_20G_alibase_20171208
///       paymentType: Subscription
///       instanceType: ens.sn1.stiny
///       password: 12345678abcABC
///       status: Running
///       amount: '1'
///       internetChargeType: 95BandwidthByMonth
///       instanceName: ${name}
///       autoUseCoupon: 'true'
///       instanceChargeStrategy: PriceHighPriority
///       ensRegionId: ${ensRegionId}
///       periodUnit: Month
///   defaultsGsN4e:
///     type: alicloud:ens:Eip
///     properties:
///       bandwidth: '5'
///       eipName: ${name}
///       ensRegionId: ${ensRegionId}
///       internetChargeType: 95BandwidthByMonth
///       paymentType: PayAsYouGo
///   default:
///     type: alicloud:ens:EipInstanceAttachment
///     properties:
///       instanceId: ${defaultXKjq1W.id}
///       allocationId: ${defaultsGsN4e.id}
///       instanceType: EnsInstance
///       standby: 'false'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Ens Eip Instance Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ens/eipInstanceAttachment:EipInstanceAttachment example <allocation_id>:<instance_id>:<instance_type>
/// ```
class EipInstanceAttachment extends pulumi.CustomResource {
  /// The first ID of the resource
  late final pulumi.Output<String> allocationId;

  /// Instance ID
  late final pulumi.Output<String> instanceId;

  /// The type of the EIP instance. Value:
  /// - `Nat`:NAT gateway.
  /// - `SlbInstance`: Server Load Balancer (ELB).
  /// - `NetworkInterface`: Secondary ENI.
  /// - `EnsInstance` (default): The ENS instance.
  late final pulumi.Output<String> instanceType;

  /// Indicates whether the EIP is a backup EIP. Value:
  /// - true: Spare.
  /// - false: not standby.
  late final pulumi.Output<bool?> standby;

  /// The status of the EIP.
  late final pulumi.Output<String> status;

  /// Creates a new [EipInstanceAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EipInstanceAttachment]. {@macro pulumi_ens_eip_instance_attachment_eip_instance_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EipInstanceAttachment(
    String name, {
    EipInstanceAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ens/eipInstanceAttachment:EipInstanceAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allocationId = registerOutput<String>('allocationId');
    instanceId = registerOutput<String>('instanceId');
    instanceType = registerOutput<String>('instanceType');
    standby = registerOutput<bool?>('standby');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [EipInstanceAttachment] resource's state with the given [name] and [id].
  static EipInstanceAttachment get(
    String name,
    pulumi.Input<String> id, {
    EipInstanceAttachmentState? state,
  }) {
    return EipInstanceAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EipInstanceAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ens/eipInstanceAttachment:EipInstanceAttachment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allocationId = registerOutput<String>('allocationId');
    instanceId = registerOutput<String>('instanceId');
    instanceType = registerOutput<String>('instanceType');
    standby = registerOutput<bool?>('standby');
    status = registerOutput<String>('status');
  }
}
