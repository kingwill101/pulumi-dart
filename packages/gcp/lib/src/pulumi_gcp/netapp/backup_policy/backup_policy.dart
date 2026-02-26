import 'package:pulumi/pulumi.dart';
import 'backup_policy_args.dart';

/// A backup policy is used to schedule backups at regular daily, weekly, or monthly intervals.
/// Backup policies allow you to attach a backup schedule to a volume.
/// The policy defines how many backups to retain at daily, weekly, or monthly intervals.
///
///
/// To get more information about BackupPolicy, see:
///
/// * [API documentation](https://cloud.google.com/netapp/volumes/docs/reference/rest/v1/projects.locations.backupPolicies)
/// * How-to Guides
/// * [Documentation](https://cloud.google.com/netapp/volumes/docs/protect-data/about-volume-backups#about_backup_policies)
///
/// ## Example Usage
///
/// ### Netapp Backup Policy Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testBackupPolicyFull = new gcp.netapp.BackupPolicy("test_backup_policy_full", {
/// name: "test-backup-policy-full",
/// location: "us-central1",
/// dailyBackupLimit: 2,
/// weeklyBackupLimit: 1,
/// monthlyBackupLimit: 1,
/// description: "TF test backup schedule",
/// enabled: true,
/// labels: {
/// foo: "bar",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_backup_policy_full = gcp.netapp.BackupPolicy("test_backup_policy_full",
/// name="test-backup-policy-full",
/// location="us-central1",
/// daily_backup_limit=2,
/// weekly_backup_limit=1,
/// monthly_backup_limit=1,
/// description="TF test backup schedule",
/// enabled=True,
/// labels={
/// "foo": "bar",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var testBackupPolicyFull = new Gcp.Netapp.BackupPolicy("test_backup_policy_full", new()
/// {
/// Name = "test-backup-policy-full",
/// Location = "us-central1",
/// DailyBackupLimit = 2,
/// WeeklyBackupLimit = 1,
/// MonthlyBackupLimit = 1,
/// Description = "TF test backup schedule",
/// Enabled = true,
/// Labels =
/// {
/// { "foo", "bar" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/netapp"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := netapp.NewBackupPolicy(ctx, "test_backup_policy_full", &netapp.BackupPolicyArgs{
/// Name:               pulumi.String("test-backup-policy-full"),
/// Location:           pulumi.String("us-central1"),
/// DailyBackupLimit:   pulumi.Int(2),
/// WeeklyBackupLimit:  pulumi.Int(1),
/// MonthlyBackupLimit: pulumi.Int(1),
/// Description:        pulumi.String("TF test backup schedule"),
/// Enabled:            pulumi.Bool(true),
/// Labels: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
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
/// import com.pulumi.gcp.netapp.BackupPolicy;
/// import com.pulumi.gcp.netapp.BackupPolicyArgs;
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
/// var testBackupPolicyFull = new BackupPolicy("testBackupPolicyFull", BackupPolicyArgs.builder()
/// .name("test-backup-policy-full")
/// .location("us-central1")
/// .dailyBackupLimit(2)
/// .weeklyBackupLimit(1)
/// .monthlyBackupLimit(1)
/// .description("TF test backup schedule")
/// .enabled(true)
/// .labels(Map.of("foo", "bar"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testBackupPolicyFull:
/// type: gcp:netapp:BackupPolicy
/// name: test_backup_policy_full
/// properties:
/// name: test-backup-policy-full
/// location: us-central1
/// dailyBackupLimit: 2
/// weeklyBackupLimit: 1
/// monthlyBackupLimit: 1
/// description: TF test backup schedule
/// enabled: true
/// labels:
/// foo: bar
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// BackupPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backupPolicies/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, BackupPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:netapp/backupPolicy:BackupPolicy default projects/{{project}}/locations/{{location}}/backupPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/backupPolicy:BackupPolicy default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/backupPolicy:BackupPolicy default {{location}}/{{name}}
/// ```
class BackupPolicy extends CustomResource {
  /// The total number of volumes assigned by this backup policy.
  late final Output<int> assignedVolumeCount;

  /// Create time of the backup policy. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  late final Output<String> createTime;

  /// Number of daily backups to keep. Note that the minimum daily backup limit is 2.
  late final Output<int> dailyBackupLimit;

  /// An optional description of this resource.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// If enabled, make backups automatically according to the schedules.
  /// This will be applied to all volumes that have this policy attached and enforced on volume level.
  late final Output<bool?> enabled;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Name of the region for the policy to apply to.
  late final Output<String> location;

  /// Number of monthly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1.
  late final Output<int> monthlyBackupLimit;

  /// The name of the backup policy. Needs to be unique per location.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The state of the backup policy.
  late final Output<String> state;

  /// Number of weekly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1.
  late final Output<int> weeklyBackupLimit;

  BackupPolicy(
    String name, {
    BackupPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/backupPolicy:BackupPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.assignedVolumeCount = registerOutput<int>('assignedVolumeCount');
    this.createTime = registerOutput<String>('createTime');
    this.dailyBackupLimit = registerOutput<int>('dailyBackupLimit');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.enabled = registerOutput<bool?>('enabled');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.monthlyBackupLimit = registerOutput<int>('monthlyBackupLimit');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.state = registerOutput<String>('state');
    this.weeklyBackupLimit = registerOutput<int>('weeklyBackupLimit');
  }
}
