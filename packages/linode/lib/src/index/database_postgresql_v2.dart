import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_postgresql_v2_args.dart';
import 'database_postgresql_v2_pending_update.dart';
import 'database_postgresql_v2_private_network.dart';
import 'database_postgresql_v2_timeouts.dart';
import 'database_postgresql_v2_updates.dart';

/// Provides a Linode PostgreSQL Database resource. This can be used to create, modify, and delete Linode PostgreSQL Databases.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-databases-postgre-sql-instances).
///
/// Please keep in mind that Managed Databases can take up to half an hour to provision.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foobar = new linode.DatabasePostgresqlV2("foobar", {
///     label: "mydatabase",
///     engineId: "postgresql/16",
///     region: "us-mia",
///     type: "g6-nanode-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foobar = linode.DatabasePostgresqlV2("foobar",
///     label="mydatabase",
///     engine_id="postgresql/16",
///     region="us-mia",
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
///     var foobar = new Linode.DatabasePostgresqlV2("foobar", new()
///     {
///         Label = "mydatabase",
///         EngineId = "postgresql/16",
///         Region = "us-mia",
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
/// 		_, err := linode.NewDatabasePostgresqlV2(ctx, "foobar", &linode.DatabasePostgresqlV2Args{
/// 			Label:    pulumi.String("mydatabase"),
/// 			EngineId: pulumi.String("postgresql/16"),
/// 			Region:   pulumi.String("us-mia"),
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
/// import com.pulumi.linode.DatabasePostgresqlV2;
/// import com.pulumi.linode.DatabasePostgresqlV2Args;
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
///         var foobar = new DatabasePostgresqlV2("foobar", DatabasePostgresqlV2Args.builder()
///             .label("mydatabase")
///             .engineId("postgresql/16")
///             .region("us-mia")
///             .type("g6-nanode-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: linode:DatabasePostgresqlV2
///     properties:
///       label: mydatabase
///       engineId: postgresql/16
///       region: us-mia
///       type: g6-nanode-1
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foobar = new linode.DatabasePostgresqlV2("foobar", {
///     label: "mydatabase",
///     engineId: "postgresql/16",
///     region: "us-mia",
///     type: "g6-nanode-1",
///     allowLists: ["0.0.0.0/0"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foobar = linode.DatabasePostgresqlV2("foobar",
///     label="mydatabase",
///     engine_id="postgresql/16",
///     region="us-mia",
///     type="g6-nanode-1",
///     allow_lists=["0.0.0.0/0"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Linode.DatabasePostgresqlV2("foobar", new()
///     {
///         Label = "mydatabase",
///         EngineId = "postgresql/16",
///         Region = "us-mia",
///         Type = "g6-nanode-1",
///         AllowLists = new[]
///         {
///             "0.0.0.0/0",
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
/// 		_, err := linode.NewDatabasePostgresqlV2(ctx, "foobar", &linode.DatabasePostgresqlV2Args{
/// 			Label:    pulumi.String("mydatabase"),
/// 			EngineId: pulumi.String("postgresql/16"),
/// 			Region:   pulumi.String("us-mia"),
/// 			Type:     pulumi.String("g6-nanode-1"),
/// 			AllowLists: pulumi.StringArray{
/// 				pulumi.String("0.0.0.0/0"),
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
/// import com.pulumi.linode.DatabasePostgresqlV2;
/// import com.pulumi.linode.DatabasePostgresqlV2Args;
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
///         var foobar = new DatabasePostgresqlV2("foobar", DatabasePostgresqlV2Args.builder()
///             .label("mydatabase")
///             .engineId("postgresql/16")
///             .region("us-mia")
///             .type("g6-nanode-1")
///             .allowLists("0.0.0.0/0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: linode:DatabasePostgresqlV2
///     properties:
///       label: mydatabase
///       engineId: postgresql/16
///       region: us-mia
///       type: g6-nanode-1
///       allowLists:
///         - 0.0.0.0/0
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foobar = new linode.DatabasePostgresqlV2("foobar", {
///     label: "mydatabase",
///     engineId: "postgresql/16",
///     region: "us-mia",
///     type: "g6-nanode-1",
///     allowLists: ["10.0.0.3/32"],
///     clusterSize: 3,
///     updates: {
///         duration: 4,
///         frequency: "weekly",
///         hourOfDay: 22,
///         dayOfWeek: 2,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foobar = linode.DatabasePostgresqlV2("foobar",
///     label="mydatabase",
///     engine_id="postgresql/16",
///     region="us-mia",
///     type="g6-nanode-1",
///     allow_lists=["10.0.0.3/32"],
///     cluster_size=3,
///     updates={
///         "duration": 4,
///         "frequency": "weekly",
///         "hour_of_day": 22,
///         "day_of_week": 2,
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
///     var foobar = new Linode.DatabasePostgresqlV2("foobar", new()
///     {
///         Label = "mydatabase",
///         EngineId = "postgresql/16",
///         Region = "us-mia",
///         Type = "g6-nanode-1",
///         AllowLists = new[]
///         {
///             "10.0.0.3/32",
///         },
///         ClusterSize = 3,
///         Updates = new Linode.Inputs.DatabasePostgresqlV2UpdatesArgs
///         {
///             Duration = 4,
///             Frequency = "weekly",
///             HourOfDay = 22,
///             DayOfWeek = 2,
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
/// 		_, err := linode.NewDatabasePostgresqlV2(ctx, "foobar", &linode.DatabasePostgresqlV2Args{
/// 			Label:    pulumi.String("mydatabase"),
/// 			EngineId: pulumi.String("postgresql/16"),
/// 			Region:   pulumi.String("us-mia"),
/// 			Type:     pulumi.String("g6-nanode-1"),
/// 			AllowLists: pulumi.StringArray{
/// 				pulumi.String("10.0.0.3/32"),
/// 			},
/// 			ClusterSize: pulumi.Int(3),
/// 			Updates: &linode.DatabasePostgresqlV2UpdatesArgs{
/// 				Duration:  pulumi.Int(4),
/// 				Frequency: pulumi.String("weekly"),
/// 				HourOfDay: pulumi.Int(22),
/// 				DayOfWeek: pulumi.Int(2),
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
/// import com.pulumi.linode.DatabasePostgresqlV2;
/// import com.pulumi.linode.DatabasePostgresqlV2Args;
/// import com.pulumi.linode.inputs.DatabasePostgresqlV2UpdatesArgs;
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
///         var foobar = new DatabasePostgresqlV2("foobar", DatabasePostgresqlV2Args.builder()
///             .label("mydatabase")
///             .engineId("postgresql/16")
///             .region("us-mia")
///             .type("g6-nanode-1")
///             .allowLists("10.0.0.3/32")
///             .clusterSize(3)
///             .updates(DatabasePostgresqlV2UpdatesArgs.builder()
///                 .duration(4)
///                 .frequency("weekly")
///                 .hourOfDay(22)
///                 .dayOfWeek(2)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: linode:DatabasePostgresqlV2
///     properties:
///       label: mydatabase
///       engineId: postgresql/16
///       region: us-mia
///       type: g6-nanode-1
///       allowLists:
///         - 10.0.0.3/32
///       clusterSize: 3
///       updates:
///         duration: 4
///         frequency: weekly
///         hourOfDay: 22
///         dayOfWeek: 2
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foobar = new linode.DatabasePostgresqlV2("foobar", {
///     label: "mydatabase",
///     engineId: "postgresql/16",
///     region: "us-mia",
///     type: "g6-nanode-1",
///     engineConfigPgAutovacuumAnalyzeScaleFactor: 0.1,
///     engineConfigPgAutovacuumAnalyzeThreshold: 50,
///     engineConfigPgAutovacuumMaxWorkers: 3,
///     engineConfigPgAutovacuumNaptime: 100,
///     engineConfigPgAutovacuumVacuumCostDelay: 20,
///     engineConfigPgAutovacuumVacuumCostLimit: 200,
///     engineConfigPgAutovacuumVacuumScaleFactor: 0.2,
///     engineConfigPgAutovacuumVacuumThreshold: 100,
///     engineConfigPgBgwriterDelay: 1000,
///     engineConfigPgBgwriterFlushAfter: 512,
///     engineConfigPgBgwriterLruMaxpages: 100,
///     engineConfigPgBgwriterLruMultiplier: 2,
///     engineConfigPgDeadlockTimeout: 1000,
///     engineConfigPgDefaultToastCompression: "pglz",
///     engineConfigPgIdleInTransactionSessionTimeout: 60000,
///     engineConfigPgJit: true,
///     engineConfigPgMaxFilesPerProcess: 1000,
///     engineConfigPgMaxLocksPerTransaction: 64,
///     engineConfigPgMaxLogicalReplicationWorkers: 4,
///     engineConfigPgMaxParallelWorkers: 8,
///     engineConfigPgMaxParallelWorkersPerGather: 2,
///     engineConfigPgMaxPredLocksPerTransaction: 128,
///     engineConfigPgMaxReplicationSlots: 8,
///     engineConfigPgMaxSlotWalKeepSize: 128,
///     engineConfigPgMaxStackDepth: 2097152,
///     engineConfigPgMaxStandbyArchiveDelay: 60000,
///     engineConfigPgMaxStandbyStreamingDelay: 60000,
///     engineConfigPgMaxWalSenders: 20,
///     engineConfigPgMaxWorkerProcesses: 8,
///     engineConfigPgPasswordEncryption: "scram-sha-256",
///     engineConfigPgPgPartmanBgwInterval: 3600,
///     engineConfigPgPgPartmanBgwRole: "myrolename",
///     engineConfigPgPgStatMonitorPgsmEnableQueryPlan: true,
///     engineConfigPgPgStatMonitorPgsmMaxBuckets: 5,
///     engineConfigPgPgStatStatementsTrack: "all",
///     engineConfigPgTempFileLimit: 100,
///     engineConfigPgTimezone: "Europe/Helsinki",
///     engineConfigPgTrackActivityQuerySize: 2048,
///     engineConfigPgTrackCommitTimestamp: "on",
///     engineConfigPgTrackFunctions: "all",
///     engineConfigPgTrackIoTiming: "on",
///     engineConfigPgWalSenderTimeout: 60000,
///     engineConfigPgWalWriterDelay: 200,
///     engineConfigPgStatMonitorEnable: true,
///     engineConfigPglookoutMaxFailoverReplicationTimeLag: 10000,
///     engineConfigSharedBuffersPercentage: 25,
///     engineConfigWorkMem: 400,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foobar = linode.DatabasePostgresqlV2("foobar",
///     label="mydatabase",
///     engine_id="postgresql/16",
///     region="us-mia",
///     type="g6-nanode-1",
///     engine_config_pg_autovacuum_analyze_scale_factor=0.1,
///     engine_config_pg_autovacuum_analyze_threshold=50,
///     engine_config_pg_autovacuum_max_workers=3,
///     engine_config_pg_autovacuum_naptime=100,
///     engine_config_pg_autovacuum_vacuum_cost_delay=20,
///     engine_config_pg_autovacuum_vacuum_cost_limit=200,
///     engine_config_pg_autovacuum_vacuum_scale_factor=0.2,
///     engine_config_pg_autovacuum_vacuum_threshold=100,
///     engine_config_pg_bgwriter_delay=1000,
///     engine_config_pg_bgwriter_flush_after=512,
///     engine_config_pg_bgwriter_lru_maxpages=100,
///     engine_config_pg_bgwriter_lru_multiplier=2,
///     engine_config_pg_deadlock_timeout=1000,
///     engine_config_pg_default_toast_compression="pglz",
///     engine_config_pg_idle_in_transaction_session_timeout=60000,
///     engine_config_pg_jit=True,
///     engine_config_pg_max_files_per_process=1000,
///     engine_config_pg_max_locks_per_transaction=64,
///     engine_config_pg_max_logical_replication_workers=4,
///     engine_config_pg_max_parallel_workers=8,
///     engine_config_pg_max_parallel_workers_per_gather=2,
///     engine_config_pg_max_pred_locks_per_transaction=128,
///     engine_config_pg_max_replication_slots=8,
///     engine_config_pg_max_slot_wal_keep_size=128,
///     engine_config_pg_max_stack_depth=2097152,
///     engine_config_pg_max_standby_archive_delay=60000,
///     engine_config_pg_max_standby_streaming_delay=60000,
///     engine_config_pg_max_wal_senders=20,
///     engine_config_pg_max_worker_processes=8,
///     engine_config_pg_password_encryption="scram-sha-256",
///     engine_config_pg_pg_partman_bgw_interval=3600,
///     engine_config_pg_pg_partman_bgw_role="myrolename",
///     engine_config_pg_pg_stat_monitor_pgsm_enable_query_plan=True,
///     engine_config_pg_pg_stat_monitor_pgsm_max_buckets=5,
///     engine_config_pg_pg_stat_statements_track="all",
///     engine_config_pg_temp_file_limit=100,
///     engine_config_pg_timezone="Europe/Helsinki",
///     engine_config_pg_track_activity_query_size=2048,
///     engine_config_pg_track_commit_timestamp="on",
///     engine_config_pg_track_functions="all",
///     engine_config_pg_track_io_timing="on",
///     engine_config_pg_wal_sender_timeout=60000,
///     engine_config_pg_wal_writer_delay=200,
///     engine_config_pg_stat_monitor_enable=True,
///     engine_config_pglookout_max_failover_replication_time_lag=10000,
///     engine_config_shared_buffers_percentage=25,
///     engine_config_work_mem=400)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Linode.DatabasePostgresqlV2("foobar", new()
///     {
///         Label = "mydatabase",
///         EngineId = "postgresql/16",
///         Region = "us-mia",
///         Type = "g6-nanode-1",
///         EngineConfigPgAutovacuumAnalyzeScaleFactor = 0.1,
///         EngineConfigPgAutovacuumAnalyzeThreshold = 50,
///         EngineConfigPgAutovacuumMaxWorkers = 3,
///         EngineConfigPgAutovacuumNaptime = 100,
///         EngineConfigPgAutovacuumVacuumCostDelay = 20,
///         EngineConfigPgAutovacuumVacuumCostLimit = 200,
///         EngineConfigPgAutovacuumVacuumScaleFactor = 0.2,
///         EngineConfigPgAutovacuumVacuumThreshold = 100,
///         EngineConfigPgBgwriterDelay = 1000,
///         EngineConfigPgBgwriterFlushAfter = 512,
///         EngineConfigPgBgwriterLruMaxpages = 100,
///         EngineConfigPgBgwriterLruMultiplier = 2,
///         EngineConfigPgDeadlockTimeout = 1000,
///         EngineConfigPgDefaultToastCompression = "pglz",
///         EngineConfigPgIdleInTransactionSessionTimeout = 60000,
///         EngineConfigPgJit = true,
///         EngineConfigPgMaxFilesPerProcess = 1000,
///         EngineConfigPgMaxLocksPerTransaction = 64,
///         EngineConfigPgMaxLogicalReplicationWorkers = 4,
///         EngineConfigPgMaxParallelWorkers = 8,
///         EngineConfigPgMaxParallelWorkersPerGather = 2,
///         EngineConfigPgMaxPredLocksPerTransaction = 128,
///         EngineConfigPgMaxReplicationSlots = 8,
///         EngineConfigPgMaxSlotWalKeepSize = 128,
///         EngineConfigPgMaxStackDepth = 2097152,
///         EngineConfigPgMaxStandbyArchiveDelay = 60000,
///         EngineConfigPgMaxStandbyStreamingDelay = 60000,
///         EngineConfigPgMaxWalSenders = 20,
///         EngineConfigPgMaxWorkerProcesses = 8,
///         EngineConfigPgPasswordEncryption = "scram-sha-256",
///         EngineConfigPgPgPartmanBgwInterval = 3600,
///         EngineConfigPgPgPartmanBgwRole = "myrolename",
///         EngineConfigPgPgStatMonitorPgsmEnableQueryPlan = true,
///         EngineConfigPgPgStatMonitorPgsmMaxBuckets = 5,
///         EngineConfigPgPgStatStatementsTrack = "all",
///         EngineConfigPgTempFileLimit = 100,
///         EngineConfigPgTimezone = "Europe/Helsinki",
///         EngineConfigPgTrackActivityQuerySize = 2048,
///         EngineConfigPgTrackCommitTimestamp = "on",
///         EngineConfigPgTrackFunctions = "all",
///         EngineConfigPgTrackIoTiming = "on",
///         EngineConfigPgWalSenderTimeout = 60000,
///         EngineConfigPgWalWriterDelay = 200,
///         EngineConfigPgStatMonitorEnable = true,
///         EngineConfigPglookoutMaxFailoverReplicationTimeLag = 10000,
///         EngineConfigSharedBuffersPercentage = 25,
///         EngineConfigWorkMem = 400,
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
/// 		_, err := linode.NewDatabasePostgresqlV2(ctx, "foobar", &linode.DatabasePostgresqlV2Args{
/// 			Label:    pulumi.String("mydatabase"),
/// 			EngineId: pulumi.String("postgresql/16"),
/// 			Region:   pulumi.String("us-mia"),
/// 			Type:     pulumi.String("g6-nanode-1"),
/// 			EngineConfigPgAutovacuumAnalyzeScaleFactor:         pulumi.Float64(0.1),
/// 			EngineConfigPgAutovacuumAnalyzeThreshold:           pulumi.Int(50),
/// 			EngineConfigPgAutovacuumMaxWorkers:                 pulumi.Int(3),
/// 			EngineConfigPgAutovacuumNaptime:                    pulumi.Int(100),
/// 			EngineConfigPgAutovacuumVacuumCostDelay:            pulumi.Int(20),
/// 			EngineConfigPgAutovacuumVacuumCostLimit:            pulumi.Int(200),
/// 			EngineConfigPgAutovacuumVacuumScaleFactor:          pulumi.Float64(0.2),
/// 			EngineConfigPgAutovacuumVacuumThreshold:            pulumi.Int(100),
/// 			EngineConfigPgBgwriterDelay:                        pulumi.Int(1000),
/// 			EngineConfigPgBgwriterFlushAfter:                   pulumi.Int(512),
/// 			EngineConfigPgBgwriterLruMaxpages:                  pulumi.Int(100),
/// 			EngineConfigPgBgwriterLruMultiplier:                pulumi.Float64(2),
/// 			EngineConfigPgDeadlockTimeout:                      pulumi.Int(1000),
/// 			EngineConfigPgDefaultToastCompression:              pulumi.String("pglz"),
/// 			EngineConfigPgIdleInTransactionSessionTimeout:      pulumi.Int(60000),
/// 			EngineConfigPgJit:                                  pulumi.Bool(true),
/// 			EngineConfigPgMaxFilesPerProcess:                   pulumi.Int(1000),
/// 			EngineConfigPgMaxLocksPerTransaction:               pulumi.Int(64),
/// 			EngineConfigPgMaxLogicalReplicationWorkers:         pulumi.Int(4),
/// 			EngineConfigPgMaxParallelWorkers:                   pulumi.Int(8),
/// 			EngineConfigPgMaxParallelWorkersPerGather:          pulumi.Int(2),
/// 			EngineConfigPgMaxPredLocksPerTransaction:           pulumi.Int(128),
/// 			EngineConfigPgMaxReplicationSlots:                  pulumi.Int(8),
/// 			EngineConfigPgMaxSlotWalKeepSize:                   pulumi.Int(128),
/// 			EngineConfigPgMaxStackDepth:                        pulumi.Int(2097152),
/// 			EngineConfigPgMaxStandbyArchiveDelay:               pulumi.Int(60000),
/// 			EngineConfigPgMaxStandbyStreamingDelay:             pulumi.Int(60000),
/// 			EngineConfigPgMaxWalSenders:                        pulumi.Int(20),
/// 			EngineConfigPgMaxWorkerProcesses:                   pulumi.Int(8),
/// 			EngineConfigPgPasswordEncryption:                   pulumi.String("scram-sha-256"),
/// 			EngineConfigPgPgPartmanBgwInterval:                 pulumi.Int(3600),
/// 			EngineConfigPgPgPartmanBgwRole:                     pulumi.String("myrolename"),
/// 			EngineConfigPgPgStatMonitorPgsmEnableQueryPlan:     pulumi.Bool(true),
/// 			EngineConfigPgPgStatMonitorPgsmMaxBuckets:          pulumi.Int(5),
/// 			EngineConfigPgPgStatStatementsTrack:                pulumi.String("all"),
/// 			EngineConfigPgTempFileLimit:                        pulumi.Int(100),
/// 			EngineConfigPgTimezone:                             pulumi.String("Europe/Helsinki"),
/// 			EngineConfigPgTrackActivityQuerySize:               pulumi.Int(2048),
/// 			EngineConfigPgTrackCommitTimestamp:                 pulumi.String("on"),
/// 			EngineConfigPgTrackFunctions:                       pulumi.String("all"),
/// 			EngineConfigPgTrackIoTiming:                        pulumi.String("on"),
/// 			EngineConfigPgWalSenderTimeout:                     pulumi.Int(60000),
/// 			EngineConfigPgWalWriterDelay:                       pulumi.Int(200),
/// 			EngineConfigPgStatMonitorEnable:                    pulumi.Bool(true),
/// 			EngineConfigPglookoutMaxFailoverReplicationTimeLag: pulumi.Int(10000),
/// 			EngineConfigSharedBuffersPercentage:                pulumi.Float64(25),
/// 			EngineConfigWorkMem:                                pulumi.Int(400),
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
/// import com.pulumi.linode.DatabasePostgresqlV2;
/// import com.pulumi.linode.DatabasePostgresqlV2Args;
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
///         var foobar = new DatabasePostgresqlV2("foobar", DatabasePostgresqlV2Args.builder()
///             .label("mydatabase")
///             .engineId("postgresql/16")
///             .region("us-mia")
///             .type("g6-nanode-1")
///             .engineConfigPgAutovacuumAnalyzeScaleFactor(0.1)
///             .engineConfigPgAutovacuumAnalyzeThreshold(50)
///             .engineConfigPgAutovacuumMaxWorkers(3)
///             .engineConfigPgAutovacuumNaptime(100)
///             .engineConfigPgAutovacuumVacuumCostDelay(20)
///             .engineConfigPgAutovacuumVacuumCostLimit(200)
///             .engineConfigPgAutovacuumVacuumScaleFactor(0.2)
///             .engineConfigPgAutovacuumVacuumThreshold(100)
///             .engineConfigPgBgwriterDelay(1000)
///             .engineConfigPgBgwriterFlushAfter(512)
///             .engineConfigPgBgwriterLruMaxpages(100)
///             .engineConfigPgBgwriterLruMultiplier(2.0)
///             .engineConfigPgDeadlockTimeout(1000)
///             .engineConfigPgDefaultToastCompression("pglz")
///             .engineConfigPgIdleInTransactionSessionTimeout(60000)
///             .engineConfigPgJit(true)
///             .engineConfigPgMaxFilesPerProcess(1000)
///             .engineConfigPgMaxLocksPerTransaction(64)
///             .engineConfigPgMaxLogicalReplicationWorkers(4)
///             .engineConfigPgMaxParallelWorkers(8)
///             .engineConfigPgMaxParallelWorkersPerGather(2)
///             .engineConfigPgMaxPredLocksPerTransaction(128)
///             .engineConfigPgMaxReplicationSlots(8)
///             .engineConfigPgMaxSlotWalKeepSize(128)
///             .engineConfigPgMaxStackDepth(2097152)
///             .engineConfigPgMaxStandbyArchiveDelay(60000)
///             .engineConfigPgMaxStandbyStreamingDelay(60000)
///             .engineConfigPgMaxWalSenders(20)
///             .engineConfigPgMaxWorkerProcesses(8)
///             .engineConfigPgPasswordEncryption("scram-sha-256")
///             .engineConfigPgPgPartmanBgwInterval(3600)
///             .engineConfigPgPgPartmanBgwRole("myrolename")
///             .engineConfigPgPgStatMonitorPgsmEnableQueryPlan(true)
///             .engineConfigPgPgStatMonitorPgsmMaxBuckets(5)
///             .engineConfigPgPgStatStatementsTrack("all")
///             .engineConfigPgTempFileLimit(100)
///             .engineConfigPgTimezone("Europe/Helsinki")
///             .engineConfigPgTrackActivityQuerySize(2048)
///             .engineConfigPgTrackCommitTimestamp("on")
///             .engineConfigPgTrackFunctions("all")
///             .engineConfigPgTrackIoTiming("on")
///             .engineConfigPgWalSenderTimeout(60000)
///             .engineConfigPgWalWriterDelay(200)
///             .engineConfigPgStatMonitorEnable(true)
///             .engineConfigPglookoutMaxFailoverReplicationTimeLag(10000)
///             .engineConfigSharedBuffersPercentage(25.0)
///             .engineConfigWorkMem(400)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: linode:DatabasePostgresqlV2
///     properties:
///       label: mydatabase
///       engineId: postgresql/16
///       region: us-mia
///       type: g6-nanode-1
///       engineConfigPgAutovacuumAnalyzeScaleFactor: 0.1
///       engineConfigPgAutovacuumAnalyzeThreshold: 50
///       engineConfigPgAutovacuumMaxWorkers: 3
///       engineConfigPgAutovacuumNaptime: 100
///       engineConfigPgAutovacuumVacuumCostDelay: 20
///       engineConfigPgAutovacuumVacuumCostLimit: 200
///       engineConfigPgAutovacuumVacuumScaleFactor: 0.2
///       engineConfigPgAutovacuumVacuumThreshold: 100
///       engineConfigPgBgwriterDelay: 1000
///       engineConfigPgBgwriterFlushAfter: 512
///       engineConfigPgBgwriterLruMaxpages: 100
///       engineConfigPgBgwriterLruMultiplier: 2
///       engineConfigPgDeadlockTimeout: 1000
///       engineConfigPgDefaultToastCompression: pglz
///       engineConfigPgIdleInTransactionSessionTimeout: 60000
///       engineConfigPgJit: true
///       engineConfigPgMaxFilesPerProcess: 1000
///       engineConfigPgMaxLocksPerTransaction: 64
///       engineConfigPgMaxLogicalReplicationWorkers: 4
///       engineConfigPgMaxParallelWorkers: 8
///       engineConfigPgMaxParallelWorkersPerGather: 2
///       engineConfigPgMaxPredLocksPerTransaction: 128
///       engineConfigPgMaxReplicationSlots: 8
///       engineConfigPgMaxSlotWalKeepSize: 128
///       engineConfigPgMaxStackDepth: 2.097152e+06
///       engineConfigPgMaxStandbyArchiveDelay: 60000
///       engineConfigPgMaxStandbyStreamingDelay: 60000
///       engineConfigPgMaxWalSenders: 20
///       engineConfigPgMaxWorkerProcesses: 8
///       engineConfigPgPasswordEncryption: scram-sha-256
///       engineConfigPgPgPartmanBgwInterval: 3600
///       engineConfigPgPgPartmanBgwRole: myrolename
///       engineConfigPgPgStatMonitorPgsmEnableQueryPlan: true
///       engineConfigPgPgStatMonitorPgsmMaxBuckets: 5
///       engineConfigPgPgStatStatementsTrack: all
///       engineConfigPgTempFileLimit: 100
///       engineConfigPgTimezone: Europe/Helsinki
///       engineConfigPgTrackActivityQuerySize: 2048
///       engineConfigPgTrackCommitTimestamp: on
///       engineConfigPgTrackFunctions: all
///       engineConfigPgTrackIoTiming: on
///       engineConfigPgWalSenderTimeout: 60000
///       engineConfigPgWalWriterDelay: 200
///       engineConfigPgStatMonitorEnable: true
///       engineConfigPglookoutMaxFailoverReplicationTimeLag: 10000
///       engineConfigSharedBuffersPercentage: 25
///       engineConfigWorkMem: 400
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foobar = new linode.DatabasePostgresqlV2("foobar", {
///     label: "mydatabase",
///     engineId: "postgresql/16",
///     region: "us-mia",
///     type: "g6-nanode-1",
///     forkSource: 12345,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foobar = linode.DatabasePostgresqlV2("foobar",
///     label="mydatabase",
///     engine_id="postgresql/16",
///     region="us-mia",
///     type="g6-nanode-1",
///     fork_source=12345)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foobar = new Linode.DatabasePostgresqlV2("foobar", new()
///     {
///         Label = "mydatabase",
///         EngineId = "postgresql/16",
///         Region = "us-mia",
///         Type = "g6-nanode-1",
///         ForkSource = 12345,
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
/// 		_, err := linode.NewDatabasePostgresqlV2(ctx, "foobar", &linode.DatabasePostgresqlV2Args{
/// 			Label:      pulumi.String("mydatabase"),
/// 			EngineId:   pulumi.String("postgresql/16"),
/// 			Region:     pulumi.String("us-mia"),
/// 			Type:       pulumi.String("g6-nanode-1"),
/// 			ForkSource: pulumi.Int(12345),
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
/// import com.pulumi.linode.DatabasePostgresqlV2;
/// import com.pulumi.linode.DatabasePostgresqlV2Args;
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
///         var foobar = new DatabasePostgresqlV2("foobar", DatabasePostgresqlV2Args.builder()
///             .label("mydatabase")
///             .engineId("postgresql/16")
///             .region("us-mia")
///             .type("g6-nanode-1")
///             .forkSource(12345)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: linode:DatabasePostgresqlV2
///     properties:
///       label: mydatabase
///       engineId: postgresql/16
///       region: us-mia
///       type: g6-nanode-1
///       forkSource: 12345
/// ```
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const foobar = new linode.DatabasePostgresqlV2("foobar", {
///     label: "mydatabase",
///     engineId: "postgresql/16",
///     region: "us-mia",
///     type: "g6-nanode-1",
///     privateNetwork: {
///         vpcId: 123,
///         subnetId: 456,
///         publicAccess: false,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// foobar = linode.DatabasePostgresqlV2("foobar",
///     label="mydatabase",
///     engine_id="postgresql/16",
///     region="us-mia",
///     type="g6-nanode-1",
///     private_network={
///         "vpc_id": 123,
///         "subnet_id": 456,
///         "public_access": False,
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
///     var foobar = new Linode.DatabasePostgresqlV2("foobar", new()
///     {
///         Label = "mydatabase",
///         EngineId = "postgresql/16",
///         Region = "us-mia",
///         Type = "g6-nanode-1",
///         PrivateNetwork = new Linode.Inputs.DatabasePostgresqlV2PrivateNetworkArgs
///         {
///             VpcId = 123,
///             SubnetId = 456,
///             PublicAccess = false,
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
/// 		_, err := linode.NewDatabasePostgresqlV2(ctx, "foobar", &linode.DatabasePostgresqlV2Args{
/// 			Label:    pulumi.String("mydatabase"),
/// 			EngineId: pulumi.String("postgresql/16"),
/// 			Region:   pulumi.String("us-mia"),
/// 			Type:     pulumi.String("g6-nanode-1"),
/// 			PrivateNetwork: &linode.DatabasePostgresqlV2PrivateNetworkArgs{
/// 				VpcId:        pulumi.Int(123),
/// 				SubnetId:     pulumi.Int(456),
/// 				PublicAccess: pulumi.Bool(false),
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
/// import com.pulumi.linode.DatabasePostgresqlV2;
/// import com.pulumi.linode.DatabasePostgresqlV2Args;
/// import com.pulumi.linode.inputs.DatabasePostgresqlV2PrivateNetworkArgs;
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
///         var foobar = new DatabasePostgresqlV2("foobar", DatabasePostgresqlV2Args.builder()
///             .label("mydatabase")
///             .engineId("postgresql/16")
///             .region("us-mia")
///             .type("g6-nanode-1")
///             .privateNetwork(DatabasePostgresqlV2PrivateNetworkArgs.builder()
///                 .vpcId(123)
///                 .subnetId(456)
///                 .publicAccess(false)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: linode:DatabasePostgresqlV2
///     properties:
///       label: mydatabase
///       engineId: postgresql/16
///       region: us-mia
///       type: g6-nanode-1
///       privateNetwork:
///         vpcId: 123
///         subnetId: 456
///         publicAccess: false
/// ```
///
///
/// > **_NOTE:_** The name of the default database in the returned database cluster is `defaultdb`.
///
/// ## pending_updates
///
/// The following arguments are exposed by each entry in the `pending_updates` attribute:
///
/// * `deadline` - The time when a mandatory update needs to be applied.
///
/// * `description` - A description of the update.
///
/// * `planned_for` - The date and time a maintenance update will be applied.
///
/// ## updates
///
/// The following arguments are supported in the `updates` specification block:
///
/// * `day_of_week` - (Required) The day to perform maintenance. (`monday`, `tuesday`, ...)
///
/// * `duration` - (Required) The maximum maintenance window time in hours. (`1`..`3`)
///
/// * `frequency` - (Required) The frequency at which maintenance occurs. (`weekly`)
///
/// * `hour_of_day` - (Required) The hour to begin maintenance based in UTC time. (`0`..`23`)
///
/// ## private_network
///
/// The following arguments are supported in the `private_network` specification block:
///
/// * `vpc_id` - (Required) The ID of the virtual private cloud (VPC) to restrict access to this database using.
///
/// * `subnet_id` - (Required) The ID of the VPC subnet to restrict access to this database using.
///
/// * `public_access` - (Optional) Set to `true` to allow clients outside the VPC to connect to the database using a public IP address. (Default `false`)
///
/// ## Import
///
/// Linode PostgreSQL Databases can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import linode:index/databasePostgresqlV2:DatabasePostgresqlV2 foobar 1234567
/// ```
class DatabasePostgresqlV2 extends pulumi.CustomResource {
  /// A list of IP addresses that can access the Managed Database. Each item can be a single IP address or a range in CIDR format. Use `linode.DatabaseAccessControls` to manage your allow list separately.
  late final pulumi.Output<List<String>> allowLists;
  /// The base64-encoded SSL CA certificate for the Managed Database.
  late final pulumi.Output<String> caCert;
  /// The number of Linode Instance nodes deployed to the Managed Database. (default `1`)
  late final pulumi.Output<int> clusterSize;
  /// When this Managed Database was created.
  late final pulumi.Output<String> created;
  /// Whether the Managed Databases is encrypted.
  late final pulumi.Output<bool> encrypted;
  /// The Managed Database engine. (e.g. `postgresql`)
  late final pulumi.Output<String> engine;
  /// Specifies a fraction of the table size to add to autovacuum_analyze_threshold when deciding whether to trigger an ANALYZE. The default is 0.2 (20% of table size)
  late final pulumi.Output<double> engineConfigPgAutovacuumAnalyzeScaleFactor;
  /// Specifies the minimum number of inserted, updated or deleted tuples needed to trigger an ANALYZE in any one table. The default is 50 tuples.
  late final pulumi.Output<int> engineConfigPgAutovacuumAnalyzeThreshold;
  /// Specifies the maximum number of autovacuum processes (other than the autovacuum launcher) that may be running at any one time. The default is three. This parameter can only be set at server start.
  late final pulumi.Output<int> engineConfigPgAutovacuumMaxWorkers;
  /// Specifies the minimum delay between autovacuum runs on any given database. The delay is measured in seconds, and the default is one minute
  late final pulumi.Output<int> engineConfigPgAutovacuumNaptime;
  /// Specifies the cost delay value that will be used in automatic VACUUM operations. If -1 is specified, the regular vacuum_cost_delay value will be used. The default value is 20 milliseconds
  late final pulumi.Output<int> engineConfigPgAutovacuumVacuumCostDelay;
  /// Specifies the cost limit value that will be used in automatic VACUUM operations. If -1 is specified (which is the default), the regular vacuum_cost_limit value will be used.
  late final pulumi.Output<int> engineConfigPgAutovacuumVacuumCostLimit;
  /// Specifies a fraction of the table size to add to autovacuum_vacuum_threshold when deciding whether to trigger a VACUUM. The default is 0.2 (20% of table size)
  late final pulumi.Output<double> engineConfigPgAutovacuumVacuumScaleFactor;
  /// Specifies the minimum number of updated or deleted tuples needed to trigger a VACUUM in any one table. The default is 50 tuples.
  late final pulumi.Output<int> engineConfigPgAutovacuumVacuumThreshold;
  /// Specifies the delay between activity rounds for the background writer in milliseconds. Default is 200.
  late final pulumi.Output<int> engineConfigPgBgwriterDelay;
  /// Whenever more than bgwriter_flush_after bytes have been written by the background writer, attempt to force the OS to issue these writes to the underlying storage. Specified in kilobytes, default is 512. Setting of 0 disables forced writeback.
  late final pulumi.Output<int> engineConfigPgBgwriterFlushAfter;
  /// In each round, no more than this many buffers will be written by the background writer. Setting this to zero disables background writing. Default is 100.
  late final pulumi.Output<int> engineConfigPgBgwriterLruMaxpages;
  /// The average recent need for new buffers is multiplied by bgwriter_lru_multiplier to arrive at an estimate of the number that will be needed during the next round, (up to bgwriter_lru_maxpages). 1.0 represents a “just in time” policy of writing exactly the number of buffers predicted to be needed. Larger values provide some cushion against spikes in demand, while smaller values intentionally leave writes to be done by server processes. The default is 2.0.
  late final pulumi.Output<double> engineConfigPgBgwriterLruMultiplier;
  /// This is the amount of time, in milliseconds, to wait on a lock before checking to see if there is a deadlock condition.
  late final pulumi.Output<int> engineConfigPgDeadlockTimeout;
  /// Specifies the default TOAST compression method for values of compressible columns (the default is lz4).
  late final pulumi.Output<String> engineConfigPgDefaultToastCompression;
  /// Time out sessions with open transactions after this number of milliseconds.
  late final pulumi.Output<int> engineConfigPgIdleInTransactionSessionTimeout;
  /// Controls system-wide use of Just-in-Time Compilation (JIT).
  late final pulumi.Output<bool> engineConfigPgJit;
  /// PostgreSQL maximum number of files that can be open per process.
  late final pulumi.Output<int> engineConfigPgMaxFilesPerProcess;
  /// PostgreSQL maximum locks per transaction.
  late final pulumi.Output<int> engineConfigPgMaxLocksPerTransaction;
  /// PostgreSQL maximum logical replication workers (taken from the pool of max_parallel_workers).
  late final pulumi.Output<int> engineConfigPgMaxLogicalReplicationWorkers;
  /// Sets the maximum number of workers that the system can support for parallel queries.
  late final pulumi.Output<int> engineConfigPgMaxParallelWorkers;
  /// Sets the maximum number of workers that can be started by a single Gather or Gather Merge node.
  late final pulumi.Output<int> engineConfigPgMaxParallelWorkersPerGather;
  /// PostgreSQL maximum predicate locks per transaction.
  late final pulumi.Output<int> engineConfigPgMaxPredLocksPerTransaction;
  /// PostgreSQL maximum replication slots.
  late final pulumi.Output<int> engineConfigPgMaxReplicationSlots;
  /// PostgreSQL maximum WAL size (MB) reserved for replication slots. Default is -1 (unlimited). wal_keep_size minimum WAL size setting takes precedence over this.
  late final pulumi.Output<int> engineConfigPgMaxSlotWalKeepSize;
  /// Maximum depth of the stack in bytes.
  late final pulumi.Output<int> engineConfigPgMaxStackDepth;
  /// Max standby archive delay in milliseconds.
  late final pulumi.Output<int> engineConfigPgMaxStandbyArchiveDelay;
  /// Max standby streaming delay in milliseconds.
  late final pulumi.Output<int> engineConfigPgMaxStandbyStreamingDelay;
  /// PostgreSQL maximum WAL senders.
  late final pulumi.Output<int> engineConfigPgMaxWalSenders;
  /// Sets the maximum number of background processes that the system can support.
  late final pulumi.Output<int> engineConfigPgMaxWorkerProcesses;
  /// Chooses the algorithm for encrypting passwords. (default `md5`)
  late final pulumi.Output<String> engineConfigPgPasswordEncryption;
  /// Sets the time interval to run pg_partman's scheduled tasks.
  late final pulumi.Output<int> engineConfigPgPgPartmanBgwInterval;
  /// Controls which role to use for pg_partman's scheduled background tasks.
  late final pulumi.Output<String> engineConfigPgPgPartmanBgwRole;
  /// Enables or disables query plan monitoring.
  late final pulumi.Output<bool> engineConfigPgPgStatMonitorPgsmEnableQueryPlan;
  /// Sets the maximum number of buckets.
  late final pulumi.Output<int> engineConfigPgPgStatMonitorPgsmMaxBuckets;
  /// Controls which statements are counted. Specify top to track top-level statements (those issued directly by clients), all to also track nested statements (such as statements invoked within functions), or none to disable statement statistics collection. The default value is top.
  late final pulumi.Output<String> engineConfigPgPgStatStatementsTrack;
  /// Enable the pg_stat_monitor extension. Enabling this extension will cause the cluster to be restarted. When this extension is enabled, pg_stat_statements results for utility commands are unreliable. (default `false`)
  late final pulumi.Output<bool> engineConfigPgStatMonitorEnable;
  /// PostgreSQL temporary file limit in KiB, -1 for unlimited.
  late final pulumi.Output<int> engineConfigPgTempFileLimit;
  /// PostgreSQL service timezone.
  late final pulumi.Output<String> engineConfigPgTimezone;
  /// Specifies the number of bytes reserved to track the currently executing command for each active session.
  late final pulumi.Output<int> engineConfigPgTrackActivityQuerySize;
  /// Record commit time of transactions.
  late final pulumi.Output<String> engineConfigPgTrackCommitTimestamp;
  /// Enables tracking of function call counts and time used.
  late final pulumi.Output<String> engineConfigPgTrackFunctions;
  /// Enables timing of database I/O calls. This parameter is off by default, because it will repeatedly query the operating system for the current time, which may cause significant overhead on some platforms.
  late final pulumi.Output<String> engineConfigPgTrackIoTiming;
  /// Terminate replication connections that are inactive for longer than this amount of time, in milliseconds. Setting this value to zero disables the timeout.
  late final pulumi.Output<int> engineConfigPgWalSenderTimeout;
  /// WAL flush interval in milliseconds. Note that setting this value to lower than the default 200ms may negatively impact performance.
  late final pulumi.Output<int> engineConfigPgWalWriterDelay;
  /// Number of seconds of master unavailability before triggering database failover to standby. (default `60`)
  late final pulumi.Output<int> engineConfigPglookoutMaxFailoverReplicationTimeLag;
  /// Percentage of total RAM that the database server uses for shared memory buffers. Valid range is 20-60 (float), which corresponds to 20% - 60%. This setting adjusts the shared_buffers configuration value.
  late final pulumi.Output<double> engineConfigSharedBuffersPercentage;
  /// Sets the maximum amount of memory to be used by a query operation (such as a sort or hash table) before writing to temporary disk files, in MB. Default is 1MB + 0.075% of total RAM (up to 32MB).
  late final pulumi.Output<int> engineConfigWorkMem;
  /// The Managed Database engine in engine/version format. (e.g. `postgresql/16`)
  late final pulumi.Output<String> engineId;
  /// The database timestamp from which it was restored.
  late final pulumi.Output<String> forkRestoreTime;
  /// The ID of the database that was forked from.
  ///
  /// * `private_network` - (Optional) Restricts access to this database using a virtual private cloud (VPC) that you've configured in the region where the database will live.
  ///
  /// * `updates` - (Optional) Configuration settings for automated patch update maintenance for the Managed Database.
  late final pulumi.Output<int?> forkSource;
  /// The primary host for the Managed Database.
  late final pulumi.Output<String> hostPrimary;
  /// The secondary/private host for the managed database.
  late final pulumi.Output<String> hostSecondary;
  /// A unique, user-defined string referring to the Managed Database.
  late final pulumi.Output<String> label;
  /// A mapping between IP addresses and strings designating them as primary or failover.
  late final pulumi.Output<Map<String, String>> members;
  /// The oldest time to which a database can be restored.
  late final pulumi.Output<String> oldestRestoreTime;
  /// A set of pending updates.
  late final pulumi.Output<List<DatabasePostgresqlV2PendingUpdate>> pendingUpdates;
  /// The back-end platform for relational databases used by the service.
  late final pulumi.Output<String> platform;
  /// The access port for this Managed Database.
  late final pulumi.Output<int> port;
  /// Restricts access to this database using a virtual private cloud (VPC) that you've configured in the region where the database will live.
  late final pulumi.Output<DatabasePostgresqlV2PrivateNetwork?> privateNetwork;
  /// The region to use for the Managed Database.
  late final pulumi.Output<String> region;
  /// The randomly-generated root password for the Managed Database instance.
  late final pulumi.Output<String> rootPassword;
  /// The root username for the Managed Database instance.
  late final pulumi.Output<String> rootUsername;
  /// Whether to require SSL credentials to establish a connection to the Managed Database.
  late final pulumi.Output<bool> sslConnection;
  /// The operating status of the Managed Database.
  late final pulumi.Output<String> status;
  /// Whether this Managed Database should be suspended.
  late final pulumi.Output<bool> suspended;
  late final pulumi.Output<DatabasePostgresqlV2Timeouts?> timeouts;
  /// The Linode Instance type used for the nodes of the Managed Database.
  ///
  /// - - -
  late final pulumi.Output<String> type;
  /// When this Managed Database was last updated.
  late final pulumi.Output<String> updated;
  /// Configuration settings for automated patch update maintenance for the Managed Database.
  late final pulumi.Output<DatabasePostgresqlV2Updates> updates;
  /// The Managed Database engine version. (e.g. `13.2`)
  late final pulumi.Output<String> version;

  /// Creates a new [DatabasePostgresqlV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabasePostgresqlV2]. {@macro pulumi_index_database_postgresql_v2_database_postgresql_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabasePostgresqlV2(
    String name, {
    DatabasePostgresqlV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/databasePostgresqlV2:DatabasePostgresqlV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowLists = registerOutput<List<String>>('allowLists');
    this.caCert = registerOutput<String>('caCert');
    this.clusterSize = registerOutput<int>('clusterSize');
    this.created = registerOutput<String>('created');
    this.encrypted = registerOutput<bool>('encrypted');
    this.engine = registerOutput<String>('engine');
    this.engineConfigPgAutovacuumAnalyzeScaleFactor = registerOutput<double>('engineConfigPgAutovacuumAnalyzeScaleFactor');
    this.engineConfigPgAutovacuumAnalyzeThreshold = registerOutput<int>('engineConfigPgAutovacuumAnalyzeThreshold');
    this.engineConfigPgAutovacuumMaxWorkers = registerOutput<int>('engineConfigPgAutovacuumMaxWorkers');
    this.engineConfigPgAutovacuumNaptime = registerOutput<int>('engineConfigPgAutovacuumNaptime');
    this.engineConfigPgAutovacuumVacuumCostDelay = registerOutput<int>('engineConfigPgAutovacuumVacuumCostDelay');
    this.engineConfigPgAutovacuumVacuumCostLimit = registerOutput<int>('engineConfigPgAutovacuumVacuumCostLimit');
    this.engineConfigPgAutovacuumVacuumScaleFactor = registerOutput<double>('engineConfigPgAutovacuumVacuumScaleFactor');
    this.engineConfigPgAutovacuumVacuumThreshold = registerOutput<int>('engineConfigPgAutovacuumVacuumThreshold');
    this.engineConfigPgBgwriterDelay = registerOutput<int>('engineConfigPgBgwriterDelay');
    this.engineConfigPgBgwriterFlushAfter = registerOutput<int>('engineConfigPgBgwriterFlushAfter');
    this.engineConfigPgBgwriterLruMaxpages = registerOutput<int>('engineConfigPgBgwriterLruMaxpages');
    this.engineConfigPgBgwriterLruMultiplier = registerOutput<double>('engineConfigPgBgwriterLruMultiplier');
    this.engineConfigPgDeadlockTimeout = registerOutput<int>('engineConfigPgDeadlockTimeout');
    this.engineConfigPgDefaultToastCompression = registerOutput<String>('engineConfigPgDefaultToastCompression');
    this.engineConfigPgIdleInTransactionSessionTimeout = registerOutput<int>('engineConfigPgIdleInTransactionSessionTimeout');
    this.engineConfigPgJit = registerOutput<bool>('engineConfigPgJit');
    this.engineConfigPgMaxFilesPerProcess = registerOutput<int>('engineConfigPgMaxFilesPerProcess');
    this.engineConfigPgMaxLocksPerTransaction = registerOutput<int>('engineConfigPgMaxLocksPerTransaction');
    this.engineConfigPgMaxLogicalReplicationWorkers = registerOutput<int>('engineConfigPgMaxLogicalReplicationWorkers');
    this.engineConfigPgMaxParallelWorkers = registerOutput<int>('engineConfigPgMaxParallelWorkers');
    this.engineConfigPgMaxParallelWorkersPerGather = registerOutput<int>('engineConfigPgMaxParallelWorkersPerGather');
    this.engineConfigPgMaxPredLocksPerTransaction = registerOutput<int>('engineConfigPgMaxPredLocksPerTransaction');
    this.engineConfigPgMaxReplicationSlots = registerOutput<int>('engineConfigPgMaxReplicationSlots');
    this.engineConfigPgMaxSlotWalKeepSize = registerOutput<int>('engineConfigPgMaxSlotWalKeepSize');
    this.engineConfigPgMaxStackDepth = registerOutput<int>('engineConfigPgMaxStackDepth');
    this.engineConfigPgMaxStandbyArchiveDelay = registerOutput<int>('engineConfigPgMaxStandbyArchiveDelay');
    this.engineConfigPgMaxStandbyStreamingDelay = registerOutput<int>('engineConfigPgMaxStandbyStreamingDelay');
    this.engineConfigPgMaxWalSenders = registerOutput<int>('engineConfigPgMaxWalSenders');
    this.engineConfigPgMaxWorkerProcesses = registerOutput<int>('engineConfigPgMaxWorkerProcesses');
    this.engineConfigPgPasswordEncryption = registerOutput<String>('engineConfigPgPasswordEncryption');
    this.engineConfigPgPgPartmanBgwInterval = registerOutput<int>('engineConfigPgPgPartmanBgwInterval');
    this.engineConfigPgPgPartmanBgwRole = registerOutput<String>('engineConfigPgPgPartmanBgwRole');
    this.engineConfigPgPgStatMonitorPgsmEnableQueryPlan = registerOutput<bool>('engineConfigPgPgStatMonitorPgsmEnableQueryPlan');
    this.engineConfigPgPgStatMonitorPgsmMaxBuckets = registerOutput<int>('engineConfigPgPgStatMonitorPgsmMaxBuckets');
    this.engineConfigPgPgStatStatementsTrack = registerOutput<String>('engineConfigPgPgStatStatementsTrack');
    this.engineConfigPgStatMonitorEnable = registerOutput<bool>('engineConfigPgStatMonitorEnable');
    this.engineConfigPgTempFileLimit = registerOutput<int>('engineConfigPgTempFileLimit');
    this.engineConfigPgTimezone = registerOutput<String>('engineConfigPgTimezone');
    this.engineConfigPgTrackActivityQuerySize = registerOutput<int>('engineConfigPgTrackActivityQuerySize');
    this.engineConfigPgTrackCommitTimestamp = registerOutput<String>('engineConfigPgTrackCommitTimestamp');
    this.engineConfigPgTrackFunctions = registerOutput<String>('engineConfigPgTrackFunctions');
    this.engineConfigPgTrackIoTiming = registerOutput<String>('engineConfigPgTrackIoTiming');
    this.engineConfigPgWalSenderTimeout = registerOutput<int>('engineConfigPgWalSenderTimeout');
    this.engineConfigPgWalWriterDelay = registerOutput<int>('engineConfigPgWalWriterDelay');
    this.engineConfigPglookoutMaxFailoverReplicationTimeLag = registerOutput<int>('engineConfigPglookoutMaxFailoverReplicationTimeLag');
    this.engineConfigSharedBuffersPercentage = registerOutput<double>('engineConfigSharedBuffersPercentage');
    this.engineConfigWorkMem = registerOutput<int>('engineConfigWorkMem');
    this.engineId = registerOutput<String>('engineId');
    this.forkRestoreTime = registerOutput<String>('forkRestoreTime');
    this.forkSource = registerOutput<int?>('forkSource');
    this.hostPrimary = registerOutput<String>('hostPrimary');
    this.hostSecondary = registerOutput<String>('hostSecondary');
    this.label = registerOutput<String>('label');
    this.members = registerOutput<Map<String, String>>('members');
    this.oldestRestoreTime = registerOutput<String>('oldestRestoreTime');
    this.pendingUpdates = registerOutput<List<DatabasePostgresqlV2PendingUpdate>>('pendingUpdates');
    this.platform = registerOutput<String>('platform');
    this.port = registerOutput<int>('port');
    this.privateNetwork = registerOutput<DatabasePostgresqlV2PrivateNetwork?>('privateNetwork');
    this.region = registerOutput<String>('region');
    this.rootPassword = registerOutput<String>('rootPassword');
    this.rootUsername = registerOutput<String>('rootUsername');
    this.sslConnection = registerOutput<bool>('sslConnection');
    this.status = registerOutput<String>('status');
    this.suspended = registerOutput<bool>('suspended');
    this.timeouts = registerOutput<DatabasePostgresqlV2Timeouts?>('timeouts');
    this.type = registerOutput<String>('type');
    this.updated = registerOutput<String>('updated');
    this.updates = registerOutput<DatabasePostgresqlV2Updates>('updates');
    this.version = registerOutput<String>('version');
  }
}
