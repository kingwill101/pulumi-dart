import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_schedule_args.dart';
import 'snapshot_schedule_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.redshift.SnapshotSchedule("default", {
///     identifier: "tf-redshift-snapshot-schedule",
///     definitions: ["rate(12 hours)"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.redshift.SnapshotSchedule("default",
///     identifier="tf-redshift-snapshot-schedule",
///     definitions=["rate(12 hours)"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.RedShift.SnapshotSchedule("default", new()
///     {
///         Identifier = "tf-redshift-snapshot-schedule",
///         Definitions = new[]
///         {
///             "rate(12 hours)",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshift.NewSnapshotSchedule(ctx, "default", &redshift.SnapshotScheduleArgs{
/// 			Identifier: pulumi.String("tf-redshift-snapshot-schedule"),
/// 			Definitions: pulumi.StringArray{
/// 				pulumi.String("rate(12 hours)"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_redshift_snapshotschedule" "default" {
///   identifier  = "tf-redshift-snapshot-schedule"
///   definitions = ["rate(12 hours)"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshift.SnapshotSchedule;
/// import com.pulumi.aws.redshift.SnapshotScheduleArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var default_ = new SnapshotSchedule("default", SnapshotScheduleArgs.builder()
///             .identifier("tf-redshift-snapshot-schedule")
///             .definitions("rate(12 hours)")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:redshift:SnapshotSchedule
///     properties:
///       identifier: tf-redshift-snapshot-schedule
///       definitions:
///         - rate(12 hours)
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Snapshot Schedule using the `identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/snapshotSchedule:SnapshotSchedule default tf-redshift-snapshot-schedule
/// ```
class SnapshotSchedule extends pulumi.CustomResource {
  /// ARN of the Redshift Snapshot Schedule.
  late final pulumi.Output<String> arn;
  /// The definition of the snapshot schedule. The definition is made up of schedule expressions, for example `cron(30 12 *)` or `rate(12 hours)`.
  late final pulumi.Output<List<String>> definitions;
  /// The description of the snapshot schedule.
  late final pulumi.Output<String?> description;
  /// Whether to destroy all associated clusters with this snapshot schedule on deletion. Must be enabled and applied before attempting deletion.
  late final pulumi.Output<bool?> forceDestroy;
  /// The snapshot schedule identifier. If omitted, this provider will assign a random, unique identifier.
  late final pulumi.Output<String> identifier;
  /// Creates a unique
  /// identifier beginning with the specified prefix. Conflicts with `identifier`.
  late final pulumi.Output<String> identifierPrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [SnapshotSchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SnapshotSchedule]. {@macro pulumi_redshift_snapshot_schedule_snapshot_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SnapshotSchedule(
    String name, {
    SnapshotScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/snapshotSchedule:SnapshotSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    definitions = registerOutput<List<String>>('definitions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    description = registerOutput<String?>('description');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    identifier = registerOutput<String>('identifier');
    identifierPrefix = registerOutput<String>('identifierPrefix');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [SnapshotSchedule] resource's state with the given [name] and [id].
  static SnapshotSchedule get(
    String name,
    pulumi.Input<String> id, {
    SnapshotScheduleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SnapshotSchedule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SnapshotSchedule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/snapshotSchedule:SnapshotSchedule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    definitions = registerOutput<List<String>>('definitions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    description = registerOutput<String?>('description');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    identifier = registerOutput<String>('identifier');
    identifierPrefix = registerOutput<String>('identifierPrefix');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [SnapshotSchedule] resource.
  SnapshotSchedule.reference(String urn)
    : super(
        'aws:redshift/snapshotSchedule:SnapshotSchedule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    definitions = registerOutput<List<String>>('definitions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    description = registerOutput<String?>('description');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    identifier = registerOutput<String>('identifier');
    identifierPrefix = registerOutput<String>('identifierPrefix');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
