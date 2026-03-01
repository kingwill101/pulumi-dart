import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_args.dart';
import 'snapshot_state.dart';

/// Provides a Simple Application Server Snapshot resource.
///
/// For information about Simple Application Server Snapshot and how to use it, see [What is Snapshot](https://www.alibabacloud.com/help/doc-detail/190452.htm).
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_example";
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const _default = alicloud.simpleapplicationserver.getImages({
///     platform: "Linux",
/// });
/// const defaultGetServerPlans = alicloud.simpleapplicationserver.getServerPlans({
///     platform: "Linux",
/// });
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
///     snapshotName: `${name}-${defaultInteger.result}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default = alicloud.simpleapplicationserver.get_images(platform="Linux")
/// default_get_server_plans = alicloud.simpleapplicationserver.get_server_plans(platform="Linux")
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
///     snapshot_name=f"{name}-{default_integer['result']}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf_example";
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var @default = AliCloud.SimpleApplicationServer.GetImages.Invoke(new()
///     {
///         Platform = "Linux",
///     });
///
///     var defaultGetServerPlans = AliCloud.SimpleApplicationServer.GetServerPlans.Invoke(new()
///     {
///         Platform = "Linux",
///     });
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
///         SnapshotName = $"{name}-{defaultInteger.Result}",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/simpleapplicationserver"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := simpleapplicationserver.GetImages(ctx, &simpleapplicationserver.GetImagesArgs{
/// 			Platform: pulumi.StringRef("Linux"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetServerPlans, err := simpleapplicationserver.GetServerPlans(ctx, &simpleapplicationserver.GetServerPlansArgs{
/// 			Platform: pulumi.StringRef("Linux"),
/// 		}, nil)
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
/// 		_, err = simpleapplicationserver.NewSnapshot(ctx, "default", &simpleapplicationserver.SnapshotArgs{
/// 			DiskId: pulumi.String(defaultGetServerDisks.ApplyT(func(defaultGetServerDisks simpleapplicationserver.GetServerDisksResult) (*string, error) {
/// 				return &defaultGetServerDisks.Ids[0], nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			SnapshotName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.simpleapplicationserver.SimpleapplicationserverFunctions;
/// import com.pulumi.alicloud.simpleapplicationserver.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.simpleapplicationserver.inputs.GetServerPlansArgs;
/// import com.pulumi.alicloud.simpleapplicationserver.Instance;
/// import com.pulumi.alicloud.simpleapplicationserver.InstanceArgs;
/// import com.pulumi.alicloud.simpleapplicationserver.inputs.GetServerDisksArgs;
/// import com.pulumi.alicloud.simpleapplicationserver.Snapshot;
/// import com.pulumi.alicloud.simpleapplicationserver.SnapshotArgs;
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
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         final var default = SimpleapplicationserverFunctions.getImages(GetImagesArgs.builder()
///             .platform("Linux")
///             .build());
///
///         final var defaultGetServerPlans = SimpleapplicationserverFunctions.getServerPlans(GetServerPlansArgs.builder()
///             .platform("Linux")
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
///             .snapshotName(String.format("%s-%s", name,defaultInteger.result()))
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
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
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
///       snapshotName: ${name}-${defaultInteger.result}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:simpleapplicationserver:getImages
///       arguments:
///         platform: Linux
///   defaultGetServerPlans:
///     fn::invoke:
///       function: alicloud:simpleapplicationserver:getServerPlans
///       arguments:
///         platform: Linux
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
/// Simple Application Server Snapshot can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:simpleapplicationserver/snapshot:Snapshot example <id>
/// ```
class Snapshot extends pulumi.CustomResource {
  /// The ID of the disk.
  late final pulumi.Output<String> diskId;
  /// The name of the snapshot. The name must be `2` to `50` characters in length. It must start with a letter and cannot start with `http://` or `https://`. It can contain letters, digits, colons (:), underscores (_), periods (.),and hyphens (-).
  late final pulumi.Output<String> snapshotName;
  /// The status of the snapshot. Valid values: `Progressing`, `Accomplished` and `Failed`.
  late final pulumi.Output<String> status;

  /// Creates a new [Snapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snapshot]. {@macro pulumi_simpleapplicationserver_snapshot_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snapshot(
    String name, {
    SnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:simpleapplicationserver/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.diskId = registerOutput<String>('diskId');
    this.snapshotName = registerOutput<String>('snapshotName');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [Snapshot] resource's state with the given [name] and [id].
  static Snapshot get(
    String name,
    pulumi.Input<String> id, {
    SnapshotState? state,
  }) {
    return Snapshot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Snapshot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:simpleapplicationserver/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.diskId = registerOutput<String>('diskId');
    this.snapshotName = registerOutput<String>('snapshotName');
    this.status = registerOutput<String>('status');
  }
}
