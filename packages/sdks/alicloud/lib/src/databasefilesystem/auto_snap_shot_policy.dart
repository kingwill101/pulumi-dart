import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_snap_shot_policy_args.dart';
import 'auto_snap_shot_policy_state.dart';

/// Provides a Dbfs Auto Snap Shot Policy resource.
///
/// For information about Dbfs Auto Snap Shot Policy and how to use it.
///
/// &gt; **NOTE:** Available since v1.202.0.
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
/// const _default = new alicloud.databasefilesystem.AutoSnapShotPolicy("default", {
///     timePoints: ["01"],
///     policyName: "tf-example",
///     retentionDays: 1,
///     repeatWeekdays: ["2"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.databasefilesystem.AutoSnapShotPolicy("default",
///     time_points=["01"],
///     policy_name="tf-example",
///     retention_days=1,
///     repeat_weekdays=["2"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.DatabaseFilesystem.AutoSnapShotPolicy("default", new()
///     {
///         TimePoints = new[]
///         {
///             "01",
///         },
///         PolicyName = "tf-example",
///         RetentionDays = 1,
///         RepeatWeekdays = new[]
///         {
///             "2",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/databasefilesystem"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := databasefilesystem.NewAutoSnapShotPolicy(ctx, "default", &databasefilesystem.AutoSnapShotPolicyArgs{
/// 			TimePoints: pulumi.StringArray{
/// 				pulumi.String("01"),
/// 			},
/// 			PolicyName:    pulumi.String("tf-example"),
/// 			RetentionDays: pulumi.Int(1),
/// 			RepeatWeekdays: pulumi.StringArray{
/// 				pulumi.String("2"),
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
/// import com.pulumi.alicloud.databasefilesystem.AutoSnapShotPolicy;
/// import com.pulumi.alicloud.databasefilesystem.AutoSnapShotPolicyArgs;
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
///         var default_ = new AutoSnapShotPolicy("default", AutoSnapShotPolicyArgs.builder()
///             .timePoints("01")
///             .policyName("tf-example")
///             .retentionDays(1)
///             .repeatWeekdays("2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:databasefilesystem:AutoSnapShotPolicy
///     properties:
///       timePoints:
///         - '01'
///       policyName: tf-example
///       retentionDays: 1
///       repeatWeekdays:
///         - '2'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Dbfs Auto Snap Shot Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:databasefilesystem/autoSnapShotPolicy:AutoSnapShotPolicy example <id>
/// ```
class AutoSnapShotPolicy extends pulumi.CustomResource {
  /// The number of database file systems set by the automatic snapshot policy.
  late final pulumi.Output<int> appliedDbfsNumber;
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// Last modification time of automatic snapshot policy
  late final pulumi.Output<String> lastModified;
  /// Automatic snapshot policy ID
  late final pulumi.Output<String> policyId;
  /// Automatic snapshot policy name
  late final pulumi.Output<String> policyName;
  /// A collection of automatic snapshots performed on several days of the week. Value range: 1~7, for example, `1` means Monday.
  late final pulumi.Output<List<String>> repeatWeekdays;
  /// Automatic snapshot retention days.
  late final pulumi.Output<int> retentionDays;
  /// Automatic snapshot policy status
  late final pulumi.Output<String> status;
  /// Automatic snapshot policy status details
  late final pulumi.Output<String> statusDetail;
  /// The set of times at which the snapshot is taken on the day the automatic snapshot is executed. Value range: `00` to `23`, representing 24 time points from 00:00 to 23:00, for example, `01` indicates 01:00.
  late final pulumi.Output<List<String>> timePoints;

  /// Creates a new [AutoSnapShotPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutoSnapShotPolicy]. {@macro pulumi_databasefilesystem_auto_snap_shot_policy_auto_snap_shot_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutoSnapShotPolicy(
    String name, {
    AutoSnapShotPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:databasefilesystem/autoSnapShotPolicy:AutoSnapShotPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appliedDbfsNumber = registerOutput<int>('appliedDbfsNumber');
    createTime = registerOutput<String>('createTime');
    lastModified = registerOutput<String>('lastModified');
    policyId = registerOutput<String>('policyId');
    policyName = registerOutput<String>('policyName');
    repeatWeekdays = registerOutput<List<String>>('repeatWeekdays');
    retentionDays = registerOutput<int>('retentionDays');
    status = registerOutput<String>('status');
    statusDetail = registerOutput<String>('statusDetail');
    timePoints = registerOutput<List<String>>('timePoints');
  }

  /// Gets an existing [AutoSnapShotPolicy] resource's state with the given [name] and [id].
  static AutoSnapShotPolicy get(
    String name,
    pulumi.Input<String> id, {
    AutoSnapShotPolicyState? state,
  }) {
    return AutoSnapShotPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AutoSnapShotPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:databasefilesystem/autoSnapShotPolicy:AutoSnapShotPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appliedDbfsNumber = registerOutput<int>('appliedDbfsNumber');
    createTime = registerOutput<String>('createTime');
    lastModified = registerOutput<String>('lastModified');
    policyId = registerOutput<String>('policyId');
    policyName = registerOutput<String>('policyName');
    repeatWeekdays = registerOutput<List<String>>('repeatWeekdays');
    retentionDays = registerOutput<int>('retentionDays');
    status = registerOutput<String>('status');
    statusDetail = registerOutput<String>('statusDetail');
    timePoints = registerOutput<List<String>>('timePoints');
  }
}
