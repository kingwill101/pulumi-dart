import 'package:pulumi/pulumi.dart';
import '../backup_schedule_encryption_config/backup_schedule_encryption_config.dart';
import '../backup_schedule_spec/backup_schedule_spec.dart';
import 'backup_schedule_args2.dart';

/// A backup schedule for a Cloud Spanner Database.
/// This resource is owned by the database it is backing up, and is deleted along with the database.
/// The actual backups are not though.
///
///
/// To get more information about BackupSchedule, see:
///
/// * [API documentation](https://cloud.google.com/spanner/docs/reference/rest/v1/projects.instances.databases.backupSchedules)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/spanner/docs/backup)
///
/// > **Warning:** This resource creates a Spanner Backup Schedule on a project that already has
/// a Spanner database.
/// This resource is owned by the database it is backing up, and is deleted along
/// with the database. The actual backups are not though.
///
/// ## Example Usage
///
/// ### Spanner Backup Schedule Daily Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const main = new gcp.spanner.Instance("main", {
/// name: "instance-id",
/// config: "regional-europe-west1",
/// displayName: "main-instance",
/// numNodes: 1,
/// });
/// const database = new gcp.spanner.Database("database", {
/// instance: main.name,
/// name: "database-id",
/// versionRetentionPeriod: "3d",
/// ddls: [
/// "CREATE TABLE t1 (t1 INT64 NOT NULL,) PRIMARY KEY(t1)",
/// "CREATE TABLE t2 (t2 INT64 NOT NULL,) PRIMARY KEY(t2)",
/// ],
/// deletionProtection: true,
/// });
/// const full_backup = new gcp.spanner.BackupSchedule("full-backup", {
/// instance: main.name,
/// database: database.name,
/// name: "backup-schedule-id",
/// retentionDuration: "31620000s",
/// spec: {
/// cronSpec: {
/// text: "0 12 * * *",
/// },
/// },
/// fullBackupSpec: {},
/// encryptionConfig: {
/// encryptionType: "USE_DATABASE_ENCRYPTION",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// main = gcp.spanner.Instance("main",
/// name="instance-id",
/// config="regional-europe-west1",
/// display_name="main-instance",
/// num_nodes=1)
/// database = gcp.spanner.Database("database",
/// instance=main.name,
/// name="database-id",
/// version_retention_period="3d",
/// ddls=[
/// "CREATE TABLE t1 (t1 INT64 NOT NULL,) PRIMARY KEY(t1)",
/// "CREATE TABLE t2 (t2 INT64 NOT NULL,) PRIMARY KEY(t2)",
/// ],
/// deletion_protection=True)
/// full_backup = gcp.spanner.BackupSchedule("full-backup",
/// instance=main.name,
/// database=database.name,
/// name="backup-schedule-id",
/// retention_duration="31620000s",
/// spec={
/// "cron_spec": {
/// "text": "0 12 * * *",
/// },
/// },
/// full_backup_spec={},
/// encryption_config={
/// "encryption_type": "USE_DATABASE_ENCRYPTION",
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
/// var main = new Gcp.Spanner.Instance("main", new()
/// {
/// Name = "instance-id",
/// Config = "regional-europe-west1",
/// DisplayName = "main-instance",
/// NumNodes = 1,
/// });
///
/// var database = new Gcp.Spanner.Database("database", new()
/// {
/// Instance = main.Name,
/// Name = "database-id",
/// VersionRetentionPeriod = "3d",
/// Ddls = new[]
/// {
/// "CREATE TABLE t1 (t1 INT64 NOT NULL,) PRIMARY KEY(t1)",
/// "CREATE TABLE t2 (t2 INT64 NOT NULL,) PRIMARY KEY(t2)",
/// },
/// DeletionProtection = true,
/// });
///
/// var full_backup = new Gcp.Spanner.BackupSchedule("full-backup", new()
/// {
/// Instance = main.Name,
/// Database = database.Name,
/// Name = "backup-schedule-id",
/// RetentionDuration = "31620000s",
/// Spec = new Gcp.Spanner.Inputs.BackupScheduleSpecArgs
/// {
/// CronSpec = new Gcp.Spanner.Inputs.BackupScheduleSpecCronSpecArgs
/// {
/// Text = "0 12 * * *",
/// },
/// },
/// FullBackupSpec = null,
/// EncryptionConfig = new Gcp.Spanner.Inputs.BackupScheduleEncryptionConfigArgs
/// {
/// EncryptionType = "USE_DATABASE_ENCRYPTION",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// main, err := spanner.NewInstance(ctx, "main", &spanner.InstanceArgs{
/// Name:        pulumi.String("instance-id"),
/// Config:      pulumi.String("regional-europe-west1"),
/// DisplayName: pulumi.String("main-instance"),
/// NumNodes:    pulumi.Int(1),
/// })
/// if err != nil {
/// return err
/// }
/// database, err := spanner.NewDatabase(ctx, "database", &spanner.DatabaseArgs{
/// Instance:               main.Name,
/// Name:                   pulumi.String("database-id"),
/// VersionRetentionPeriod: pulumi.String("3d"),
/// Ddls: pulumi.StringArray{
/// pulumi.String("CREATE TABLE t1 (t1 INT64 NOT NULL,) PRIMARY KEY(t1)"),
/// pulumi.String("CREATE TABLE t2 (t2 INT64 NOT NULL,) PRIMARY KEY(t2)"),
/// },
/// DeletionProtection: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = spanner.NewBackupSchedule(ctx, "full-backup", &spanner.BackupScheduleArgs{
/// Instance:          main.Name,
/// Database:          database.Name,
/// Name:              pulumi.String("backup-schedule-id"),
/// RetentionDuration: pulumi.String("31620000s"),
/// Spec: &spanner.BackupScheduleSpecArgs{
/// CronSpec: &spanner.BackupScheduleSpecCronSpecArgs{
/// Text: pulumi.String("0 12 * * *"),
/// },
/// },
/// FullBackupSpec: &spanner.BackupScheduleFullBackupSpecArgs{},
/// EncryptionConfig: &spanner.BackupScheduleEncryptionConfigArgs{
/// EncryptionType: pulumi.String("USE_DATABASE_ENCRYPTION"),
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
/// import com.pulumi.gcp.spanner.Instance;
/// import com.pulumi.gcp.spanner.InstanceArgs;
/// import com.pulumi.gcp.spanner.Database;
/// import com.pulumi.gcp.spanner.DatabaseArgs;
/// import com.pulumi.gcp.spanner.BackupSchedule;
/// import com.pulumi.gcp.spanner.BackupScheduleArgs;
/// import com.pulumi.gcp.spanner.inputs.BackupScheduleSpecArgs;
/// import com.pulumi.gcp.spanner.inputs.BackupScheduleSpecCronSpecArgs;
/// import com.pulumi.gcp.spanner.inputs.BackupScheduleFullBackupSpecArgs;
/// import com.pulumi.gcp.spanner.inputs.BackupScheduleEncryptionConfigArgs;
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
/// var main = new Instance("main", InstanceArgs.builder()
/// .name("instance-id")
/// .config("regional-europe-west1")
/// .displayName("main-instance")
/// .numNodes(1)
/// .build());
///
/// var database = new Database("database", DatabaseArgs.builder()
/// .instance(main.name())
/// .name("database-id")
/// .versionRetentionPeriod("3d")
/// .ddls(
/// "CREATE TABLE t1 (t1 INT64 NOT NULL,) PRIMARY KEY(t1)",
/// "CREATE TABLE t2 (t2 INT64 NOT NULL,) PRIMARY KEY(t2)")
/// .deletionProtection(true)
/// .build());
///
/// var full_backup = new BackupSchedule("full-backup", BackupScheduleArgs.builder()
/// .instance(main.name())
/// .database(database.name())
/// .name("backup-schedule-id")
/// .retentionDuration("31620000s")
/// .spec(BackupScheduleSpecArgs.builder()
/// .cronSpec(BackupScheduleSpecCronSpecArgs.builder()
/// .text("0 12 * * *")
/// .build())
/// .build())
/// .fullBackupSpec(BackupScheduleFullBackupSpecArgs.builder()
/// .build())
/// .encryptionConfig(BackupScheduleEncryptionConfigArgs.builder()
/// .encryptionType("USE_DATABASE_ENCRYPTION")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// main:
/// type: gcp:spanner:Instance
/// properties:
/// name: instance-id
/// config: regional-europe-west1
/// displayName: main-instance
/// numNodes: 1
/// database:
/// type: gcp:spanner:Database
/// properties:
/// instance: ${main.name}
/// name: database-id
/// versionRetentionPeriod: 3d
/// ddls:
/// - CREATE TABLE t1 (t1 INT64 NOT NULL,) PRIMARY KEY(t1)
/// - CREATE TABLE t2 (t2 INT64 NOT NULL,) PRIMARY KEY(t2)
/// deletionProtection: true
/// full-backup:
/// type: gcp:spanner:BackupSchedule
/// properties:
/// instance: ${main.name}
/// database: ${database.name}
/// name: backup-schedule-id
/// retentionDuration: 31620000s
/// spec:
/// cronSpec:
/// text: 0 12 * * *
/// fullBackupSpec: {}
/// encryptionConfig:
/// encryptionType: USE_DATABASE_ENCRYPTION
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Spanner Backup Schedule Daily Incremental
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const main = new gcp.spanner.Instance("main", {
/// name: "instance-id",
/// config: "regional-europe-west1",
/// displayName: "main-instance",
/// numNodes: 1,
/// edition: "ENTERPRISE",
/// });
/// const database = new gcp.spanner.Database("database", {
/// instance: main.name,
/// name: "database-id",
/// versionRetentionPeriod: "3d",
/// ddls: [
/// "CREATE TABLE t1 (t1 INT64 NOT NULL,) PRIMARY KEY(t1)",
/// "CREATE TABLE t2 (t2 INT64 NOT NULL,) PRIMARY KEY(t2)",
/// ],
/// deletionProtection: true,
/// });
/// const incremental_backup = new gcp.spanner.BackupSchedule("incremental-backup", {
/// instance: main.name,
/// database: database.name,
/// name: "backup-schedule-id",
/// retentionDuration: "31620000s",
/// spec: {
/// cronSpec: {
/// text: "0 12 * * *",
/// },
/// },
/// incrementalBackupSpec: {},
/// encryptionConfig: {
/// encryptionType: "GOOGLE_DEFAULT_ENCRYPTION",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// main = gcp.spanner.Instance("main",
/// name="instance-id",
/// config="regional-europe-west1",
/// display_name="main-instance",
/// num_nodes=1,
/// edition="ENTERPRISE")
/// database = gcp.spanner.Database("database",
/// instance=main.name,
/// name="database-id",
/// version_retention_period="3d",
/// ddls=[
/// "CREATE TABLE t1 (t1 INT64 NOT NULL,) PRIMARY KEY(t1)",
/// "CREATE TABLE t2 (t2 INT64 NOT NULL,) PRIMARY KEY(t2)",
/// ],
/// deletion_protection=True)
/// incremental_backup = gcp.spanner.BackupSchedule("incremental-backup",
/// instance=main.name,
/// database=database.name,
/// name="backup-schedule-id",
/// retention_duration="31620000s",
/// spec={
/// "cron_spec": {
/// "text": "0 12 * * *",
/// },
/// },
/// incremental_backup_spec={},
/// encryption_config={
/// "encryption_type": "GOOGLE_DEFAULT_ENCRYPTION",
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
/// var main = new Gcp.Spanner.Instance("main", new()
/// {
/// Name = "instance-id",
/// Config = "regional-europe-west1",
/// DisplayName = "main-instance",
/// NumNodes = 1,
/// Edition = "ENTERPRISE",
/// });
///
/// var database = new Gcp.Spanner.Database("database", new()
/// {
/// Instance = main.Name,
/// Name = "database-id",
/// VersionRetentionPeriod = "3d",
/// Ddls = new[]
/// {
/// "CREATE TABLE t1 (t1 INT64 NOT NULL,) PRIMARY KEY(t1)",
/// "CREATE TABLE t2 (t2 INT64 NOT NULL,) PRIMARY KEY(t2)",
/// },
/// DeletionProtection = true,
/// });
///
/// var incremental_backup = new Gcp.Spanner.BackupSchedule("incremental-backup", new()
/// {
/// Instance = main.Name,
/// Database = database.Name,
/// Name = "backup-schedule-id",
/// RetentionDuration = "31620000s",
/// Spec = new Gcp.Spanner.Inputs.BackupScheduleSpecArgs
/// {
/// CronSpec = new Gcp.Spanner.Inputs.BackupScheduleSpecCronSpecArgs
/// {
/// Text = "0 12 * * *",
/// },
/// },
/// IncrementalBackupSpec = null,
/// EncryptionConfig = new Gcp.Spanner.Inputs.BackupScheduleEncryptionConfigArgs
/// {
/// EncryptionType = "GOOGLE_DEFAULT_ENCRYPTION",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/spanner"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// main, err := spanner.NewInstance(ctx, "main", &spanner.InstanceArgs{
/// Name:        pulumi.String("instance-id"),
/// Config:      pulumi.String("regional-europe-west1"),
/// DisplayName: pulumi.String("main-instance"),
/// NumNodes:    pulumi.Int(1),
/// Edition:     pulumi.String("ENTERPRISE"),
/// })
/// if err != nil {
/// return err
/// }
/// database, err := spanner.NewDatabase(ctx, "database", &spanner.DatabaseArgs{
/// Instance:               main.Name,
/// Name:                   pulumi.String("database-id"),
/// VersionRetentionPeriod: pulumi.String("3d"),
/// Ddls: pulumi.StringArray{
/// pulumi.String("CREATE TABLE t1 (t1 INT64 NOT NULL,) PRIMARY KEY(t1)"),
/// pulumi.String("CREATE TABLE t2 (t2 INT64 NOT NULL,) PRIMARY KEY(t2)"),
/// },
/// DeletionProtection: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = spanner.NewBackupSchedule(ctx, "incremental-backup", &spanner.BackupScheduleArgs{
/// Instance:          main.Name,
/// Database:          database.Name,
/// Name:              pulumi.String("backup-schedule-id"),
/// RetentionDuration: pulumi.String("31620000s"),
/// Spec: &spanner.BackupScheduleSpecArgs{
/// CronSpec: &spanner.BackupScheduleSpecCronSpecArgs{
/// Text: pulumi.String("0 12 * * *"),
/// },
/// },
/// IncrementalBackupSpec: &spanner.BackupScheduleIncrementalBackupSpecArgs{},
/// EncryptionConfig: &spanner.BackupScheduleEncryptionConfigArgs{
/// EncryptionType: pulumi.String("GOOGLE_DEFAULT_ENCRYPTION"),
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
/// import com.pulumi.gcp.spanner.Instance;
/// import com.pulumi.gcp.spanner.InstanceArgs;
/// import com.pulumi.gcp.spanner.Database;
/// import com.pulumi.gcp.spanner.DatabaseArgs;
/// import com.pulumi.gcp.spanner.BackupSchedule;
/// import com.pulumi.gcp.spanner.BackupScheduleArgs;
/// import com.pulumi.gcp.spanner.inputs.BackupScheduleSpecArgs;
/// import com.pulumi.gcp.spanner.inputs.BackupScheduleSpecCronSpecArgs;
/// import com.pulumi.gcp.spanner.inputs.BackupScheduleIncrementalBackupSpecArgs;
/// import com.pulumi.gcp.spanner.inputs.BackupScheduleEncryptionConfigArgs;
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
/// var main = new Instance("main", InstanceArgs.builder()
/// .name("instance-id")
/// .config("regional-europe-west1")
/// .displayName("main-instance")
/// .numNodes(1)
/// .edition("ENTERPRISE")
/// .build());
///
/// var database = new Database("database", DatabaseArgs.builder()
/// .instance(main.name())
/// .name("database-id")
/// .versionRetentionPeriod("3d")
/// .ddls(
/// "CREATE TABLE t1 (t1 INT64 NOT NULL,) PRIMARY KEY(t1)",
/// "CREATE TABLE t2 (t2 INT64 NOT NULL,) PRIMARY KEY(t2)")
/// .deletionProtection(true)
/// .build());
///
/// var incremental_backup = new BackupSchedule("incremental-backup", BackupScheduleArgs.builder()
/// .instance(main.name())
/// .database(database.name())
/// .name("backup-schedule-id")
/// .retentionDuration("31620000s")
/// .spec(BackupScheduleSpecArgs.builder()
/// .cronSpec(BackupScheduleSpecCronSpecArgs.builder()
/// .text("0 12 * * *")
/// .build())
/// .build())
/// .incrementalBackupSpec(BackupScheduleIncrementalBackupSpecArgs.builder()
/// .build())
/// .encryptionConfig(BackupScheduleEncryptionConfigArgs.builder()
/// .encryptionType("GOOGLE_DEFAULT_ENCRYPTION")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// main:
/// type: gcp:spanner:Instance
/// properties:
/// name: instance-id
/// config: regional-europe-west1
/// displayName: main-instance
/// numNodes: 1
/// edition: ENTERPRISE
/// database:
/// type: gcp:spanner:Database
/// properties:
/// instance: ${main.name}
/// name: database-id
/// versionRetentionPeriod: 3d
/// ddls:
/// - CREATE TABLE t1 (t1 INT64 NOT NULL,) PRIMARY KEY(t1)
/// - CREATE TABLE t2 (t2 INT64 NOT NULL,) PRIMARY KEY(t2)
/// deletionProtection: true
/// incremental-backup:
/// type: gcp:spanner:BackupSchedule
/// properties:
/// instance: ${main.name}
/// database: ${database.name}
/// name: backup-schedule-id
/// retentionDuration: 31620000s
/// spec:
/// cronSpec:
/// text: 0 12 * * *
/// incrementalBackupSpec: {}
/// encryptionConfig:
/// encryptionType: GOOGLE_DEFAULT_ENCRYPTION
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// BackupSchedule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{instance}}/databases/{{database}}/backupSchedules/{{name}}`
///
/// * `{{project}}/{{instance}}/{{database}}/{{name}}`
///
/// * `{{instance}}/{{database}}/{{name}}`
///
/// When using the `pulumi import` command, BackupSchedule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:spanner/backupSchedule:BackupSchedule default projects/{{project}}/instances/{{instance}}/databases/{{database}}/backupSchedules/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:spanner/backupSchedule:BackupSchedule default {{project}}/{{instance}}/{{database}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:spanner/backupSchedule:BackupSchedule default {{instance}}/{{database}}/{{name}}
/// ```
class BackupSchedule2 extends CustomResource {
  /// The database to create the backup schedule on.
  late final Output<String> database;

  /// Configuration for the encryption of the backup schedule.
  /// Structure is documented below.
  late final Output<BackupScheduleEncryptionConfig> encryptionConfig;

  /// The schedule creates only full backups..
  late final Output<Map<String, dynamic>?> fullBackupSpec;

  /// The schedule creates incremental backup chains.
  late final Output<Map<String, dynamic>?> incrementalBackupSpec;

  /// The instance to create the database on.
  late final Output<String> instance;

  /// A unique identifier for the backup schedule, which cannot be changed after
  /// the backup schedule is created. Values are of the form [a-z][-a-z0-9]*[a-z0-9].
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: '3.5s'.
  /// You can set this to a value up to 366 days.
  late final Output<String> retentionDuration;

  /// Defines specifications of the backup schedule.
  /// Structure is documented below.
  late final Output<BackupScheduleSpec?> spec;

  BackupSchedule2(
    String name, {
    BackupScheduleArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:spanner/backupSchedule:BackupSchedule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.database = Output.createUnknown<String>();
    this.encryptionConfig =
        Output.createUnknown<BackupScheduleEncryptionConfig>();
    this.fullBackupSpec = Output.createUnknown<Map<String, dynamic>?>();
    this.incrementalBackupSpec = Output.createUnknown<Map<String, dynamic>?>();
    this.instance = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.retentionDuration = Output.createUnknown<String>();
    this.spec = Output.createUnknown<BackupScheduleSpec?>();
  }
}
