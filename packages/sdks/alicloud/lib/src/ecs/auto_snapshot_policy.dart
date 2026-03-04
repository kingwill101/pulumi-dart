import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_snapshot_policy_args.dart';
import 'auto_snapshot_policy_copy_encryption_configuration.dart';
import 'auto_snapshot_policy_state.dart';

/// Provides a ECS Auto Snapshot Policy resource.
///
/// For information about ECS Auto Snapshot Policy and how to use it, see [What is Auto Snapshot Policy](https://www.alibabacloud.com/help/en/doc-detail/25527.htm).
///
/// &gt; **NOTE:** Available since v1.117.0.
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
/// const example = new alicloud.ecs.AutoSnapshotPolicy("example", {
///     name: "terraform-example",
///     repeatWeekdays: [
///         "1",
///         "2",
///         "3",
///     ],
///     retentionDays: -1,
///     timePoints: [
///         "1",
///         "22",
///         "23",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ecs.AutoSnapshotPolicy("example",
///     name="terraform-example",
///     repeat_weekdays=[
///         "1",
///         "2",
///         "3",
///     ],
///     retention_days=-1,
///     time_points=[
///         "1",
///         "22",
///         "23",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Ecs.AutoSnapshotPolicy("example", new()
///     {
///         Name = "terraform-example",
///         RepeatWeekdays = new[]
///         {
///             "1",
///             "2",
///             "3",
///         },
///         RetentionDays = -1,
///         TimePoints = new[]
///         {
///             "1",
///             "22",
///             "23",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.NewAutoSnapshotPolicy(ctx, "example", &ecs.AutoSnapshotPolicyArgs{
/// 			Name: pulumi.String("terraform-example"),
/// 			RepeatWeekdays: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 				pulumi.String("2"),
/// 				pulumi.String("3"),
/// 			},
/// 			RetentionDays: pulumi.Int(-1),
/// 			TimePoints: pulumi.StringArray{
/// 				pulumi.String("1"),
/// 				pulumi.String("22"),
/// 				pulumi.String("23"),
/// 			},
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
/// import com.pulumi.alicloud.ecs.AutoSnapshotPolicy;
/// import com.pulumi.alicloud.ecs.AutoSnapshotPolicyArgs;
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
///         var example = new AutoSnapshotPolicy("example", AutoSnapshotPolicyArgs.builder()
///             .name("terraform-example")
///             .repeatWeekdays(
///                 "1",
///                 "2",
///                 "3")
///             .retentionDays(-1)
///             .timePoints(
///                 "1",
///                 "22",
///                 "23")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:ecs:AutoSnapshotPolicy
///     properties:
///       name: terraform-example
///       repeatWeekdays:
///         - '1'
///         - '2'
///         - '3'
///       retentionDays: -1
///       timePoints:
///         - '1'
///         - '22'
///         - '23'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECS Auto Snapshot Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/autoSnapshotPolicy:AutoSnapshotPolicy example <id>
/// ```
class AutoSnapshotPolicy extends pulumi.CustomResource {
  /// The name of the automatic snapshot policy. The name must be 2 to 128 characters in length. The name must start with a letter and cannot start with http:// or https://. The name can contain letters, digits, colons (:), underscores (_), and hyphens (-).
  late final pulumi.Output<String> autoSnapshotPolicyName;

  /// The retention period of the snapshot copy in the destination region. Unit: days. Valid values:
  /// - `-1`: The snapshot copy is retained until it is deleted.
  late final pulumi.Output<int> copiedSnapshotsRetentionDays;

  /// The encryption parameters for cross-region snapshot replication. See `copy_encryption_configuration` below.
  late final pulumi.Output<AutoSnapshotPolicyCopyEncryptionConfiguration?>
  copyEncryptionConfiguration;

  /// (Available since v1.236.0) The time when the automatic snapshot policy was created. The time follows the ISO 8601 standard in the yyyy-MM-ddThh:mm:ssZ format. The time is displayed in UTC.
  late final pulumi.Output<String> createTime;

  /// Specifies whether to enable cross-region replication for snapshots. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> enableCrossRegionCopy;

  /// . Field `name` has been deprecated from provider version 1.236.0. New field `auto_snapshot_policy_name` instead.
  late final pulumi.Output<String> name;

  /// (Available since v1.236.0) The region ID of the automatic snapshot policy.
  late final pulumi.Output<String> regionId;

  /// The days of the week on which to create automatic snapshots. Valid values: `1` to `7`, which correspond to the days of the week. For example, `1` indicates Monday. One or more days can be specified.
  late final pulumi.Output<List<String>> repeatWeekdays;

  /// The ID of the resource group. If this parameter is specified to query resources, up to 1,000 resources that belong to the specified resource group can be displayed in the response.
  late final pulumi.Output<String?> resourceGroupId;

  /// The retention period of the automatic snapshots. Unit: days. Valid values:
  /// - `-1`: Automatic snapshots are retained until they are deleted.
  late final pulumi.Output<int> retentionDays;

  /// The status of the automatic snapshot policy.
  late final pulumi.Output<String> status;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The destination region to which to copy the snapshot. You can specify only a single destination region.
  late final pulumi.Output<List<String>?> targetCopyRegions;

  /// The points in time of the day at which to create automatic snapshots.
  ///
  /// The time is displayed in UTC+8. Unit: hours. Valid values: `0` to `23`, which correspond to the 24 points in time on the hour from 00:00:00 to 23:00:00. For example, 1 indicates 01:00:00. Multiple points in time can be specified.
  ///
  /// The parameter value is a JSON array that contains up to 24 points in time separated by commas (,). Example: ["0", "1", ... "23"].
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<List<String>> timePoints;

  /// Creates a new [AutoSnapshotPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutoSnapshotPolicy]. {@macro pulumi_ecs_auto_snapshot_policy_auto_snapshot_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutoSnapshotPolicy(
    String name, {
    AutoSnapshotPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecs/autoSnapshotPolicy:AutoSnapshotPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoSnapshotPolicyName = registerOutput<String>('autoSnapshotPolicyName');
    copiedSnapshotsRetentionDays = registerOutput<int>(
      'copiedSnapshotsRetentionDays',
    );
    copyEncryptionConfiguration =
        registerOutput<AutoSnapshotPolicyCopyEncryptionConfiguration?>(
          'copyEncryptionConfiguration',
        );
    createTime = registerOutput<String>('createTime');
    enableCrossRegionCopy = registerOutput<bool?>('enableCrossRegionCopy');
    this.name = registerOutput<String>('name');
    regionId = registerOutput<String>('regionId');
    repeatWeekdays = registerOutput<List<String>>('repeatWeekdays');
    resourceGroupId = registerOutput<String?>('resourceGroupId');
    retentionDays = registerOutput<int>('retentionDays');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    targetCopyRegions = registerOutput<List<String>?>('targetCopyRegions');
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
         'alicloud:ecs/autoSnapshotPolicy:AutoSnapshotPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoSnapshotPolicyName = registerOutput<String>('autoSnapshotPolicyName');
    copiedSnapshotsRetentionDays = registerOutput<int>(
      'copiedSnapshotsRetentionDays',
    );
    copyEncryptionConfiguration =
        registerOutput<AutoSnapshotPolicyCopyEncryptionConfiguration?>(
          'copyEncryptionConfiguration',
        );
    createTime = registerOutput<String>('createTime');
    enableCrossRegionCopy = registerOutput<bool?>('enableCrossRegionCopy');
    this.name = registerOutput<String>('name');
    regionId = registerOutput<String>('regionId');
    repeatWeekdays = registerOutput<List<String>>('repeatWeekdays');
    resourceGroupId = registerOutput<String?>('resourceGroupId');
    retentionDays = registerOutput<int>('retentionDays');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    targetCopyRegions = registerOutput<List<String>?>('targetCopyRegions');
    timePoints = registerOutput<List<String>>('timePoints');
  }
}
