import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_snapshot_policy_attachment_args.dart';

/// Provides a EBS Enterprise Snapshot Policy Attachment resource. Enterprise-level snapshot policy cloud disk binding relationship.
///
/// For information about EBS Enterprise Snapshot Policy Attachment and how to use it, see [What is Enterprise Snapshot Policy Attachment](https://next.api.aliyun.com/api/ebs/2021-07-30/BindEnterpriseSnapshotPolicy).
///
/// > **NOTE:** Available since v1.215.0.
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
/// const defaultJkW46o = new alicloud.ecs.EcsDisk("defaultJkW46o", {
///     category: "cloud_essd",
///     description: "esp-attachment-test",
///     zoneId: "cn-hangzhou-i",
///     performanceLevel: "PL1",
///     size: 20,
///     diskName: name,
/// });
/// const defaultPE3jjR = new alicloud.ebs.EnterpriseSnapshotPolicy("defaultPE3jjR", {
///     status: "DISABLED",
///     desc: "DESC",
///     schedule: {
///         cronExpression: "0 0 0 1 * ?",
///     },
///     enterpriseSnapshotPolicyName: name,
///     targetType: "DISK",
///     retainRule: {
///         timeInterval: 120,
///         timeUnit: "DAYS",
///     },
/// });
/// const _default = new alicloud.ebs.EnterpriseSnapshotPolicyAttachment("default", {
///     policyId: defaultPE3jjR.id,
///     diskId: defaultJkW46o.id,
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
/// default_jk_w46o = alicloud.ecs.EcsDisk("defaultJkW46o",
///     category="cloud_essd",
///     description="esp-attachment-test",
///     zone_id="cn-hangzhou-i",
///     performance_level="PL1",
///     size=20,
///     disk_name=name)
/// default_pe3jj_r = alicloud.ebs.EnterpriseSnapshotPolicy("defaultPE3jjR",
///     status="DISABLED",
///     desc="DESC",
///     schedule={
///         "cron_expression": "0 0 0 1 * ?",
///     },
///     enterprise_snapshot_policy_name=name,
///     target_type="DISK",
///     retain_rule={
///         "time_interval": 120,
///         "time_unit": "DAYS",
///     })
/// default = alicloud.ebs.EnterpriseSnapshotPolicyAttachment("default",
///     policy_id=default_pe3jj_r.id,
///     disk_id=default_jk_w46o.id)
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
///     var defaultJkW46o = new AliCloud.Ecs.EcsDisk("defaultJkW46o", new()
///     {
///         Category = "cloud_essd",
///         Description = "esp-attachment-test",
///         ZoneId = "cn-hangzhou-i",
///         PerformanceLevel = "PL1",
///         Size = 20,
///         DiskName = name,
///     });
///
///     var defaultPE3jjR = new AliCloud.Ebs.EnterpriseSnapshotPolicy("defaultPE3jjR", new()
///     {
///         Status = "DISABLED",
///         Desc = "DESC",
///         Schedule = new AliCloud.Ebs.Inputs.EnterpriseSnapshotPolicyScheduleArgs
///         {
///             CronExpression = "0 0 0 1 * ?",
///         },
///         EnterpriseSnapshotPolicyName = name,
///         TargetType = "DISK",
///         RetainRule = new AliCloud.Ebs.Inputs.EnterpriseSnapshotPolicyRetainRuleArgs
///         {
///             TimeInterval = 120,
///             TimeUnit = "DAYS",
///         },
///     });
///
///     var @default = new AliCloud.Ebs.EnterpriseSnapshotPolicyAttachment("default", new()
///     {
///         PolicyId = defaultPE3jjR.Id,
///         DiskId = defaultJkW46o.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ebs"
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
/// 		defaultJkW46o, err := ecs.NewEcsDisk(ctx, "defaultJkW46o", &ecs.EcsDiskArgs{
/// 			Category:         pulumi.String("cloud_essd"),
/// 			Description:      pulumi.String("esp-attachment-test"),
/// 			ZoneId:           pulumi.String("cn-hangzhou-i"),
/// 			PerformanceLevel: pulumi.String("PL1"),
/// 			Size:             pulumi.Int(20),
/// 			DiskName:         pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultPE3jjR, err := ebs.NewEnterpriseSnapshotPolicy(ctx, "defaultPE3jjR", &ebs.EnterpriseSnapshotPolicyArgs{
/// 			Status: pulumi.String("DISABLED"),
/// 			Desc:   pulumi.String("DESC"),
/// 			Schedule: &ebs.EnterpriseSnapshotPolicyScheduleArgs{
/// 				CronExpression: pulumi.String("0 0 0 1 * ?"),
/// 			},
/// 			EnterpriseSnapshotPolicyName: pulumi.String(name),
/// 			TargetType:                   pulumi.String("DISK"),
/// 			RetainRule: &ebs.EnterpriseSnapshotPolicyRetainRuleArgs{
/// 				TimeInterval: pulumi.Int(120),
/// 				TimeUnit:     pulumi.String("DAYS"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ebs.NewEnterpriseSnapshotPolicyAttachment(ctx, "default", &ebs.EnterpriseSnapshotPolicyAttachmentArgs{
/// 			PolicyId: defaultPE3jjR.ID(),
/// 			DiskId:   defaultJkW46o.ID(),
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
/// import com.pulumi.alicloud.ecs.EcsDisk;
/// import com.pulumi.alicloud.ecs.EcsDiskArgs;
/// import com.pulumi.alicloud.ebs.EnterpriseSnapshotPolicy;
/// import com.pulumi.alicloud.ebs.EnterpriseSnapshotPolicyArgs;
/// import com.pulumi.alicloud.ebs.inputs.EnterpriseSnapshotPolicyScheduleArgs;
/// import com.pulumi.alicloud.ebs.inputs.EnterpriseSnapshotPolicyRetainRuleArgs;
/// import com.pulumi.alicloud.ebs.EnterpriseSnapshotPolicyAttachment;
/// import com.pulumi.alicloud.ebs.EnterpriseSnapshotPolicyAttachmentArgs;
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
///         var defaultJkW46o = new EcsDisk("defaultJkW46o", EcsDiskArgs.builder()
///             .category("cloud_essd")
///             .description("esp-attachment-test")
///             .zoneId("cn-hangzhou-i")
///             .performanceLevel("PL1")
///             .size(20)
///             .diskName(name)
///             .build());
///
///         var defaultPE3jjR = new EnterpriseSnapshotPolicy("defaultPE3jjR", EnterpriseSnapshotPolicyArgs.builder()
///             .status("DISABLED")
///             .desc("DESC")
///             .schedule(EnterpriseSnapshotPolicyScheduleArgs.builder()
///                 .cronExpression("0 0 0 1 * ?")
///                 .build())
///             .enterpriseSnapshotPolicyName(name)
///             .targetType("DISK")
///             .retainRule(EnterpriseSnapshotPolicyRetainRuleArgs.builder()
///                 .timeInterval(120)
///                 .timeUnit("DAYS")
///                 .build())
///             .build());
///
///         var default_ = new EnterpriseSnapshotPolicyAttachment("default", EnterpriseSnapshotPolicyAttachmentArgs.builder()
///             .policyId(defaultPE3jjR.id())
///             .diskId(defaultJkW46o.id())
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
///   defaultJkW46o:
///     type: alicloud:ecs:EcsDisk
///     properties:
///       category: cloud_essd
///       description: esp-attachment-test
///       zoneId: cn-hangzhou-i
///       performanceLevel: PL1
///       size: '20'
///       diskName: ${name}
///   defaultPE3jjR:
///     type: alicloud:ebs:EnterpriseSnapshotPolicy
///     properties:
///       status: DISABLED
///       desc: DESC
///       schedule:
///         cronExpression: 0 0 0 1 * ?
///       enterpriseSnapshotPolicyName: ${name}
///       targetType: DISK
///       retainRule:
///         timeInterval: '120'
///         timeUnit: DAYS
///   default:
///     type: alicloud:ebs:EnterpriseSnapshotPolicyAttachment
///     properties:
///       policyId: ${defaultPE3jjR.id}
///       diskId: ${defaultJkW46o.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// EBS Enterprise Snapshot Policy Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ebs/enterpriseSnapshotPolicyAttachment:EnterpriseSnapshotPolicyAttachment example <policy_id>:<disk_id>
/// ```
class EnterpriseSnapshotPolicyAttachment extends pulumi.CustomResource {
  /// Cloud Disk ID.
  late final pulumi.Output<String> diskId;
  /// the enterprise snapshot policy id.
  late final pulumi.Output<String> policyId;

  /// Creates a new [EnterpriseSnapshotPolicyAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnterpriseSnapshotPolicyAttachment]. {@macro pulumi_ebs_enterprise_snapshot_policy_attachment_enterprise_snapshot_policy_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnterpriseSnapshotPolicyAttachment(
    String name, {
    EnterpriseSnapshotPolicyAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ebs/enterpriseSnapshotPolicyAttachment:EnterpriseSnapshotPolicyAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.diskId = registerOutput<String>('diskId');
    this.policyId = registerOutput<String>('policyId');
  }
}
