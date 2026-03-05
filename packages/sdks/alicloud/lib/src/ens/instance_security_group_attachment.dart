import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_security_group_attachment_args.dart';
import 'instance_security_group_attachment_state.dart';

/// Provides a ENS Instance Security Group Attachment resource.
///
/// Bind instance and security group.
///
/// For information about ENS Instance Security Group Attachment and how to use it, see [What is Instance Security Group Attachment](https://next.api.alibabacloud.com/document/Ens/2017-11-10/JoinSecurityGroup).
///
/// &gt; **NOTE:** Available since v1.216.0.
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
/// const _default = new alicloud.ens.Instance("default", {
///     systemDisk: {
///         size: 20,
///     },
///     scheduleAreaLevel: "Region",
///     imageId: "centos_6_08_64_20G_alibase_20171208",
///     paymentType: "Subscription",
///     instanceType: "ens.sn1.stiny",
///     password: "12345678ABCabc",
///     amount: 1,
///     period: 1,
///     internetMaxBandwidthOut: 10,
///     publicIpIdentification: true,
///     ensRegionId: "cn-chenzhou-telecom_unicom_cmcc",
///     periodUnit: "Month",
/// });
/// const defaultSecurityGroup = new alicloud.ens.SecurityGroup("default", {
///     description: "InstanceSecurityGroupAttachment_Description",
///     securityGroupName: name,
/// });
/// const defaultInstanceSecurityGroupAttachment = new alicloud.ens.InstanceSecurityGroupAttachment("default", {
///     instanceId: _default.id,
///     securityGroupId: defaultSecurityGroup.id,
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
/// default = alicloud.ens.Instance("default",
///     system_disk={
///         "size": 20,
///     },
///     schedule_area_level="Region",
///     image_id="centos_6_08_64_20G_alibase_20171208",
///     payment_type="Subscription",
///     instance_type="ens.sn1.stiny",
///     password="12345678ABCabc",
///     amount=1,
///     period=1,
///     internet_max_bandwidth_out=10,
///     public_ip_identification=True,
///     ens_region_id="cn-chenzhou-telecom_unicom_cmcc",
///     period_unit="Month")
/// default_security_group = alicloud.ens.SecurityGroup("default",
///     description="InstanceSecurityGroupAttachment_Description",
///     security_group_name=name)
/// default_instance_security_group_attachment = alicloud.ens.InstanceSecurityGroupAttachment("default",
///     instance_id=default.id,
///     security_group_id=default_security_group.id)
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
///     var @default = new AliCloud.Ens.Instance("default", new()
///     {
///         SystemDisk = new AliCloud.Ens.Inputs.InstanceSystemDiskArgs
///         {
///             Size = 20,
///         },
///         ScheduleAreaLevel = "Region",
///         ImageId = "centos_6_08_64_20G_alibase_20171208",
///         PaymentType = "Subscription",
///         InstanceType = "ens.sn1.stiny",
///         Password = "12345678ABCabc",
///         Amount = 1,
///         Period = 1,
///         InternetMaxBandwidthOut = 10,
///         PublicIpIdentification = true,
///         EnsRegionId = "cn-chenzhou-telecom_unicom_cmcc",
///         PeriodUnit = "Month",
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ens.SecurityGroup("default", new()
///     {
///         Description = "InstanceSecurityGroupAttachment_Description",
///         SecurityGroupName = name,
///     });
///
///     var defaultInstanceSecurityGroupAttachment = new AliCloud.Ens.InstanceSecurityGroupAttachment("default", new()
///     {
///         InstanceId = @default.Id,
///         SecurityGroupId = defaultSecurityGroup.Id,
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
/// 		_default, err := ens.NewInstance(ctx, "default", &ens.InstanceArgs{
/// 			SystemDisk: &ens.InstanceSystemDiskArgs{
/// 				Size: pulumi.Int(20),
/// 			},
/// 			ScheduleAreaLevel:       pulumi.String("Region"),
/// 			ImageId:                 pulumi.String("centos_6_08_64_20G_alibase_20171208"),
/// 			PaymentType:             pulumi.String("Subscription"),
/// 			InstanceType:            pulumi.String("ens.sn1.stiny"),
/// 			Password:                pulumi.String("12345678ABCabc"),
/// 			Amount:                  pulumi.Int(1),
/// 			Period:                  pulumi.Int(1),
/// 			InternetMaxBandwidthOut: pulumi.Int(10),
/// 			PublicIpIdentification:  pulumi.Bool(true),
/// 			EnsRegionId:             pulumi.String("cn-chenzhou-telecom_unicom_cmcc"),
/// 			PeriodUnit:              pulumi.String("Month"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ens.NewSecurityGroup(ctx, "default", &ens.SecurityGroupArgs{
/// 			Description:       pulumi.String("InstanceSecurityGroupAttachment_Description"),
/// 			SecurityGroupName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ens.NewInstanceSecurityGroupAttachment(ctx, "default", &ens.InstanceSecurityGroupAttachmentArgs{
/// 			InstanceId:      _default.ID(),
/// 			SecurityGroupId: defaultSecurityGroup.ID(),
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
/// import com.pulumi.alicloud.ens.SecurityGroup;
/// import com.pulumi.alicloud.ens.SecurityGroupArgs;
/// import com.pulumi.alicloud.ens.InstanceSecurityGroupAttachment;
/// import com.pulumi.alicloud.ens.InstanceSecurityGroupAttachmentArgs;
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
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .systemDisk(InstanceSystemDiskArgs.builder()
///                 .size(20)
///                 .build())
///             .scheduleAreaLevel("Region")
///             .imageId("centos_6_08_64_20G_alibase_20171208")
///             .paymentType("Subscription")
///             .instanceType("ens.sn1.stiny")
///             .password("12345678ABCabc")
///             .amount(1)
///             .period(1)
///             .internetMaxBandwidthOut(10)
///             .publicIpIdentification(true)
///             .ensRegionId("cn-chenzhou-telecom_unicom_cmcc")
///             .periodUnit("Month")
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .description("InstanceSecurityGroupAttachment_Description")
///             .securityGroupName(name)
///             .build());
///
///         var defaultInstanceSecurityGroupAttachment = new InstanceSecurityGroupAttachment("defaultInstanceSecurityGroupAttachment", InstanceSecurityGroupAttachmentArgs.builder()
///             .instanceId(default_.id())
///             .securityGroupId(defaultSecurityGroup.id())
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
///     type: alicloud:ens:Instance
///     properties:
///       systemDisk:
///         size: '20'
///       scheduleAreaLevel: Region
///       imageId: centos_6_08_64_20G_alibase_20171208
///       paymentType: Subscription
///       instanceType: ens.sn1.stiny
///       password: 12345678ABCabc
///       amount: '1'
///       period: '1'
///       internetMaxBandwidthOut: '10'
///       publicIpIdentification: true
///       ensRegionId: cn-chenzhou-telecom_unicom_cmcc
///       periodUnit: Month
///   defaultSecurityGroup:
///     type: alicloud:ens:SecurityGroup
///     name: default
///     properties:
///       description: InstanceSecurityGroupAttachment_Description
///       securityGroupName: ${name}
///   defaultInstanceSecurityGroupAttachment:
///     type: alicloud:ens:InstanceSecurityGroupAttachment
///     name: default
///     properties:
///       instanceId: ${default.id}
///       securityGroupId: ${defaultSecurityGroup.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ENS Instance Security Group Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ens/instanceSecurityGroupAttachment:InstanceSecurityGroupAttachment example <instance_id>:<security_group_id>
/// ```
class InstanceSecurityGroupAttachment extends pulumi.CustomResource {
  /// Instance ID.
  late final pulumi.Output<String> instanceId;
  /// Security group ID.
  late final pulumi.Output<String> securityGroupId;

  /// Creates a new [InstanceSecurityGroupAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceSecurityGroupAttachment]. {@macro pulumi_ens_instance_security_group_attachment_instance_security_group_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceSecurityGroupAttachment(
    String name, {
    InstanceSecurityGroupAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ens/instanceSecurityGroupAttachment:InstanceSecurityGroupAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    instanceId = registerOutput<String>('instanceId');
    securityGroupId = registerOutput<String>('securityGroupId');
  }

  /// Gets an existing [InstanceSecurityGroupAttachment] resource's state with the given [name] and [id].
  static InstanceSecurityGroupAttachment get(
    String name,
    pulumi.Input<String> id, {
    InstanceSecurityGroupAttachmentState? state,
  }) {
    return InstanceSecurityGroupAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InstanceSecurityGroupAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ens/instanceSecurityGroupAttachment:InstanceSecurityGroupAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    instanceId = registerOutput<String>('instanceId');
    securityGroupId = registerOutput<String>('securityGroupId');
  }
}
