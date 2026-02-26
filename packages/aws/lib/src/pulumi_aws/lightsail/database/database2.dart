import 'package:pulumi/pulumi.dart';
import 'database_args2.dart';

/// Manages a Lightsail database. Use this resource to create and manage fully managed database instances with automated backups, monitoring, and maintenance in Lightsail.
///
/// > **Note:** Lightsail is currently only supported in a limited number of AWS Regions, please see ["Regions and Availability Zones"](https://aws.amazon.com/about-aws/global-infrastructure/regional-product-services/) for more details
///
/// ## Example Usage
///
/// ### Basic MySQL Blueprint
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lightsail.Database("example", {
/// relationalDatabaseName: "example-database",
/// availabilityZone: "us-east-1a",
/// masterDatabaseName: "exampledb",
/// masterPassword: "examplepassword123",
/// masterUsername: "exampleuser",
/// blueprintId: "mysql_8_0",
/// bundleId: "micro_1_0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.Database("example",
/// relational_database_name="example-database",
/// availability_zone="us-east-1a",
/// master_database_name="exampledb",
/// master_password="examplepassword123",
/// master_username="exampleuser",
/// blueprint_id="mysql_8_0",
/// bundle_id="micro_1_0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.LightSail.Database("example", new()
/// {
/// RelationalDatabaseName = "example-database",
/// AvailabilityZone = "us-east-1a",
/// MasterDatabaseName = "exampledb",
/// MasterPassword = "examplepassword123",
/// MasterUsername = "exampleuser",
/// BlueprintId = "mysql_8_0",
/// BundleId = "micro_1_0",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lightsail.NewDatabase(ctx, "example", &lightsail.DatabaseArgs{
/// RelationalDatabaseName: pulumi.String("example-database"),
/// AvailabilityZone:       pulumi.String("us-east-1a"),
/// MasterDatabaseName:     pulumi.String("exampledb"),
/// MasterPassword:         pulumi.String("examplepassword123"),
/// MasterUsername:         pulumi.String("exampleuser"),
/// BlueprintId:            pulumi.String("mysql_8_0"),
/// BundleId:               pulumi.String("micro_1_0"),
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
/// import com.pulumi.aws.lightsail.Database;
/// import com.pulumi.aws.lightsail.DatabaseArgs;
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
/// var example = new Database("example", DatabaseArgs.builder()
/// .relationalDatabaseName("example-database")
/// .availabilityZone("us-east-1a")
/// .masterDatabaseName("exampledb")
/// .masterPassword("examplepassword123")
/// .masterUsername("exampleuser")
/// .blueprintId("mysql_8_0")
/// .bundleId("micro_1_0")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lightsail:Database
/// properties:
/// relationalDatabaseName: example-database
/// availabilityZone: us-east-1a
/// masterDatabaseName: exampledb
/// masterPassword: examplepassword123
/// masterUsername: exampleuser
/// blueprintId: mysql_8_0
/// bundleId: micro_1_0
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Basic PostgreSQL Blueprint
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lightsail.Database("example", {
/// relationalDatabaseName: "example-database",
/// availabilityZone: "us-east-1a",
/// masterDatabaseName: "exampledb",
/// masterPassword: "examplepassword123",
/// masterUsername: "exampleuser",
/// blueprintId: "postgres_12",
/// bundleId: "micro_1_0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.Database("example",
/// relational_database_name="example-database",
/// availability_zone="us-east-1a",
/// master_database_name="exampledb",
/// master_password="examplepassword123",
/// master_username="exampleuser",
/// blueprint_id="postgres_12",
/// bundle_id="micro_1_0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.LightSail.Database("example", new()
/// {
/// RelationalDatabaseName = "example-database",
/// AvailabilityZone = "us-east-1a",
/// MasterDatabaseName = "exampledb",
/// MasterPassword = "examplepassword123",
/// MasterUsername = "exampleuser",
/// BlueprintId = "postgres_12",
/// BundleId = "micro_1_0",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lightsail.NewDatabase(ctx, "example", &lightsail.DatabaseArgs{
/// RelationalDatabaseName: pulumi.String("example-database"),
/// AvailabilityZone:       pulumi.String("us-east-1a"),
/// MasterDatabaseName:     pulumi.String("exampledb"),
/// MasterPassword:         pulumi.String("examplepassword123"),
/// MasterUsername:         pulumi.String("exampleuser"),
/// BlueprintId:            pulumi.String("postgres_12"),
/// BundleId:               pulumi.String("micro_1_0"),
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
/// import com.pulumi.aws.lightsail.Database;
/// import com.pulumi.aws.lightsail.DatabaseArgs;
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
/// var example = new Database("example", DatabaseArgs.builder()
/// .relationalDatabaseName("example-database")
/// .availabilityZone("us-east-1a")
/// .masterDatabaseName("exampledb")
/// .masterPassword("examplepassword123")
/// .masterUsername("exampleuser")
/// .blueprintId("postgres_12")
/// .bundleId("micro_1_0")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lightsail:Database
/// properties:
/// relationalDatabaseName: example-database
/// availabilityZone: us-east-1a
/// masterDatabaseName: exampledb
/// masterPassword: examplepassword123
/// masterUsername: exampleuser
/// blueprintId: postgres_12
/// bundleId: micro_1_0
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Custom Backup and Maintenance Windows
///
/// Below is an example that sets a custom backup and maintenance window. Times are specified in UTC. This example will allow daily backups to take place between 16:00 and 16:30 each day. This example also requires any maintenance tasks (anything that would cause an outage, including changing some attributes) to take place on Tuesdays between 17:00 and 17:30. An action taken against this database that would cause an outage will wait until this time window to make the requested changes.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lightsail.Database("example", {
/// relationalDatabaseName: "example-database",
/// availabilityZone: "us-east-1a",
/// masterDatabaseName: "exampledb",
/// masterPassword: "examplepassword123",
/// masterUsername: "exampleuser",
/// blueprintId: "postgres_12",
/// bundleId: "micro_1_0",
/// preferredBackupWindow: "16:00-16:30",
/// preferredMaintenanceWindow: "Tue:17:00-Tue:17:30",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.Database("example",
/// relational_database_name="example-database",
/// availability_zone="us-east-1a",
/// master_database_name="exampledb",
/// master_password="examplepassword123",
/// master_username="exampleuser",
/// blueprint_id="postgres_12",
/// bundle_id="micro_1_0",
/// preferred_backup_window="16:00-16:30",
/// preferred_maintenance_window="Tue:17:00-Tue:17:30")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.LightSail.Database("example", new()
/// {
/// RelationalDatabaseName = "example-database",
/// AvailabilityZone = "us-east-1a",
/// MasterDatabaseName = "exampledb",
/// MasterPassword = "examplepassword123",
/// MasterUsername = "exampleuser",
/// BlueprintId = "postgres_12",
/// BundleId = "micro_1_0",
/// PreferredBackupWindow = "16:00-16:30",
/// PreferredMaintenanceWindow = "Tue:17:00-Tue:17:30",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lightsail.NewDatabase(ctx, "example", &lightsail.DatabaseArgs{
/// RelationalDatabaseName:     pulumi.String("example-database"),
/// AvailabilityZone:           pulumi.String("us-east-1a"),
/// MasterDatabaseName:         pulumi.String("exampledb"),
/// MasterPassword:             pulumi.String("examplepassword123"),
/// MasterUsername:             pulumi.String("exampleuser"),
/// BlueprintId:                pulumi.String("postgres_12"),
/// BundleId:                   pulumi.String("micro_1_0"),
/// PreferredBackupWindow:      pulumi.String("16:00-16:30"),
/// PreferredMaintenanceWindow: pulumi.String("Tue:17:00-Tue:17:30"),
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
/// import com.pulumi.aws.lightsail.Database;
/// import com.pulumi.aws.lightsail.DatabaseArgs;
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
/// var example = new Database("example", DatabaseArgs.builder()
/// .relationalDatabaseName("example-database")
/// .availabilityZone("us-east-1a")
/// .masterDatabaseName("exampledb")
/// .masterPassword("examplepassword123")
/// .masterUsername("exampleuser")
/// .blueprintId("postgres_12")
/// .bundleId("micro_1_0")
/// .preferredBackupWindow("16:00-16:30")
/// .preferredMaintenanceWindow("Tue:17:00-Tue:17:30")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lightsail:Database
/// properties:
/// relationalDatabaseName: example-database
/// availabilityZone: us-east-1a
/// masterDatabaseName: exampledb
/// masterPassword: examplepassword123
/// masterUsername: exampleuser
/// blueprintId: postgres_12
/// bundleId: micro_1_0
/// preferredBackupWindow: 16:00-16:30
/// preferredMaintenanceWindow: Tue:17:00-Tue:17:30
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Final Snapshots
///
/// To enable creating a final snapshot of your database on deletion, use the <span pulumi-lang-nodejs="`finalSnapshotName`" pulumi-lang-dotnet="`FinalSnapshotName`" pulumi-lang-go="`finalSnapshotName`" pulumi-lang-python="`final_snapshot_name`" pulumi-lang-yaml="`finalSnapshotName`" pulumi-lang-java="`finalSnapshotName`">`final_snapshot_name`</span> argument to provide a name to be used for the snapshot.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lightsail.Database("example", {
/// relationalDatabaseName: "example-database",
/// availabilityZone: "us-east-1a",
/// masterDatabaseName: "exampledb",
/// masterPassword: "examplepassword123",
/// masterUsername: "exampleuser",
/// blueprintId: "postgres_12",
/// bundleId: "micro_1_0",
/// preferredBackupWindow: "16:00-16:30",
/// preferredMaintenanceWindow: "Tue:17:00-Tue:17:30",
/// finalSnapshotName: "example-final-snapshot",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.Database("example",
/// relational_database_name="example-database",
/// availability_zone="us-east-1a",
/// master_database_name="exampledb",
/// master_password="examplepassword123",
/// master_username="exampleuser",
/// blueprint_id="postgres_12",
/// bundle_id="micro_1_0",
/// preferred_backup_window="16:00-16:30",
/// preferred_maintenance_window="Tue:17:00-Tue:17:30",
/// final_snapshot_name="example-final-snapshot")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.LightSail.Database("example", new()
/// {
/// RelationalDatabaseName = "example-database",
/// AvailabilityZone = "us-east-1a",
/// MasterDatabaseName = "exampledb",
/// MasterPassword = "examplepassword123",
/// MasterUsername = "exampleuser",
/// BlueprintId = "postgres_12",
/// BundleId = "micro_1_0",
/// PreferredBackupWindow = "16:00-16:30",
/// PreferredMaintenanceWindow = "Tue:17:00-Tue:17:30",
/// FinalSnapshotName = "example-final-snapshot",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lightsail.NewDatabase(ctx, "example", &lightsail.DatabaseArgs{
/// RelationalDatabaseName:     pulumi.String("example-database"),
/// AvailabilityZone:           pulumi.String("us-east-1a"),
/// MasterDatabaseName:         pulumi.String("exampledb"),
/// MasterPassword:             pulumi.String("examplepassword123"),
/// MasterUsername:             pulumi.String("exampleuser"),
/// BlueprintId:                pulumi.String("postgres_12"),
/// BundleId:                   pulumi.String("micro_1_0"),
/// PreferredBackupWindow:      pulumi.String("16:00-16:30"),
/// PreferredMaintenanceWindow: pulumi.String("Tue:17:00-Tue:17:30"),
/// FinalSnapshotName:          pulumi.String("example-final-snapshot"),
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
/// import com.pulumi.aws.lightsail.Database;
/// import com.pulumi.aws.lightsail.DatabaseArgs;
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
/// var example = new Database("example", DatabaseArgs.builder()
/// .relationalDatabaseName("example-database")
/// .availabilityZone("us-east-1a")
/// .masterDatabaseName("exampledb")
/// .masterPassword("examplepassword123")
/// .masterUsername("exampleuser")
/// .blueprintId("postgres_12")
/// .bundleId("micro_1_0")
/// .preferredBackupWindow("16:00-16:30")
/// .preferredMaintenanceWindow("Tue:17:00-Tue:17:30")
/// .finalSnapshotName("example-final-snapshot")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lightsail:Database
/// properties:
/// relationalDatabaseName: example-database
/// availabilityZone: us-east-1a
/// masterDatabaseName: exampledb
/// masterPassword: examplepassword123
/// masterUsername: exampleuser
/// blueprintId: postgres_12
/// bundleId: micro_1_0
/// preferredBackupWindow: 16:00-16:30
/// preferredMaintenanceWindow: Tue:17:00-Tue:17:30
/// finalSnapshotName: example-final-snapshot
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Apply Immediately
///
/// To enable applying changes immediately instead of waiting for a maintenance window, use the <span pulumi-lang-nodejs="`applyImmediately`" pulumi-lang-dotnet="`ApplyImmediately`" pulumi-lang-go="`applyImmediately`" pulumi-lang-python="`apply_immediately`" pulumi-lang-yaml="`applyImmediately`" pulumi-lang-java="`applyImmediately`">`apply_immediately`</span> argument.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lightsail.Database("example", {
/// relationalDatabaseName: "example-database",
/// availabilityZone: "us-east-1a",
/// masterDatabaseName: "exampledb",
/// masterPassword: "examplepassword123",
/// masterUsername: "exampleuser",
/// blueprintId: "postgres_12",
/// bundleId: "micro_1_0",
/// applyImmediately: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.Database("example",
/// relational_database_name="example-database",
/// availability_zone="us-east-1a",
/// master_database_name="exampledb",
/// master_password="examplepassword123",
/// master_username="exampleuser",
/// blueprint_id="postgres_12",
/// bundle_id="micro_1_0",
/// apply_immediately=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.LightSail.Database("example", new()
/// {
/// RelationalDatabaseName = "example-database",
/// AvailabilityZone = "us-east-1a",
/// MasterDatabaseName = "exampledb",
/// MasterPassword = "examplepassword123",
/// MasterUsername = "exampleuser",
/// BlueprintId = "postgres_12",
/// BundleId = "micro_1_0",
/// ApplyImmediately = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lightsail.NewDatabase(ctx, "example", &lightsail.DatabaseArgs{
/// RelationalDatabaseName: pulumi.String("example-database"),
/// AvailabilityZone:       pulumi.String("us-east-1a"),
/// MasterDatabaseName:     pulumi.String("exampledb"),
/// MasterPassword:         pulumi.String("examplepassword123"),
/// MasterUsername:         pulumi.String("exampleuser"),
/// BlueprintId:            pulumi.String("postgres_12"),
/// BundleId:               pulumi.String("micro_1_0"),
/// ApplyImmediately:       pulumi.Bool(true),
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
/// import com.pulumi.aws.lightsail.Database;
/// import com.pulumi.aws.lightsail.DatabaseArgs;
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
/// var example = new Database("example", DatabaseArgs.builder()
/// .relationalDatabaseName("example-database")
/// .availabilityZone("us-east-1a")
/// .masterDatabaseName("exampledb")
/// .masterPassword("examplepassword123")
/// .masterUsername("exampleuser")
/// .blueprintId("postgres_12")
/// .bundleId("micro_1_0")
/// .applyImmediately(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lightsail:Database
/// properties:
/// relationalDatabaseName: example-database
/// availabilityZone: us-east-1a
/// masterDatabaseName: exampledb
/// masterPassword: examplepassword123
/// masterUsername: exampleuser
/// blueprintId: postgres_12
/// bundleId: micro_1_0
/// applyImmediately: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Blueprint IDs
///
/// A list of all available Lightsail Blueprints for Relational Databases the [aws lightsail get-relational-database-blueprints](https://docs.aws.amazon.com/cli/latest/reference/lightsail/get-relational-database-blueprints.html) aws cli command.
///
/// ### Examples
///
/// - <span pulumi-lang-nodejs="`mysql80`" pulumi-lang-dotnet="`Mysql80`" pulumi-lang-go="`mysql80`" pulumi-lang-python="`mysql_8_0`" pulumi-lang-yaml="`mysql80`" pulumi-lang-java="`mysql80`">`mysql_8_0`</span>
/// - <span pulumi-lang-nodejs="`postgres12`" pulumi-lang-dotnet="`Postgres12`" pulumi-lang-go="`postgres12`" pulumi-lang-python="`postgres_12`" pulumi-lang-yaml="`postgres12`" pulumi-lang-java="`postgres12`">`postgres_12`</span>
///
/// ### Prefix
///
/// A Blueprint ID starts with a prefix of the engine type.
///
/// ### Suffix
///
/// A Blueprint ID has a suffix of the engine version.
///
/// ## Bundles
///
/// A list of all available Lightsail Bundles for Relational Databases the [aws lightsail get-relational-database-bundles](https://docs.aws.amazon.com/cli/latest/reference/lightsail/get-relational-database-bundles.html) aws cli command.
///
/// ### Examples
///
/// - <span pulumi-lang-nodejs="`small10`" pulumi-lang-dotnet="`Small10`" pulumi-lang-go="`small10`" pulumi-lang-python="`small_1_0`" pulumi-lang-yaml="`small10`" pulumi-lang-java="`small10`">`small_1_0`</span>
/// - <span pulumi-lang-nodejs="`smallHa10`" pulumi-lang-dotnet="`SmallHa10`" pulumi-lang-go="`smallHa10`" pulumi-lang-python="`small_ha_1_0`" pulumi-lang-yaml="`smallHa10`" pulumi-lang-java="`smallHa10`">`small_ha_1_0`</span>
/// - <span pulumi-lang-nodejs="`large10`" pulumi-lang-dotnet="`Large10`" pulumi-lang-go="`large10`" pulumi-lang-python="`large_1_0`" pulumi-lang-yaml="`large10`" pulumi-lang-java="`large10`">`large_1_0`</span>
/// - <span pulumi-lang-nodejs="`largeHa10`" pulumi-lang-dotnet="`LargeHa10`" pulumi-lang-go="`largeHa10`" pulumi-lang-python="`large_ha_1_0`" pulumi-lang-yaml="`largeHa10`" pulumi-lang-java="`largeHa10`">`large_ha_1_0`</span>
///
/// ### Prefix
///
/// A Bundle ID starts with one of the below size prefixes:
///
/// - `micro_`
/// - `small_`
/// - `medium_`
/// - `large_`
///
/// ### Infixes (Optional for HA Database)
///
/// A Bundle ID can have the following infix added in order to use the HA option of the selected bundle.
///
/// - `ha_`
///
/// ### Suffix
///
/// A Bundle ID ends with one of the following suffix: <span pulumi-lang-nodejs="`10`" pulumi-lang-dotnet="`10`" pulumi-lang-go="`10`" pulumi-lang-python="`1_0`" pulumi-lang-yaml="`10`" pulumi-lang-java="`10`">`1_0`</span>
///
/// ## Import
///
/// Using `pulumi import`, import Lightsail Databases using their name. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/database:Database example example-database
/// ```
class Database2 extends CustomResource {
  /// Whether to apply changes immediately. When false, applies changes during the preferred maintenance window. Some changes may cause an outage.
  late final Output<bool> applyImmediately;

  /// ARN of the database (matches <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>).
  late final Output<String> arn;

  /// Availability Zone in which to create your database. Use the us-east-2a case-sensitive format.
  late final Output<String> availabilityZone;

  /// Whether to enable automated backup retention for your database. When false, disables automated backup retention for your database. Disabling backup retention deletes all automated database backups. Before disabling this, you may want to create a snapshot of your database.
  late final Output<bool?> backupRetentionEnabled;

  /// Blueprint ID for your database. A blueprint describes the major engine version of a database. You can get a list of database blueprints IDs by using the AWS CLI command: `aws lightsail get-relational-database-blueprints`
  late final Output<String> blueprintId;

  /// Bundle ID for your database. A bundle describes the performance specifications for your database (see list below). You can get a list of database bundle IDs by using the AWS CLI command: `aws lightsail get-relational-database-bundles`.
  late final Output<String> bundleId;

  /// Certificate associated with the database.
  late final Output<String> caCertificateIdentifier;

  /// Number of vCPUs for the database.
  late final Output<int> cpuCount;

  /// Date and time when the database was created.
  late final Output<String> createdAt;

  /// Size of the disk for the database.
  late final Output<double> diskSize;

  /// Database software (for example, MySQL).
  late final Output<String> engine;

  /// Database engine version (for example, 5.7.23).
  late final Output<String> engineVersion;

  /// Name of the database snapshot created if skip final snapshot is false, which is the default value for that parameter.
  late final Output<String?> finalSnapshotName;

  /// Name of the master database created when the Lightsail database resource is created.
  late final Output<String> masterDatabaseName;

  /// Master endpoint FQDN for the database.
  late final Output<String> masterEndpointAddress;

  /// Master endpoint network port for the database.
  late final Output<int> masterEndpointPort;

  /// Password for the master user of your database. The password can include any printable ASCII character except "/", """, or "@".
  late final Output<String> masterPassword;

  /// Master user name for your database.
  late final Output<String> masterUsername;

  /// Daily time range during which automated backups are created for your database if automated backups are enabled. Must be in the hh24:mi-hh24:mi format. Example: `16:00-16:30`. Specified in Coordinated Universal Time (UTC).
  late final Output<String> preferredBackupWindow;

  /// Weekly time range during which system maintenance can occur on your database. Must be in the ddd:hh24:mi-ddd:hh24:mi format. Specified in Coordinated Universal Time (UTC). Example: `Tue:17:00-Tue:17:30`
  late final Output<String> preferredMaintenanceWindow;

  /// Whether the database is accessible to resources outside of your Lightsail account. A value of true specifies a database that is available to resources outside of your Lightsail account. A value of false specifies a database that is available only to your Lightsail resources in the same region as your database.
  late final Output<bool?> publiclyAccessible;

  /// Amount of RAM in GB for the database.
  late final Output<double> ramSize;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Name to use for your Lightsail database resource. Names be unique within each AWS Region in your Lightsail account.
  ///
  /// The following arguments are optional:
  late final Output<String> relationalDatabaseName;

  /// Secondary Availability Zone of a high availability database. The secondary database is used for failover support of a high availability database.
  late final Output<String> secondaryAvailabilityZone;

  /// Whether a final database snapshot is created before your database is deleted. If true is specified, no database snapshot is created. If false is specified, a database snapshot is created before your database is deleted. You must specify the final relational database snapshot name parameter if the skip final snapshot parameter is false.
  late final Output<bool?> skipFinalSnapshot;

  /// Support code for the database. Include this code in your email to support when you have questions about a database in Lightsail. This code enables our support team to look up your Lightsail information more easily.
  late final Output<String> supportCode;

  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Database2(
    String name, {
    DatabaseArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/database:Database',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applyImmediately = registerOutput<bool>('applyImmediately');
    this.arn = registerOutput<String>('arn');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.backupRetentionEnabled =
        registerOutput<bool?>('backupRetentionEnabled');
    this.blueprintId = registerOutput<String>('blueprintId');
    this.bundleId = registerOutput<String>('bundleId');
    this.caCertificateIdentifier =
        registerOutput<String>('caCertificateIdentifier');
    this.cpuCount = registerOutput<int>('cpuCount');
    this.createdAt = registerOutput<String>('createdAt');
    this.diskSize = registerOutput<double>('diskSize');
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.finalSnapshotName = registerOutput<String?>('finalSnapshotName');
    this.masterDatabaseName = registerOutput<String>('masterDatabaseName');
    this.masterEndpointAddress =
        registerOutput<String>('masterEndpointAddress');
    this.masterEndpointPort = registerOutput<int>('masterEndpointPort');
    this.masterPassword = registerOutput<String>('masterPassword');
    this.masterUsername = registerOutput<String>('masterUsername');
    this.preferredBackupWindow =
        registerOutput<String>('preferredBackupWindow');
    this.preferredMaintenanceWindow =
        registerOutput<String>('preferredMaintenanceWindow');
    this.publiclyAccessible = registerOutput<bool?>('publiclyAccessible');
    this.ramSize = registerOutput<double>('ramSize');
    this.region = registerOutput<String>('region');
    this.relationalDatabaseName =
        registerOutput<String>('relationalDatabaseName');
    this.secondaryAvailabilityZone =
        registerOutput<String>('secondaryAvailabilityZone');
    this.skipFinalSnapshot = registerOutput<bool?>('skipFinalSnapshot');
    this.supportCode = registerOutput<String>('supportCode');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
