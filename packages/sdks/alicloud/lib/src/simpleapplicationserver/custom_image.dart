import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_image_args.dart';
import 'custom_image_state.dart';

/// Provides a Simple Application Server Custom Image resource.
///
/// For information about Simple Application Server Custom Image and how to use it, see [What is Custom Image](https://www.alibabacloud.com/help/en/doc-detail/333535.htm).
///
/// > **NOTE:** Available since v1.143.0.
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
/// const _default = alicloud.simpleapplicationserver.getImages({});
/// const defaultGetServerPlans = alicloud.simpleapplicationserver.getServerPlans({});
/// const defaultInstance = new alicloud.simpleapplicationserver.Instance("default", {
///     paymentType: "Subscription",
///     planId: defaultGetServerPlans.then(defaultGetServerPlans => defaultGetServerPlans.plans?.[0]?.id),
///     instanceName: name,
///     imageId: _default.then(_default => _default.images?.[0]?.id),
///     period: 1,
///     dataDiskSize: 100,
/// });
/// const defaultGetServerDisks = alicloud.simpleapplicationserver.getServerDisksOutput({
///     instanceId: defaultInstance.id,
/// });
/// const defaultSnapshot = new alicloud.simpleapplicationserver.Snapshot("default", {
///     diskId: defaultGetServerDisks.apply(defaultGetServerDisks => defaultGetServerDisks.ids?.[0]),
///     snapshotName: name,
/// });
/// const defaultCustomImage = new alicloud.simpleapplicationserver.CustomImage("default", {
///     customImageName: name,
///     instanceId: defaultInstance.id,
///     systemSnapshotId: defaultSnapshot.id,
///     status: "Share",
///     description: name,
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
/// default = alicloud.simpleapplicationserver.get_images()
/// default_get_server_plans = alicloud.simpleapplicationserver.get_server_plans()
/// default_instance = alicloud.simpleapplicationserver.Instance("default",
///     payment_type="Subscription",
///     plan_id=default_get_server_plans.plans[0].id,
///     instance_name=name,
///     image_id=default.images[0].id,
///     period=1,
///     data_disk_size=100)
/// default_get_server_disks = alicloud.simpleapplicationserver.get_server_disks_output(instance_id=default_instance.id)
/// default_snapshot = alicloud.simpleapplicationserver.Snapshot("default",
///     disk_id=default_get_server_disks.ids[0],
///     snapshot_name=name)
/// default_custom_image = alicloud.simpleapplicationserver.CustomImage("default",
///     custom_image_name=name,
///     instance_id=default_instance.id,
///     system_snapshot_id=default_snapshot.id,
///     status="Share",
///     description=name)
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
///     var @default = AliCloud.SimpleApplicationServer.GetImages.Invoke();
///
///     var defaultGetServerPlans = AliCloud.SimpleApplicationServer.GetServerPlans.Invoke();
///
///     var defaultInstance = new AliCloud.SimpleApplicationServer.Instance("default", new()
///     {
///         PaymentType = "Subscription",
///         PlanId = defaultGetServerPlans.Apply(getServerPlansResult => getServerPlansResult.Plans[0]?.Id),
///         InstanceName = name,
///         ImageId = @default.Apply(@default => @default.Apply(getImagesResult => getImagesResult.Images[0]?.Id)),
///         Period = 1,
///         DataDiskSize = 100,
///     });
///
///     var defaultGetServerDisks = AliCloud.SimpleApplicationServer.GetServerDisks.Invoke(new()
///     {
///         InstanceId = defaultInstance.Id,
///     });
///
///     var defaultSnapshot = new AliCloud.SimpleApplicationServer.Snapshot("default", new()
///     {
///         DiskId = defaultGetServerDisks.Apply(getServerDisksResult => getServerDisksResult.Ids[0]),
///         SnapshotName = name,
///     });
///
///     var defaultCustomImage = new AliCloud.SimpleApplicationServer.CustomImage("default", new()
///     {
///         CustomImageName = name,
///         InstanceId = defaultInstance.Id,
///         SystemSnapshotId = defaultSnapshot.Id,
///         Status = "Share",
///         Description = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/simpleapplicationserver"
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
/// 		_default, err := simpleapplicationserver.GetImages(ctx, &simpleapplicationserver.GetImagesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetServerPlans, err := simpleapplicationserver.GetServerPlans(ctx, &simpleapplicationserver.GetServerPlansArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := simpleapplicationserver.NewInstance(ctx, "default", &simpleapplicationserver.InstanceArgs{
/// 			PaymentType:  pulumi.String("Subscription"),
/// 			PlanId:       pulumi.String(defaultGetServerPlans.Plans[0].Id),
/// 			InstanceName: pulumi.String(name),
/// 			ImageId:      pulumi.String(_default.Images[0].Id),
/// 			Period:       pulumi.Int(1),
/// 			DataDiskSize: pulumi.Int(100),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetServerDisks := simpleapplicationserver.GetServerDisksOutput(ctx, simpleapplicationserver.GetServerDisksOutputArgs{
/// 			InstanceId: defaultInstance.ID(),
/// 		}, nil)
/// 		defaultSnapshot, err := simpleapplicationserver.NewSnapshot(ctx, "default", &simpleapplicationserver.SnapshotArgs{
/// 			DiskId: pulumi.String(defaultGetServerDisks.ApplyT(func(defaultGetServerDisks simpleapplicationserver.GetServerDisksResult) (*string, error) {
/// 				return &defaultGetServerDisks.Ids[0], nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			SnapshotName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = simpleapplicationserver.NewCustomImage(ctx, "default", &simpleapplicationserver.CustomImageArgs{
/// 			CustomImageName:  pulumi.String(name),
/// 			InstanceId:       defaultInstance.ID(),
/// 			SystemSnapshotId: defaultSnapshot.ID(),
/// 			Status:           pulumi.String("Share"),
/// 			Description:      pulumi.String(name),
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
/// import com.pulumi.alicloud.simpleapplicationserver.SimpleapplicationserverFunctions;
/// import com.pulumi.alicloud.simpleapplicationserver.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.simpleapplicationserver.inputs.GetServerPlansArgs;
/// import com.pulumi.alicloud.simpleapplicationserver.Instance;
/// import com.pulumi.alicloud.simpleapplicationserver.InstanceArgs;
/// import com.pulumi.alicloud.simpleapplicationserver.inputs.GetServerDisksArgs;
/// import com.pulumi.alicloud.simpleapplicationserver.Snapshot;
/// import com.pulumi.alicloud.simpleapplicationserver.SnapshotArgs;
/// import com.pulumi.alicloud.simpleapplicationserver.CustomImage;
/// import com.pulumi.alicloud.simpleapplicationserver.CustomImageArgs;
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
///         final var default = SimpleapplicationserverFunctions.getImages(GetImagesArgs.builder()
///             .build());
///
///         final var defaultGetServerPlans = SimpleapplicationserverFunctions.getServerPlans(GetServerPlansArgs.builder()
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .paymentType("Subscription")
///             .planId(defaultGetServerPlans.plans()[0].id())
///             .instanceName(name)
///             .imageId(default_.images()[0].id())
///             .period(1)
///             .dataDiskSize(100)
///             .build());
///
///         final var defaultGetServerDisks = SimpleapplicationserverFunctions.getServerDisks(GetServerDisksArgs.builder()
///             .instanceId(defaultInstance.id())
///             .build());
///
///         var defaultSnapshot = new Snapshot("defaultSnapshot", SnapshotArgs.builder()
///             .diskId(defaultGetServerDisks.applyValue(_defaultGetServerDisks -> _defaultGetServerDisks.ids()[0]))
///             .snapshotName(name)
///             .build());
///
///         var defaultCustomImage = new CustomImage("defaultCustomImage", CustomImageArgs.builder()
///             .customImageName(name)
///             .instanceId(defaultInstance.id())
///             .systemSnapshotId(defaultSnapshot.id())
///             .status("Share")
///             .description(name)
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
///   defaultInstance:
///     type: alicloud:simpleapplicationserver:Instance
///     name: default
///     properties:
///       paymentType: Subscription
///       planId: ${defaultGetServerPlans.plans[0].id}
///       instanceName: ${name}
///       imageId: ${default.images[0].id}
///       period: 1
///       dataDiskSize: 100
///   defaultSnapshot:
///     type: alicloud:simpleapplicationserver:Snapshot
///     name: default
///     properties:
///       diskId: ${defaultGetServerDisks.ids[0]}
///       snapshotName: ${name}
///   defaultCustomImage:
///     type: alicloud:simpleapplicationserver:CustomImage
///     name: default
///     properties:
///       customImageName: ${name}
///       instanceId: ${defaultInstance.id}
///       systemSnapshotId: ${defaultSnapshot.id}
///       status: Share
///       description: ${name}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:simpleapplicationserver:getImages
///       arguments: {}
///   defaultGetServerPlans:
///     fn::invoke:
///       function: alicloud:simpleapplicationserver:getServerPlans
///       arguments: {}
///   defaultGetServerDisks:
///     fn::invoke:
///       function: alicloud:simpleapplicationserver:getServerDisks
///       arguments:
///         instanceId: ${defaultInstance.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Simple Application Server Custom Image can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:simpleapplicationserver/customImage:CustomImage example <id>
/// ```
class CustomImage extends pulumi.CustomResource {
  /// The name of the resource. The name must be `2` to `128` characters in length. It must start with a letter or a number. It can contain letters, digits, colons (:), underscores (_) and hyphens (-).
  late final pulumi.Output<String> customImageName;
  /// The description of the Custom Image.
  late final pulumi.Output<String?> description;
  /// The ID of the instance.
  late final pulumi.Output<String> instanceId;
  /// The Shared status of the Custom Image. Valid values: `Share`, `UnShare`.
  ///
  /// **NOTE:** The `status` will be automatically change to `UnShare` when the resource is deleted, please operate with caution.
  late final pulumi.Output<String?> status;
  /// The ID of the system snapshot.
  late final pulumi.Output<String> systemSnapshotId;

  /// Creates a new [CustomImage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomImage]. {@macro pulumi_simpleapplicationserver_custom_image_custom_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomImage(
    String name, {
    CustomImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:simpleapplicationserver/customImage:CustomImage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.customImageName = registerOutput<String>('customImageName');
    this.description = registerOutput<String?>('description');
    this.instanceId = registerOutput<String>('instanceId');
    this.status = registerOutput<String?>('status');
    this.systemSnapshotId = registerOutput<String>('systemSnapshotId');
  }

  /// Gets an existing [CustomImage] resource's state with the given [name] and [id].
  static CustomImage get(
    String name,
    pulumi.Input<String> id, {
    CustomImageState? state,
  }) {
    return CustomImage._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomImage._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:simpleapplicationserver/customImage:CustomImage',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.customImageName = registerOutput<String>('customImageName');
    this.description = registerOutput<String?>('description');
    this.instanceId = registerOutput<String>('instanceId');
    this.status = registerOutput<String?>('status');
    this.systemSnapshotId = registerOutput<String>('systemSnapshotId');
  }
}
