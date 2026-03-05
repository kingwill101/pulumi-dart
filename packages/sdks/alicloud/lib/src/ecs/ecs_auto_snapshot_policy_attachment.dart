import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_auto_snapshot_policy_attachment_args.dart';
import 'ecs_auto_snapshot_policy_attachment_state.dart';

/// Provides a ECS Auto Snapshot Policy Attachment resource.
///
/// Automatic snapshot policy Mount relationship.
///
/// For information about ECS Auto Snapshot Policy Attachment and how to use it, see [What is Auto Snapshot Policy Attachment](https://www.alibabacloud.com/help/en/doc-detail/25531.htm).
///
/// &gt; **NOTE:** Available since v1.122.0.
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
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultAutoSnapshotPolicy = new alicloud.ecs.AutoSnapshotPolicy("default", {
///     autoSnapshotPolicyName: name,
///     repeatWeekdays: [
///         "1",
///         "2",
///         "3",
///     ],
///     retentionDays: 1,
///     timePoints: [
///         "1",
///         "2",
///         "3",
///     ],
/// });
/// const defaultEcsDisk = new alicloud.ecs.EcsDisk("default", {
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     size: 500,
/// });
/// const defaultEcsAutoSnapshotPolicyAttachment = new alicloud.ecs.EcsAutoSnapshotPolicyAttachment("default", {
///     autoSnapshotPolicyId: defaultAutoSnapshotPolicy.id,
///     diskId: defaultEcsDisk.id,
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
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_auto_snapshot_policy = alicloud.ecs.AutoSnapshotPolicy("default",
///     auto_snapshot_policy_name=name,
///     repeat_weekdays=[
///         "1",
///         "2",
///         "3",
///     ],
///     retention_days=1,
///     time_points=[
///         "1",
///         "2",
///         "3",
///     ])
/// default_ecs_disk = alicloud.ecs.EcsDisk("default",
///     zone_id=default.zones[0].id,
///     size=500)
/// default_ecs_auto_snapshot_policy_attachment = alicloud.ecs.EcsAutoSnapshotPolicyAttachment("default",
///     auto_snapshot_policy_id=default_auto_snapshot_policy.id,
///     disk_id=default_ecs_disk.id)
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
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultAutoSnapshotPolicy = new AliCloud.Ecs.AutoSnapshotPolicy("default", new()
///     {
///         AutoSnapshotPolicyName = name,
///         RepeatWeekdays = new[]
///         {
///             "1",
///             "2",
///             "3",
///         },
///         RetentionDays = 1,
///         TimePoints = new[]
///         {
///             "1",
///             "2",
///             "3",
///         },
///     });
///
///     var defaultEcsDisk = new AliCloud.Ecs.EcsDisk("default", new()
///     {
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         Size = 500,
///     });
///
///     var defaultEcsAutoSnapshotPolicyAttachment = new AliCloud.Ecs.EcsAutoSnapshotPolicyAttachment("default", new()
///     {
///         AutoSnapshotPolicyId = defaultAutoSnapshotPolicy.Id,
///         DiskId = defaultEcsDisk.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
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
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAutoSnapshotPolicy, err := ecs.NewAutoSnapshotPolicy(ctx, "default", &ecs.AutoSnapshotPolicyArgs{
/// 			AutoSnapshotPolicyName: pulumi.String(name),
/// 			RepeatWeekdays: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 				pulumi.String("2"),
/// 				pulumi.String("3"),
/// 			},
/// 			RetentionDays: pulumi.Int(1),
/// 			TimePoints: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 				pulumi.String("2"),
/// 				pulumi.String("3"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEcsDisk, err := ecs.NewEcsDisk(ctx, "default", &ecs.EcsDiskArgs{
/// 			ZoneId: pulumi.String(_default.Zones[0].Id),
/// 			Size:   pulumi.Int(500),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewEcsAutoSnapshotPolicyAttachment(ctx, "default", &ecs.EcsAutoSnapshotPolicyAttachmentArgs{
/// 			AutoSnapshotPolicyId: defaultAutoSnapshotPolicy.ID(),
/// 			DiskId:               defaultEcsDisk.ID(),
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
/// import com.pulumi.alicloud.ecs.AutoSnapshotPolicy;
/// import com.pulumi.alicloud.ecs.AutoSnapshotPolicyArgs;
/// import com.pulumi.alicloud.ecs.EcsDisk;
/// import com.pulumi.alicloud.ecs.EcsDiskArgs;
/// import com.pulumi.alicloud.ecs.EcsAutoSnapshotPolicyAttachment;
/// import com.pulumi.alicloud.ecs.EcsAutoSnapshotPolicyAttachmentArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultAutoSnapshotPolicy = new AutoSnapshotPolicy("defaultAutoSnapshotPolicy", AutoSnapshotPolicyArgs.builder()
///             .autoSnapshotPolicyName(name)
///             .repeatWeekdays(
///                 "1",
///                 "2",
///                 "3")
///             .retentionDays(1)
///             .timePoints(
///                 "1",
///                 "2",
///                 "3")
///             .build());
///
///         var defaultEcsDisk = new EcsDisk("defaultEcsDisk", EcsDiskArgs.builder()
///             .zoneId(default_.zones()[0].id())
///             .size(500)
///             .build());
///
///         var defaultEcsAutoSnapshotPolicyAttachment = new EcsAutoSnapshotPolicyAttachment("defaultEcsAutoSnapshotPolicyAttachment", EcsAutoSnapshotPolicyAttachmentArgs.builder()
///             .autoSnapshotPolicyId(defaultAutoSnapshotPolicy.id())
///             .diskId(defaultEcsDisk.id())
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
///   defaultAutoSnapshotPolicy:
///     type: alicloud:ecs:AutoSnapshotPolicy
///     name: default
///     properties:
///       autoSnapshotPolicyName: ${name}
///       repeatWeekdays:
///         - '1'
///         - '2'
///         - '3'
///       retentionDays: 1
///       timePoints:
///         - '1'
///         - '2'
///         - '3'
///   defaultEcsDisk:
///     type: alicloud:ecs:EcsDisk
///     name: default
///     properties:
///       zoneId: ${default.zones[0].id}
///       size: '500'
///   defaultEcsAutoSnapshotPolicyAttachment:
///     type: alicloud:ecs:EcsAutoSnapshotPolicyAttachment
///     name: default
///     properties:
///       autoSnapshotPolicyId: ${defaultAutoSnapshotPolicy.id}
///       diskId: ${defaultEcsDisk.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECS Auto Snapshot Policy Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/ecsAutoSnapshotPolicyAttachment:EcsAutoSnapshotPolicyAttachment example <auto_snapshot_policy_id>:<disk_id>
/// ```
class EcsAutoSnapshotPolicyAttachment extends pulumi.CustomResource {
  /// The ID of the automatic snapshot policy that is applied to the cloud disk.
  late final pulumi.Output<String> autoSnapshotPolicyId;
  /// The ID of the disk.
  late final pulumi.Output<String> diskId;
  /// (Available since v1.271.0) The ID of the region where the automatic snapshot policy and the cloud disk are located.
  late final pulumi.Output<String> regionId;

  /// Creates a new [EcsAutoSnapshotPolicyAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcsAutoSnapshotPolicyAttachment]. {@macro pulumi_ecs_ecs_auto_snapshot_policy_attachment_ecs_auto_snapshot_policy_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcsAutoSnapshotPolicyAttachment(
    String name, {
    EcsAutoSnapshotPolicyAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/ecsAutoSnapshotPolicyAttachment:EcsAutoSnapshotPolicyAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoSnapshotPolicyId = registerOutput<String>('autoSnapshotPolicyId');
    diskId = registerOutput<String>('diskId');
    regionId = registerOutput<String>('regionId');
  }

  /// Gets an existing [EcsAutoSnapshotPolicyAttachment] resource's state with the given [name] and [id].
  static EcsAutoSnapshotPolicyAttachment get(
    String name,
    pulumi.Input<String> id, {
    EcsAutoSnapshotPolicyAttachmentState? state,
  }) {
    return EcsAutoSnapshotPolicyAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EcsAutoSnapshotPolicyAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/ecsAutoSnapshotPolicyAttachment:EcsAutoSnapshotPolicyAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoSnapshotPolicyId = registerOutput<String>('autoSnapshotPolicyId');
    diskId = registerOutput<String>('diskId');
    regionId = registerOutput<String>('regionId');
  }
}
