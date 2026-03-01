import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_instance_attachment_args.dart';

/// Provides a ENS Disk Instance Attachment resource. Disk instance mount.
///
/// For information about ENS Disk Instance Attachment and how to use it, see [What is Disk Instance Attachment](https://www.alibabacloud.com/help/en/ens/developer-reference/api-ens-2017-11-10-attachdisk).
///
/// > **NOTE:** Available since v1.216.0.
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
/// const _default = new alicloud.ens.Disk("default", {
///     size: 20,
///     ensRegionId: "cn-chenzhou-telecom_unicom_cmcc",
///     paymentType: "PayAsYouGo",
///     category: "cloud_efficiency",
/// });
/// const defaultInstance = new alicloud.ens.Instance("default", {
///     systemDisk: {
///         size: 20,
///     },
///     imageId: "centos_6_08_64_20G_alibase_20171208",
///     paymentType: "Subscription",
///     instanceType: "ens.sn1.stiny",
///     password: "12345678ABCabc",
///     amount: 1,
///     internetMaxBandwidthOut: 10,
///     uniqueSuffix: true,
///     publicIpIdentification: true,
///     ensRegionId: "cn-chenzhou-telecom_unicom_cmcc",
///     scheduleAreaLevel: "Region",
///     periodUnit: "Month",
///     period: 1,
/// });
/// const defaultDiskInstanceAttachment = new alicloud.ens.DiskInstanceAttachment("default", {
///     instanceId: defaultInstance.id,
///     deleteWithInstance: "false",
///     diskId: _default.id,
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
/// default = alicloud.ens.Disk("default",
///     size=20,
///     ens_region_id="cn-chenzhou-telecom_unicom_cmcc",
///     payment_type="PayAsYouGo",
///     category="cloud_efficiency")
/// default_instance = alicloud.ens.Instance("default",
///     system_disk={
///         "size": 20,
///     },
///     image_id="centos_6_08_64_20G_alibase_20171208",
///     payment_type="Subscription",
///     instance_type="ens.sn1.stiny",
///     password="12345678ABCabc",
///     amount=1,
///     internet_max_bandwidth_out=10,
///     unique_suffix=True,
///     public_ip_identification=True,
///     ens_region_id="cn-chenzhou-telecom_unicom_cmcc",
///     schedule_area_level="Region",
///     period_unit="Month",
///     period=1)
/// default_disk_instance_attachment = alicloud.ens.DiskInstanceAttachment("default",
///     instance_id=default_instance.id,
///     delete_with_instance="false",
///     disk_id=default.id)
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
///     var @default = new AliCloud.Ens.Disk("default", new()
///     {
///         Size = 20,
///         EnsRegionId = "cn-chenzhou-telecom_unicom_cmcc",
///         PaymentType = "PayAsYouGo",
///         Category = "cloud_efficiency",
///     });
///
///     var defaultInstance = new AliCloud.Ens.Instance("default", new()
///     {
///         SystemDisk = new AliCloud.Ens.Inputs.InstanceSystemDiskArgs
///         {
///             Size = 20,
///         },
///         ImageId = "centos_6_08_64_20G_alibase_20171208",
///         PaymentType = "Subscription",
///         InstanceType = "ens.sn1.stiny",
///         Password = "12345678ABCabc",
///         Amount = 1,
///         InternetMaxBandwidthOut = 10,
///         UniqueSuffix = true,
///         PublicIpIdentification = true,
///         EnsRegionId = "cn-chenzhou-telecom_unicom_cmcc",
///         ScheduleAreaLevel = "Region",
///         PeriodUnit = "Month",
///         Period = 1,
///     });
///
///     var defaultDiskInstanceAttachment = new AliCloud.Ens.DiskInstanceAttachment("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         DeleteWithInstance = "false",
///         DiskId = @default.Id,
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
/// 		_default, err := ens.NewDisk(ctx, "default", &ens.DiskArgs{
/// 			Size:        pulumi.Int(20),
/// 			EnsRegionId: pulumi.String("cn-chenzhou-telecom_unicom_cmcc"),
/// 			PaymentType: pulumi.String("PayAsYouGo"),
/// 			Category:    pulumi.String("cloud_efficiency"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := ens.NewInstance(ctx, "default", &ens.InstanceArgs{
/// 			SystemDisk: &ens.InstanceSystemDiskArgs{
/// 				Size: pulumi.Int(20),
/// 			},
/// 			ImageId:                 pulumi.String("centos_6_08_64_20G_alibase_20171208"),
/// 			PaymentType:             pulumi.String("Subscription"),
/// 			InstanceType:            pulumi.String("ens.sn1.stiny"),
/// 			Password:                pulumi.String("12345678ABCabc"),
/// 			Amount:                  pulumi.Int(1),
/// 			InternetMaxBandwidthOut: pulumi.Int(10),
/// 			UniqueSuffix:            pulumi.Bool(true),
/// 			PublicIpIdentification:  pulumi.Bool(true),
/// 			EnsRegionId:             pulumi.String("cn-chenzhou-telecom_unicom_cmcc"),
/// 			ScheduleAreaLevel:       pulumi.String("Region"),
/// 			PeriodUnit:              pulumi.String("Month"),
/// 			Period:                  pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ens.NewDiskInstanceAttachment(ctx, "default", &ens.DiskInstanceAttachmentArgs{
/// 			InstanceId:         defaultInstance.ID(),
/// 			DeleteWithInstance: pulumi.String("false"),
/// 			DiskId:             _default.ID(),
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
/// import com.pulumi.alicloud.ens.Disk;
/// import com.pulumi.alicloud.ens.DiskArgs;
/// import com.pulumi.alicloud.ens.Instance;
/// import com.pulumi.alicloud.ens.InstanceArgs;
/// import com.pulumi.alicloud.ens.inputs.InstanceSystemDiskArgs;
/// import com.pulumi.alicloud.ens.DiskInstanceAttachment;
/// import com.pulumi.alicloud.ens.DiskInstanceAttachmentArgs;
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
///         var default_ = new Disk("default", DiskArgs.builder()
///             .size(20)
///             .ensRegionId("cn-chenzhou-telecom_unicom_cmcc")
///             .paymentType("PayAsYouGo")
///             .category("cloud_efficiency")
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .systemDisk(InstanceSystemDiskArgs.builder()
///                 .size(20)
///                 .build())
///             .imageId("centos_6_08_64_20G_alibase_20171208")
///             .paymentType("Subscription")
///             .instanceType("ens.sn1.stiny")
///             .password("12345678ABCabc")
///             .amount(1)
///             .internetMaxBandwidthOut(10)
///             .uniqueSuffix(true)
///             .publicIpIdentification(true)
///             .ensRegionId("cn-chenzhou-telecom_unicom_cmcc")
///             .scheduleAreaLevel("Region")
///             .periodUnit("Month")
///             .period(1)
///             .build());
///
///         var defaultDiskInstanceAttachment = new DiskInstanceAttachment("defaultDiskInstanceAttachment", DiskInstanceAttachmentArgs.builder()
///             .instanceId(defaultInstance.id())
///             .deleteWithInstance("false")
///             .diskId(default_.id())
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
///   default:
///     type: alicloud:ens:Disk
///     properties:
///       size: '20'
///       ensRegionId: cn-chenzhou-telecom_unicom_cmcc
///       paymentType: PayAsYouGo
///       category: cloud_efficiency
///   defaultInstance:
///     type: alicloud:ens:Instance
///     name: default
///     properties:
///       systemDisk:
///         size: '20'
///       imageId: centos_6_08_64_20G_alibase_20171208
///       paymentType: Subscription
///       instanceType: ens.sn1.stiny
///       password: 12345678ABCabc
///       amount: '1'
///       internetMaxBandwidthOut: '10'
///       uniqueSuffix: true
///       publicIpIdentification: true
///       ensRegionId: cn-chenzhou-telecom_unicom_cmcc
///       scheduleAreaLevel: Region
///       periodUnit: Month
///       period: '1'
///   defaultDiskInstanceAttachment:
///     type: alicloud:ens:DiskInstanceAttachment
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       deleteWithInstance: 'false'
///       diskId: ${default.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ENS Disk Instance Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ens/diskInstanceAttachment:DiskInstanceAttachment example <disk_id>:<instance_id>
/// ```
class DiskInstanceAttachment extends pulumi.CustomResource {
  /// Whether the cloud disk to be mounted is released with the instance  Value: true: When the instance is released, the cloud disk is released together with the instance. false: When the instance is released, the cloud disk is retained and is not released together with the instance. Empty means false by default.
  late final pulumi.Output<String?> deleteWithInstance;
  /// The ID of the cloud disk to be mounted. The Cloud Disk (DiskId) and the instance (InstanceId) must be on the same node.
  late final pulumi.Output<String> diskId;
  /// Instance ID.
  late final pulumi.Output<String> instanceId;

  /// Creates a new [DiskInstanceAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DiskInstanceAttachment]. {@macro pulumi_ens_disk_instance_attachment_disk_instance_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DiskInstanceAttachment(
    String name, {
    DiskInstanceAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ens/diskInstanceAttachment:DiskInstanceAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deleteWithInstance = registerOutput<String?>('deleteWithInstance');
    this.diskId = registerOutput<String>('diskId');
    this.instanceId = registerOutput<String>('instanceId');
  }
}
