import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_policy_args.dart';
import 'snapshot_policy_copy_encryption_configuration.dart';
import 'snapshot_policy_state.dart';

/// &gt; **DEPRECATED:** This resource has been renamed to alicloud.ecs.AutoSnapshotPolicy from version 1.117.0.
///
/// Provides an ECS snapshot policy resource.
///
/// For information about snapshot policy and how to use it, see [Snapshot](https://www.alibabacloud.com/help/doc-detail/25460.html).
///
/// &gt; **NOTE:** Available in 1.42.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const sp = new alicloud.ecs.SnapshotPolicy("sp", {
///     name: "tf-testAcc-sp",
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
/// sp = alicloud.ecs.SnapshotPolicy("sp",
///     name="tf-testAcc-sp",
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
///     var sp = new AliCloud.Ecs.SnapshotPolicy("sp", new()
///     {
///         Name = "tf-testAcc-sp",
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
/// 		_, err := ecs.NewSnapshotPolicy(ctx, "sp", &ecs.SnapshotPolicyArgs{
/// 			Name: pulumi.String("tf-testAcc-sp"),
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
/// import com.pulumi.alicloud.ecs.SnapshotPolicy;
/// import com.pulumi.alicloud.ecs.SnapshotPolicyArgs;
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
///         var sp = new SnapshotPolicy("sp", SnapshotPolicyArgs.builder()
///             .name("tf-testAcc-sp")
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
///   sp:
///     type: alicloud:ecs:SnapshotPolicy
///     properties:
///       name: tf-testAcc-sp
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
/// Snapshot can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/snapshotPolicy:SnapshotPolicy snapshot sp-abc1234567890000
/// ```
class SnapshotPolicy extends pulumi.CustomResource {
  late final pulumi.Output<String> autoSnapshotPolicyName;
  late final pulumi.Output<int> copiedSnapshotsRetentionDays;
  late final pulumi.Output<SnapshotPolicyCopyEncryptionConfiguration?>
  copyEncryptionConfiguration;
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<bool?> enableCrossRegionCopy;

  /// The snapshot policy name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> regionId;

  /// The automatic snapshot repetition dates. The unit of measurement is day and the repeating cycle is a week. Value range: [1, 7], which represents days starting from Monday to Sunday, for example 1  indicates Monday. When you want to schedule multiple automatic snapshot tasks for a disk in a week, you can set the RepeatWeekdays to an array.
  /// - A maximum of seven time points can be selected.
  /// - The format is  an JSON array of ["1", "2", … "7"]  and the time points are separated by commas (,).
  late final pulumi.Output<List<String>> repeatWeekdays;
  late final pulumi.Output<String?> resourceGroupId;

  /// The snapshot retention time, and the unit of measurement is day. Optional values:
  /// - -1: The automatic snapshots are retained permanently.
  /// - [1, 65536]: The number of days retained.
  ///
  /// Default value: -1.
  late final pulumi.Output<int> retentionDays;
  late final pulumi.Output<String> status;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<List<String>?> targetCopyRegions;

  /// The automatic snapshot creation schedule, and the unit of measurement is hour. Value range: [0, 23], which represents from 00:00 to 24:00,  for example 1 indicates 01:00. When you want to schedule multiple automatic snapshot tasks for a disk in a day, you can set the TimePoints to an array.
  /// - A maximum of 24 time points can be selected.
  /// - The format is  an JSON array of ["0", "1", … "23"] and the time points are separated by commas (,).
  late final pulumi.Output<List<String>> timePoints;

  /// Creates a new [SnapshotPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SnapshotPolicy]. {@macro pulumi_ecs_snapshot_policy_snapshot_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SnapshotPolicy(
    String name, {
    SnapshotPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecs/snapshotPolicy:SnapshotPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoSnapshotPolicyName = registerOutput<String>('autoSnapshotPolicyName');
    copiedSnapshotsRetentionDays = registerOutput<int>(
      'copiedSnapshotsRetentionDays',
    );
    copyEncryptionConfiguration =
        registerOutput<SnapshotPolicyCopyEncryptionConfiguration?>(
          'copyEncryptionConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return SnapshotPolicyCopyEncryptionConfiguration.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
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

  /// Gets an existing [SnapshotPolicy] resource's state with the given [name] and [id].
  static SnapshotPolicy get(
    String name,
    pulumi.Input<String> id, {
    SnapshotPolicyState? state,
  }) {
    return SnapshotPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SnapshotPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecs/snapshotPolicy:SnapshotPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoSnapshotPolicyName = registerOutput<String>('autoSnapshotPolicyName');
    copiedSnapshotsRetentionDays = registerOutput<int>(
      'copiedSnapshotsRetentionDays',
    );
    copyEncryptionConfiguration =
        registerOutput<SnapshotPolicyCopyEncryptionConfiguration?>(
          'copyEncryptionConfiguration',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return SnapshotPolicyCopyEncryptionConfiguration.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
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
