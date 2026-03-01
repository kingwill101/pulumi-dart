import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_postgresql_args.dart';
import 'database_postgresql_updates.dart';

/// > **DEPRECATION NOTICE:** This resource has been deprecated. Please use linode.DatabasePostgresqlV2 for all future implementations.
///
/// Provides a Linode PostgreSQL Database resource. This can be used to create, modify, and delete Linode PostgreSQL Databases.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-databases-postgre-sql-instances).
///
/// Please keep in mind that Managed Databases can take up to an hour to provision.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foobar = new linode.DatabasePostgresql("foobar", {
///     label: "mydatabase",
///     engineId: "postgresql/13.2",
///     region: "us-southeast",
///     type: "g6-nanode-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foobar = linode.DatabasePostgresql("foobar",
///     label="mydatabase",
///     engine_id="postgresql/13.2",
///     region="us-southeast",
///     type="g6-nanode-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Linode.DatabasePostgresql("foobar", new()
///     {
///         Label = "mydatabase",
///         EngineId = "postgresql/13.2",
///         Region = "us-southeast",
///         Type = "g6-nanode-1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewDatabasePostgresql(ctx, "foobar", &linode.DatabasePostgresqlArgs{
/// 			Label:    pulumi.String("mydatabase"),
/// 			EngineId: pulumi.String("postgresql/13.2"),
/// 			Region:   pulumi.String("us-southeast"),
/// 			Type:     pulumi.String("g6-nanode-1"),
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
/// import com.pulumi.linode.DatabasePostgresql;
/// import com.pulumi.linode.DatabasePostgresqlArgs;
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
///         var foobar = new DatabasePostgresql("foobar", DatabasePostgresqlArgs.builder()
///             .label("mydatabase")
///             .engineId("postgresql/13.2")
///             .region("us-southeast")
///             .type("g6-nanode-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: linode:DatabasePostgresql
///     properties:
///       label: mydatabase
///       engineId: postgresql/13.2
///       region: us-southeast
///       type: g6-nanode-1
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foobar = new linode.DatabasePostgresql("foobar", {
///     label: "mydatabase",
///     engineId: "postgresql/13.2",
///     region: "us-southeast",
///     type: "g6-nanode-1",
///     allowLists: ["0.0.0.0/0"],
///     clusterSize: 3,
///     encrypted: true,
///     replicationType: "semi_synch",
///     replicationCommitType: "remote_write",
///     sslConnection: true,
///     updates: {
///         dayOfWeek: "saturday",
///         duration: 1,
///         frequency: "monthly",
///         hourOfDay: 22,
///         weekOfMonth: 2,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foobar = linode.DatabasePostgresql("foobar",
///     label="mydatabase",
///     engine_id="postgresql/13.2",
///     region="us-southeast",
///     type="g6-nanode-1",
///     allow_lists=["0.0.0.0/0"],
///     cluster_size=3,
///     encrypted=True,
///     replication_type="semi_synch",
///     replication_commit_type="remote_write",
///     ssl_connection=True,
///     updates={
///         "day_of_week": "saturday",
///         "duration": 1,
///         "frequency": "monthly",
///         "hour_of_day": 22,
///         "week_of_month": 2,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Linode.DatabasePostgresql("foobar", new()
///     {
///         Label = "mydatabase",
///         EngineId = "postgresql/13.2",
///         Region = "us-southeast",
///         Type = "g6-nanode-1",
///         AllowLists = new[]
///         {
///             "0.0.0.0/0",
///         },
///         ClusterSize = 3,
///         Encrypted = true,
///         ReplicationType = "semi_synch",
///         ReplicationCommitType = "remote_write",
///         SslConnection = true,
///         Updates = new Linode.Inputs.DatabasePostgresqlUpdatesArgs
///         {
///             DayOfWeek = "saturday",
///             Duration = 1,
///             Frequency = "monthly",
///             HourOfDay = 22,
///             WeekOfMonth = 2,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewDatabasePostgresql(ctx, "foobar", &linode.DatabasePostgresqlArgs{
/// 			Label:    pulumi.String("mydatabase"),
/// 			EngineId: pulumi.String("postgresql/13.2"),
/// 			Region:   pulumi.String("us-southeast"),
/// 			Type:     pulumi.String("g6-nanode-1"),
/// 			AllowLists: pulumi.StringArray{
/// 				pulumi.String("0.0.0.0/0"),
/// 			},
/// 			ClusterSize:           pulumi.Int(3),
/// 			Encrypted:             pulumi.Bool(true),
/// 			ReplicationType:       pulumi.String("semi_synch"),
/// 			ReplicationCommitType: pulumi.String("remote_write"),
/// 			SslConnection:         pulumi.Bool(true),
/// 			Updates: &linode.DatabasePostgresqlUpdatesArgs{
/// 				DayOfWeek:   pulumi.String("saturday"),
/// 				Duration:    pulumi.Int(1),
/// 				Frequency:   pulumi.String("monthly"),
/// 				HourOfDay:   pulumi.Int(22),
/// 				WeekOfMonth: pulumi.Int(2),
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
/// import com.pulumi.linode.DatabasePostgresql;
/// import com.pulumi.linode.DatabasePostgresqlArgs;
/// import com.pulumi.linode.inputs.DatabasePostgresqlUpdatesArgs;
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
///         var foobar = new DatabasePostgresql("foobar", DatabasePostgresqlArgs.builder()
///             .label("mydatabase")
///             .engineId("postgresql/13.2")
///             .region("us-southeast")
///             .type("g6-nanode-1")
///             .allowLists("0.0.0.0/0")
///             .clusterSize(3)
///             .encrypted(true)
///             .replicationType("semi_synch")
///             .replicationCommitType("remote_write")
///             .sslConnection(true)
///             .updates(DatabasePostgresqlUpdatesArgs.builder()
///                 .dayOfWeek("saturday")
///                 .duration(1)
///                 .frequency("monthly")
///                 .hourOfDay(22)
///                 .weekOfMonth(2)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: linode:DatabasePostgresql
///     properties:
///       label: mydatabase
///       engineId: postgresql/13.2
///       region: us-southeast
///       type: g6-nanode-1
///       allowLists:
///         - 0.0.0.0/0
///       clusterSize: 3
///       encrypted: true
///       replicationType: semi_synch
///       replicationCommitType: remote_write
///       sslConnection: true
///       updates:
///         dayOfWeek: saturday
///         duration: 1
///         frequency: monthly
///         hourOfDay: 22
///         weekOfMonth: 2
/// ```
///
///
/// ## updates
///
/// The following arguments are supported in the `updates` specification block:
///
/// * `day_of_week` - (Required) The day to perform maintenance. (`monday`, `tuesday`, ...)
///
/// * `duration` - (Required) The maximum maintenance window time in hours. (`1`..`3`)
///
/// * `frequency` - (Required) Whether maintenance occurs on a weekly or monthly basis. (`weekly`, `monthly`)
///
/// * `hour_of_day` - (Required) The hour to begin maintenance based in UTC time. (`0`..`23`)
///
/// * `week_of_month` - (Optional) The week of the month to perform monthly frequency updates. Required for `monthly` frequency updates. (`1`..`4`)
///
/// ## Import
///
/// Linode PostgreSQL Databases can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import linode:index/databasePostgresql:DatabasePostgresql foobar 1234567
/// ```
class DatabasePostgresql extends pulumi.CustomResource {
  /// A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format. Use `linode.DatabaseAccessControls` to manage your allow list separately.
  late final pulumi.Output<List<String>> allowLists;
  /// The base64-encoded SSL CA certificate for the Managed Database instance.
  late final pulumi.Output<String> caCert;
  /// The number of Linode Instance nodes deployed to the Managed Database. (default `1`)
  late final pulumi.Output<int?> clusterSize;
  /// When this Managed Database was created.
  late final pulumi.Output<String> created;
  /// Whether the Managed Databases is encrypted. (default `false`)
  late final pulumi.Output<bool?> encrypted;
  /// The Managed Database engine. (e.g. `postgresql`)
  late final pulumi.Output<String> engine;
  /// The Managed Database engine in engine/version format. (e.g. `postgresql/13.2`)
  late final pulumi.Output<String> engineId;
  /// The primary host for the Managed Database.
  late final pulumi.Output<String> hostPrimary;
  /// The secondary/private network host for the Managed Database.
  late final pulumi.Output<String> hostSecondary;
  /// A unique, user-defined string referring to the Managed Database.
  late final pulumi.Output<String> label;
  /// The access port for this Managed Database.
  late final pulumi.Output<int> port;
  /// The region to use for the Managed Database.
  late final pulumi.Output<String> region;
  /// The synchronization level of the replicating server. (`on`, `local`, `remote_write`, `remote_apply`, `off`; default `off`)
  ///
  /// * Must be `local` or `off` for the `asynch` replication type.
  ///
  /// * Must be `on`, `remote_write`, or `remote_apply` for the `semi_synch` replication type.
  late final pulumi.Output<String?> replicationCommitType;
  /// The replication method used for the Managed Database. (`none`, `asynch`, `semi_synch`; default `none`)
  ///
  /// * Must be `none` for a single node cluster.
  ///
  /// * Must be `asynch` or `semi_synch` for a high availability cluster.
  late final pulumi.Output<String?> replicationType;
  /// The randomly-generated root password for the Managed Database instance.
  late final pulumi.Output<String> rootPassword;
  /// The root username for the Managed Database instance.
  late final pulumi.Output<String> rootUsername;
  /// Whether to require SSL credentials to establish a connection to the Managed Database. (default `false`)
  ///
  /// * `updates` - (Optional) Configuration settings for automated patch update maintenance for the Managed Database.
  late final pulumi.Output<bool?> sslConnection;
  /// The operating status of the Managed Database.
  late final pulumi.Output<String> status;
  /// The Linode Instance type used for the nodes of the  Managed Database instance.
  ///
  /// - - -
  late final pulumi.Output<String> type;
  /// When this Managed Database was last updated.
  late final pulumi.Output<String> updated;
  /// Configuration settings for automated patch update maintenance for the Managed Database.
  late final pulumi.Output<DatabasePostgresqlUpdates> updates;
  /// The Managed Database engine version. (e.g. `13.2`)
  late final pulumi.Output<String> version;

  /// Creates a new [DatabasePostgresql].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabasePostgresql]. {@macro pulumi_index_database_postgresql_database_postgresql_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabasePostgresql(
    String name, {
    DatabasePostgresqlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/databasePostgresql:DatabasePostgresql',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowLists = registerOutput<List<String>>('allowLists');
    this.caCert = registerOutput<String>('caCert');
    this.clusterSize = registerOutput<int?>('clusterSize');
    this.created = registerOutput<String>('created');
    this.encrypted = registerOutput<bool?>('encrypted');
    this.engine = registerOutput<String>('engine');
    this.engineId = registerOutput<String>('engineId');
    this.hostPrimary = registerOutput<String>('hostPrimary');
    this.hostSecondary = registerOutput<String>('hostSecondary');
    this.label = registerOutput<String>('label');
    this.port = registerOutput<int>('port');
    this.region = registerOutput<String>('region');
    this.replicationCommitType = registerOutput<String?>('replicationCommitType');
    this.replicationType = registerOutput<String?>('replicationType');
    this.rootPassword = registerOutput<String>('rootPassword');
    this.rootUsername = registerOutput<String>('rootUsername');
    this.sslConnection = registerOutput<bool?>('sslConnection');
    this.status = registerOutput<String>('status');
    this.type = registerOutput<String>('type');
    this.updated = registerOutput<String>('updated');
    this.updates = registerOutput<DatabasePostgresqlUpdates>('updates');
    this.version = registerOutput<String>('version');
  }
}
