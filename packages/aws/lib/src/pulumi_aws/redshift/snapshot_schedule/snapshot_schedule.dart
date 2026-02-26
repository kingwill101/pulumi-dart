import 'package:pulumi/pulumi.dart';
import 'snapshot_schedule_args.dart';

/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.redshift.SnapshotSchedule("default", {
/// identifier: "tf-redshift-snapshot-schedule",
/// definitions: ["rate(12 hours)"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.redshift.SnapshotSchedule("default",
/// identifier="tf-redshift-snapshot-schedule",
/// definitions=["rate(12 hours)"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Aws.RedShift.SnapshotSchedule("default", new()
/// {
/// Identifier = "tf-redshift-snapshot-schedule",
/// Definitions = new[]
/// {
/// "rate(12 hours)",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := redshift.NewSnapshotSchedule(ctx, "default", &redshift.SnapshotScheduleArgs{
/// Identifier: pulumi.String("tf-redshift-snapshot-schedule"),
/// Definitions: pulumi.StringArray{
/// pulumi.String("rate(12 hours)"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var default_ = new SnapshotSchedule("default", SnapshotScheduleArgs.builder()
/// .identifier("tf-redshift-snapshot-schedule")
/// .definitions("rate(12 hours)")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: aws:redshift:SnapshotSchedule
/// properties:
/// identifier: tf-redshift-snapshot-schedule
/// definitions:
/// - rate(12 hours)
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Snapshot Schedule using the <span pulumi-lang-nodejs="`identifier`" pulumi-lang-dotnet="`Identifier`" pulumi-lang-go="`identifier`" pulumi-lang-python="`identifier`" pulumi-lang-yaml="`identifier`" pulumi-lang-java="`identifier`">`identifier`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/snapshotSchedule:SnapshotSchedule default tf-redshift-snapshot-schedule
/// ```
class SnapshotSchedule extends CustomResource {
  /// Amazon Resource Name (ARN) of the Redshift Snapshot Schedule.
  late final Output<String> arn;

  /// The definition of the snapshot schedule. The definition is made up of schedule expressions, for example `cron(30 12 *)` or `rate(12 hours)`.
  late final Output<List<String>> definitions;

  /// The description of the snapshot schedule.
  late final Output<String?> description;

  /// Whether to destroy all associated clusters with this snapshot schedule on deletion. Must be enabled and applied before attempting deletion.
  late final Output<bool?> forceDestroy;

  /// The snapshot schedule identifier. If omitted, this provider will assign a random, unique identifier.
  late final Output<String> identifier;

  /// Creates a unique
  /// identifier beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`identifier`" pulumi-lang-dotnet="`Identifier`" pulumi-lang-go="`identifier`" pulumi-lang-python="`identifier`" pulumi-lang-yaml="`identifier`" pulumi-lang-java="`identifier`">`identifier`</span>.
  late final Output<String> identifierPrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  SnapshotSchedule(
    String name, {
    SnapshotScheduleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/snapshotSchedule:SnapshotSchedule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.definitions = Output.createUnknown<List<String>>();
    this.description = Output.createUnknown<String?>();
    this.forceDestroy = Output.createUnknown<bool?>();
    this.identifier = Output.createUnknown<String>();
    this.identifierPrefix = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
