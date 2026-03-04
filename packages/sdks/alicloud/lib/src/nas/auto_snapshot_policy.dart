import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_snapshot_policy_args.dart';
import 'auto_snapshot_policy_state.dart';

/// Provides a NAS Auto Snapshot Policy resource. Automatic snapshot policy.
///
/// For information about NAS Auto Snapshot Policy and how to use it, see [What is Auto Snapshot Policy](https://www.alibabacloud.com/help/en/doc-detail/135662.html)).
///
/// &gt; **NOTE:** Available since v1.153.0.
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
/// const _default = new alicloud.nas.AutoSnapshotPolicy("default", {
///     timePoints: [
///         "0",
///         "1",
///         "2",
///     ],
///     retentionDays: 1,
///     repeatWeekdays: [
///         "2",
///         "3",
///         "4",
///     ],
///     autoSnapshotPolicyName: name,
///     fileSystemType: "extreme",
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
/// default = alicloud.nas.AutoSnapshotPolicy("default",
///     time_points=[
///         "0",
///         "1",
///         "2",
///     ],
///     retention_days=1,
///     repeat_weekdays=[
///         "2",
///         "3",
///         "4",
///     ],
///     auto_snapshot_policy_name=name,
///     file_system_type="extreme")
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
///     var @default = new AliCloud.Nas.AutoSnapshotPolicy("default", new()
///     {
///         TimePoints = new[]
///         {
///             "0",
///             "1",
///             "2",
///         },
///         RetentionDays = 1,
///         RepeatWeekdays = new[]
///         {
///             "2",
///             "3",
///             "4",
///         },
///         AutoSnapshotPolicyName = name,
///         FileSystemType = "extreme",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nas"
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
/// 		_, err := nas.NewAutoSnapshotPolicy(ctx, "default", &nas.AutoSnapshotPolicyArgs{
/// 			TimePoints: pulumi.StringArray{
/// 				pulumi.String("0"),
/// 				pulumi.String("1"),
/// 				pulumi.String("2"),
/// 			},
/// 			RetentionDays: pulumi.Int(1),
/// 			RepeatWeekdays: pulumi.StringArray{
/// 				pulumi.String("2"),
/// 				pulumi.String("3"),
/// 				pulumi.String("4"),
/// 			},
/// 			AutoSnapshotPolicyName: pulumi.String(name),
/// 			FileSystemType:         pulumi.String("extreme"),
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
/// import com.pulumi.alicloud.nas.AutoSnapshotPolicy;
/// import com.pulumi.alicloud.nas.AutoSnapshotPolicyArgs;
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
///         var default_ = new AutoSnapshotPolicy("default", AutoSnapshotPolicyArgs.builder()
///             .timePoints(
///                 "0",
///                 "1",
///                 "2")
///             .retentionDays(1)
///             .repeatWeekdays(
///                 "2",
///                 "3",
///                 "4")
///             .autoSnapshotPolicyName(name)
///             .fileSystemType("extreme")
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
///     type: alicloud:nas:AutoSnapshotPolicy
///     properties:
///       timePoints:
///         - '0'
///         - '1'
///         - '2'
///       retentionDays: '1'
///       repeatWeekdays:
///         - '2'
///         - '3'
///         - '4'
///       autoSnapshotPolicyName: ${name}
///       fileSystemType: extreme
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// NAS Auto Snapshot Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:nas/autoSnapshotPolicy:AutoSnapshotPolicy example <id>
/// ```
class AutoSnapshotPolicy extends pulumi.CustomResource {
  /// The name of the automatic snapshot policy. Limits:
  /// - The name must be `2` to `128` characters in length,
  /// - The name must start with a letter.
  /// - The name can contain digits, colons (:), underscores (_), and hyphens (-). The name cannot start with `http://` or `https://`.
  /// - The value of this parameter is empty by default.
  late final pulumi.Output<String?> autoSnapshotPolicyName;

  /// Creation time.
  late final pulumi.Output<String> createTime;

  /// The file system type.
  late final pulumi.Output<String> fileSystemType;

  /// The day on which an auto snapshot is created.
  /// - A maximum of 7 time points can be selected.
  /// - The format is  an JSON array of ["1", "2", … "7"]  and the time points are separated by commas (,).
  late final pulumi.Output<List<String>> repeatWeekdays;

  /// The number of days for which you want to retain auto snapshots. Unit: days. Valid values:
  /// - `-1`: the default value. Auto snapshots are permanently retained. After the number of auto snapshots exceeds the upper limit, the earliest auto snapshot is automatically deleted.
  late final pulumi.Output<int> retentionDays;

  /// The status of the automatic snapshot policy.
  late final pulumi.Output<String> status;

  /// The point in time at which an auto snapshot is created.
  /// - A maximum of 24 time points can be selected.
  /// - The format is  an JSON array of ["0", "1", … "23"] and the time points are separated by commas (,).
  late final pulumi.Output<List<String>> timePoints;

  /// Creates a new [AutoSnapshotPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutoSnapshotPolicy]. {@macro pulumi_nas_auto_snapshot_policy_auto_snapshot_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutoSnapshotPolicy(
    String name, {
    AutoSnapshotPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:nas/autoSnapshotPolicy:AutoSnapshotPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoSnapshotPolicyName = registerOutput<String?>('autoSnapshotPolicyName');
    createTime = registerOutput<String>('createTime');
    fileSystemType = registerOutput<String>('fileSystemType');
    repeatWeekdays = registerOutput<List<String>>('repeatWeekdays');
    retentionDays = registerOutput<int>('retentionDays');
    status = registerOutput<String>('status');
    timePoints = registerOutput<List<String>>('timePoints');
  }

  /// Gets an existing [AutoSnapshotPolicy] resource's state with the given [name] and [id].
  static AutoSnapshotPolicy get(
    String name,
    pulumi.Input<String> id, {
    AutoSnapshotPolicyState? state,
  }) {
    return AutoSnapshotPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AutoSnapshotPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:nas/autoSnapshotPolicy:AutoSnapshotPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoSnapshotPolicyName = registerOutput<String?>('autoSnapshotPolicyName');
    createTime = registerOutput<String>('createTime');
    fileSystemType = registerOutput<String>('fileSystemType');
    repeatWeekdays = registerOutput<List<String>>('repeatWeekdays');
    retentionDays = registerOutput<int>('retentionDays');
    status = registerOutput<String>('status');
    timePoints = registerOutput<List<String>>('timePoints');
  }
}
