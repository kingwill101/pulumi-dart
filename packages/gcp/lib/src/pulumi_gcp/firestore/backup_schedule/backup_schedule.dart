import 'package:pulumi/pulumi.dart';
import '../backup_schedule_weekly_recurrence/backup_schedule_weekly_recurrence.dart';
import 'backup_schedule_args.dart';

/// A backup schedule for a Cloud Firestore Database.
/// This resource is owned by the database it is backing up, and is deleted along with the database.
/// The actual backups are not though.
///
///
/// To get more information about BackupSchedule, see:
///
/// * [API documentation](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.backupSchedules)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/firestore/docs/backups)
///
/// > **Warning:** This resource creates a Firestore Backup Schedule on a project that already has
/// a Firestore database.
/// This resource is owned by the database it is backing up, and is deleted along
/// with the database. The actual backups are not though.
///
/// ## Example Usage
///
/// ### Firestore Backup Schedule Daily
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const database = new gcp.firestore.Database("database", {
/// project: "my-project-name",
/// name: "database-id",
/// locationId: "nam5",
/// type: "FIRESTORE_NATIVE",
/// deleteProtectionState: "DELETE_PROTECTION_ENABLED",
/// deletionPolicy: "DELETE",
/// });
/// const daily_backup = new gcp.firestore.BackupSchedule("daily-backup", {
/// project: "my-project-name",
/// database: database.name,
/// retention: "8467200s",
/// dailyRecurrence: {},
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// database = gcp.firestore.Database("database",
/// project="my-project-name",
/// name="database-id",
/// location_id="nam5",
/// type="FIRESTORE_NATIVE",
/// delete_protection_state="DELETE_PROTECTION_ENABLED",
/// deletion_policy="DELETE")
/// daily_backup = gcp.firestore.BackupSchedule("daily-backup",
/// project="my-project-name",
/// database=database.name,
/// retention="8467200s",
/// daily_recurrence={})
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var database = new Gcp.Firestore.Database("database", new()
/// {
/// Project = "my-project-name",
/// Name = "database-id",
/// LocationId = "nam5",
/// Type = "FIRESTORE_NATIVE",
/// DeleteProtectionState = "DELETE_PROTECTION_ENABLED",
/// DeletionPolicy = "DELETE",
/// });
///
/// var daily_backup = new Gcp.Firestore.BackupSchedule("daily-backup", new()
/// {
/// Project = "my-project-name",
/// Database = database.Name,
/// Retention = "8467200s",
/// DailyRecurrence = null,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firestore"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// database, err := firestore.NewDatabase(ctx, "database", &firestore.DatabaseArgs{
/// Project:               pulumi.String("my-project-name"),
/// Name:                  pulumi.String("database-id"),
/// LocationId:            pulumi.String("nam5"),
/// Type:                  pulumi.String("FIRESTORE_NATIVE"),
/// DeleteProtectionState: pulumi.String("DELETE_PROTECTION_ENABLED"),
/// DeletionPolicy:        pulumi.String("DELETE"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = firestore.NewBackupSchedule(ctx, "daily-backup", &firestore.BackupScheduleArgs{
/// Project:         pulumi.String("my-project-name"),
/// Database:        database.Name,
/// Retention:       pulumi.String("8467200s"),
/// DailyRecurrence: &firestore.BackupScheduleDailyRecurrenceArgs{},
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
/// import com.pulumi.gcp.firestore.Database;
/// import com.pulumi.gcp.firestore.DatabaseArgs;
/// import com.pulumi.gcp.firestore.BackupSchedule;
/// import com.pulumi.gcp.firestore.BackupScheduleArgs;
/// import com.pulumi.gcp.firestore.inputs.BackupScheduleDailyRecurrenceArgs;
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
/// var database = new Database("database", DatabaseArgs.builder()
/// .project("my-project-name")
/// .name("database-id")
/// .locationId("nam5")
/// .type("FIRESTORE_NATIVE")
/// .deleteProtectionState("DELETE_PROTECTION_ENABLED")
/// .deletionPolicy("DELETE")
/// .build());
///
/// var daily_backup = new BackupSchedule("daily-backup", BackupScheduleArgs.builder()
/// .project("my-project-name")
/// .database(database.name())
/// .retention("8467200s")
/// .dailyRecurrence(BackupScheduleDailyRecurrenceArgs.builder()
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// database:
/// type: gcp:firestore:Database
/// properties:
/// project: my-project-name
/// name: database-id
/// locationId: nam5
/// type: FIRESTORE_NATIVE
/// deleteProtectionState: DELETE_PROTECTION_ENABLED
/// deletionPolicy: DELETE
/// daily-backup:
/// type: gcp:firestore:BackupSchedule
/// properties:
/// project: my-project-name
/// database: ${database.name}
/// retention: 8467200s
/// dailyRecurrence: {}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Firestore Backup Schedule Weekly
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const database = new gcp.firestore.Database("database", {
/// project: "my-project-name",
/// name: "database-id",
/// locationId: "nam5",
/// type: "FIRESTORE_NATIVE",
/// deleteProtectionState: "DELETE_PROTECTION_ENABLED",
/// deletionPolicy: "DELETE",
/// });
/// const weekly_backup = new gcp.firestore.BackupSchedule("weekly-backup", {
/// project: "my-project-name",
/// database: database.name,
/// retention: "8467200s",
/// weeklyRecurrence: {
/// day: "SUNDAY",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// database = gcp.firestore.Database("database",
/// project="my-project-name",
/// name="database-id",
/// location_id="nam5",
/// type="FIRESTORE_NATIVE",
/// delete_protection_state="DELETE_PROTECTION_ENABLED",
/// deletion_policy="DELETE")
/// weekly_backup = gcp.firestore.BackupSchedule("weekly-backup",
/// project="my-project-name",
/// database=database.name,
/// retention="8467200s",
/// weekly_recurrence={
/// "day": "SUNDAY",
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
/// var database = new Gcp.Firestore.Database("database", new()
/// {
/// Project = "my-project-name",
/// Name = "database-id",
/// LocationId = "nam5",
/// Type = "FIRESTORE_NATIVE",
/// DeleteProtectionState = "DELETE_PROTECTION_ENABLED",
/// DeletionPolicy = "DELETE",
/// });
///
/// var weekly_backup = new Gcp.Firestore.BackupSchedule("weekly-backup", new()
/// {
/// Project = "my-project-name",
/// Database = database.Name,
/// Retention = "8467200s",
/// WeeklyRecurrence = new Gcp.Firestore.Inputs.BackupScheduleWeeklyRecurrenceArgs
/// {
/// Day = "SUNDAY",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firestore"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// database, err := firestore.NewDatabase(ctx, "database", &firestore.DatabaseArgs{
/// Project:               pulumi.String("my-project-name"),
/// Name:                  pulumi.String("database-id"),
/// LocationId:            pulumi.String("nam5"),
/// Type:                  pulumi.String("FIRESTORE_NATIVE"),
/// DeleteProtectionState: pulumi.String("DELETE_PROTECTION_ENABLED"),
/// DeletionPolicy:        pulumi.String("DELETE"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = firestore.NewBackupSchedule(ctx, "weekly-backup", &firestore.BackupScheduleArgs{
/// Project:   pulumi.String("my-project-name"),
/// Database:  database.Name,
/// Retention: pulumi.String("8467200s"),
/// WeeklyRecurrence: &firestore.BackupScheduleWeeklyRecurrenceArgs{
/// Day: pulumi.String("SUNDAY"),
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
/// import com.pulumi.gcp.firestore.Database;
/// import com.pulumi.gcp.firestore.DatabaseArgs;
/// import com.pulumi.gcp.firestore.BackupSchedule;
/// import com.pulumi.gcp.firestore.BackupScheduleArgs;
/// import com.pulumi.gcp.firestore.inputs.BackupScheduleWeeklyRecurrenceArgs;
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
/// var database = new Database("database", DatabaseArgs.builder()
/// .project("my-project-name")
/// .name("database-id")
/// .locationId("nam5")
/// .type("FIRESTORE_NATIVE")
/// .deleteProtectionState("DELETE_PROTECTION_ENABLED")
/// .deletionPolicy("DELETE")
/// .build());
///
/// var weekly_backup = new BackupSchedule("weekly-backup", BackupScheduleArgs.builder()
/// .project("my-project-name")
/// .database(database.name())
/// .retention("8467200s")
/// .weeklyRecurrence(BackupScheduleWeeklyRecurrenceArgs.builder()
/// .day("SUNDAY")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// database:
/// type: gcp:firestore:Database
/// properties:
/// project: my-project-name
/// name: database-id
/// locationId: nam5
/// type: FIRESTORE_NATIVE
/// deleteProtectionState: DELETE_PROTECTION_ENABLED
/// deletionPolicy: DELETE
/// weekly-backup:
/// type: gcp:firestore:BackupSchedule
/// properties:
/// project: my-project-name
/// database: ${database.name}
/// retention: 8467200s
/// weeklyRecurrence:
/// day: SUNDAY
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// BackupSchedule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/databases/{{database}}/backupSchedules/{{name}}`
///
/// * `{{project}}/{{database}}/{{name}}`
///
/// * `{{database}}/{{name}}`
///
/// When using the `pulumi import` command, BackupSchedule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firestore/backupSchedule:BackupSchedule default projects/{{project}}/databases/{{database}}/backupSchedules/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firestore/backupSchedule:BackupSchedule default {{project}}/{{database}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firestore/backupSchedule:BackupSchedule default {{database}}/{{name}}
/// ```
class BackupSchedule extends CustomResource {
  /// For a schedule that runs daily.
  late final Output<Map<String, dynamic>?> dailyRecurrence;

  /// The Firestore database id. Defaults to `"(default)"`.
  late final Output<String?> database;

  /// The unique backup schedule identifier across all locations and databases for the given project. Format:
  /// `projects/{{project}}/databases/{{database}}/backupSchedules/{{backupSchedule}}`
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  /// You can set this to a value up to 14 weeks.
  late final Output<String> retention;

  /// For a schedule that runs weekly on a specific day.
  /// Structure is documented below.
  late final Output<BackupScheduleWeeklyRecurrence?> weeklyRecurrence;

  BackupSchedule(
    String name, {
    BackupScheduleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:firestore/backupSchedule:BackupSchedule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dailyRecurrence = Output.createUnknown<Map<String, dynamic>?>();
    this.database = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.retention = Output.createUnknown<String>();
    this.weeklyRecurrence =
        Output.createUnknown<BackupScheduleWeeklyRecurrence?>();
  }
}
