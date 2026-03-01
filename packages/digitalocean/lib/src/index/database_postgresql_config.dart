import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_postgresql_config_args.dart';
import 'database_postgresql_config_pgbouncer.dart';
import 'database_postgresql_config_timescaledb.dart';

/// Provides a virtual resource that can be used to change advanced configuration
/// options for a DigitalOcean managed PostgreSQL database cluster.
///
/// > **Note** PostgreSQL configurations are only removed from state when destroyed. The remote configuration is not unset.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const exampleDatabaseCluster = new digitalocean.DatabaseCluster("example", {
///     name: "example-postgresql-cluster",
///     engine: "pg",
///     version: "15",
///     size: digitalocean.DatabaseSlug.DB_1VPCU1GB,
///     region: digitalocean.Region.NYC1,
///     nodeCount: 1,
/// });
/// const example = new digitalocean.DatabasePostgresqlConfig("example", {
///     clusterId: exampleDatabaseCluster.id,
///     timezone: "UTC",
///     workMem: 16,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example_database_cluster = digitalocean.DatabaseCluster("example",
///     name="example-postgresql-cluster",
///     engine="pg",
///     version="15",
///     size=digitalocean.DatabaseSlug.D_B_1_VPCU1_GB,
///     region=digitalocean.Region.NYC1,
///     node_count=1)
/// example = digitalocean.DatabasePostgresqlConfig("example",
///     cluster_id=example_database_cluster.id,
///     timezone="UTC",
///     work_mem=16)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using DigitalOcean = Pulumi.DigitalOcean;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleDatabaseCluster = new DigitalOcean.DatabaseCluster("example", new()
///     {
///         Name = "example-postgresql-cluster",
///         Engine = "pg",
///         Version = "15",
///         Size = DigitalOcean.DatabaseSlug.DB_1VPCU1GB,
///         Region = DigitalOcean.Region.NYC1,
///         NodeCount = 1,
///     });
///
///     var example = new DigitalOcean.DatabasePostgresqlConfig("example", new()
///     {
///         ClusterId = exampleDatabaseCluster.Id,
///         Timezone = "UTC",
///         WorkMem = 16,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-digitalocean/sdk/v4/go/digitalocean"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleDatabaseCluster, err := digitalocean.NewDatabaseCluster(ctx, "example", &digitalocean.DatabaseClusterArgs{
/// 			Name:      pulumi.String("example-postgresql-cluster"),
/// 			Engine:    pulumi.String("pg"),
/// 			Version:   pulumi.String("15"),
/// 			Size:      pulumi.String(digitalocean.DatabaseSlug_DB_1VPCU1GB),
/// 			Region:    pulumi.String(digitalocean.RegionNYC1),
/// 			NodeCount: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDatabasePostgresqlConfig(ctx, "example", &digitalocean.DatabasePostgresqlConfigArgs{
/// 			ClusterId: exampleDatabaseCluster.ID(),
/// 			Timezone:  pulumi.String("UTC"),
/// 			WorkMem:   pulumi.Int(16),
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
/// import com.pulumi.digitalocean.DatabaseCluster;
/// import com.pulumi.digitalocean.DatabaseClusterArgs;
/// import com.pulumi.digitalocean.DatabasePostgresqlConfig;
/// import com.pulumi.digitalocean.DatabasePostgresqlConfigArgs;
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
///         var exampleDatabaseCluster = new DatabaseCluster("exampleDatabaseCluster", DatabaseClusterArgs.builder()
///             .name("example-postgresql-cluster")
///             .engine("pg")
///             .version("15")
///             .size("db-s-1vcpu-1gb")
///             .region("nyc1")
///             .nodeCount(1)
///             .build());
///
///         var example = new DatabasePostgresqlConfig("example", DatabasePostgresqlConfigArgs.builder()
///             .clusterId(exampleDatabaseCluster.id())
///             .timezone("UTC")
///             .workMem(16)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: digitalocean:DatabasePostgresqlConfig
///     properties:
///       clusterId: ${exampleDatabaseCluster.id}
///       timezone: UTC
///       workMem: 16
///   exampleDatabaseCluster:
///     type: digitalocean:DatabaseCluster
///     name: example
///     properties:
///       name: example-postgresql-cluster
///       engine: pg
///       version: '15'
///       size: db-s-1vcpu-1gb
///       region: nyc1
///       nodeCount: 1
/// ```
///
///
/// ## Import
///
/// A PostgreSQL database cluster's configuration can be imported using the `id` the parent cluster, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/databasePostgresqlConfig:DatabasePostgresqlConfig example 52556c07-788e-4d41-b8a7-c796432197d1
/// ```
class DatabasePostgresqlConfig extends pulumi.CustomResource {
  /// Specifies a fraction, in a decimal value, of the table size to add to autovacuum_analyze_threshold when deciding whether to trigger an ANALYZE. The default is 0.2 (20% of table size).
  late final pulumi.Output<double> autovacuumAnalyzeScaleFactor;
  /// Specifies the minimum number of inserted, updated, or deleted tuples needed to trigger an ANALYZE in any one table. The default is 50 tuples.
  late final pulumi.Output<int> autovacuumAnalyzeThreshold;
  /// Specifies the maximum age (in transactions) that a table's pg_class.relfrozenxid field can attain before a VACUUM operation is forced to prevent transaction ID wraparound within the table. Note that the system will launch autovacuum processes to prevent wraparound even when autovacuum is otherwise disabled. This parameter will cause the server to be restarted.
  late final pulumi.Output<int> autovacuumFreezeMaxAge;
  /// Specifies the maximum number of autovacuum processes (other than the autovacuum launcher) that may be running at any one time. The default is three. This parameter can only be set at server start.
  late final pulumi.Output<int> autovacuumMaxWorkers;
  /// Specifies the minimum delay, in seconds, between autovacuum runs on any given database. The default is one minute.
  late final pulumi.Output<int> autovacuumNaptime;
  /// Specifies the cost delay value, in milliseconds, that will be used in automatic VACUUM operations. If -1, uses the regular vacuum_cost_delay value, which is 20 milliseconds.
  late final pulumi.Output<int> autovacuumVacuumCostDelay;
  /// Specifies the cost limit value that will be used in automatic VACUUM operations. If -1 is specified (which is the default), the regular vacuum_cost_limit value will be used.
  late final pulumi.Output<int> autovacuumVacuumCostLimit;
  /// Specifies a fraction, in a decimal value, of the table size to add to autovacuum_vacuum_threshold when deciding whether to trigger a VACUUM. The default is 0.2 (20% of table size).
  late final pulumi.Output<double> autovacuumVacuumScaleFactor;
  /// Specifies the minimum number of updated or deleted tuples needed to trigger a VACUUM in any one table. The default is 50 tuples.
  late final pulumi.Output<int> autovacuumVacuumThreshold;
  /// The hour of day (in UTC) when backup for the service starts. New backup only starts if previous backup has already completed.
  late final pulumi.Output<int> backupHour;
  /// The minute of the backup hour when backup for the service starts. New backup is only started if previous backup has already completed.
  late final pulumi.Output<int> backupMinute;
  /// Specifies the delay, in milliseconds, between activity rounds for the background writer. Default is 200 ms.
  late final pulumi.Output<int> bgwriterDelay;
  /// The amount of kilobytes that need to be written by the background writer before attempting to force the OS to issue these writes to underlying storage. Specified in kilobytes, default is 512. Setting of 0 disables forced writeback.
  late final pulumi.Output<int> bgwriterFlushAfter;
  /// The maximum number of buffers that the background writer can write. Setting this to zero disables background writing. Default is 100.
  late final pulumi.Output<int> bgwriterLruMaxpages;
  /// The average recent need for new buffers is multiplied by bgwriter_lru_multiplier to arrive at an estimate of the number that will be needed during the next round, (up to bgwriter_lru_maxpages). 1.0 represents a “just in time” policy of writing exactly the number of buffers predicted to be needed. Larger values provide some cushion against spikes in demand, while smaller values intentionally leave writes to be done by server processes. The default is 2.0.
  late final pulumi.Output<double> bgwriterLruMultiplier;
  /// The ID of the target PostgreSQL cluster.
  late final pulumi.Output<String> clusterId;
  /// The amount of time, in milliseconds, to wait on a lock before checking to see if there is a deadlock condition.
  late final pulumi.Output<int> deadlockTimeout;
  /// Specifies the default TOAST compression method for values of compressible columns (the default is lz4). Supported values are: `lz4`, `pglz`.
  late final pulumi.Output<String> defaultToastCompression;
  /// Time out sessions with open transactions after this number of milliseconds
  late final pulumi.Output<int> idleInTransactionSessionTimeout;
  /// Activates, in a boolean, the system-wide use of Just-in-Time Compilation (JIT).
  late final pulumi.Output<bool> jit;
  /// Causes each action executed by autovacuum to be logged if it ran for at least the specified number of milliseconds. Setting this to zero logs all autovacuum actions. Minus-one (the default) disables logging autovacuum actions.
  late final pulumi.Output<int> logAutovacuumMinDuration;
  /// Controls the amount of detail written in the server log for each message that is logged. Supported values are: `TERSE`, `DEFAULT`, `VERBOSE`.
  late final pulumi.Output<String> logErrorVerbosity;
  /// Selects one of the available log-formats. These can support popular log analyzers like pgbadger, pganalyze, etc. Supported values are: `pid=%p,user=%u,db=%d,app=%a,client=%h`, `%m [%p] %q[user=%u,db=%d,app=%a]`, `%t [%p]: [%l-1] user=%u,db=%d,app=%a,client=%h`.
  late final pulumi.Output<String> logLinePrefix;
  /// Log statements that take more than this number of milliseconds to run. If -1, disables.
  late final pulumi.Output<int> logMinDurationStatement;
  /// PostgreSQL maximum number of files that can be open per process.
  late final pulumi.Output<int> maxFilesPerProcess;
  /// PostgreSQL maximum locks per transaction. Once increased, this parameter cannot be lowered from its set value.
  late final pulumi.Output<int> maxLocksPerTransaction;
  /// PostgreSQL maximum logical replication workers (taken from the pool of max_parallel_workers).
  late final pulumi.Output<int> maxLogicalReplicationWorkers;
  /// Sets the maximum number of workers that the system can support for parallel queries.
  late final pulumi.Output<int> maxParallelWorkers;
  /// Sets the maximum number of workers that can be started by a single Gather or Gather Merge node.
  late final pulumi.Output<int> maxParallelWorkersPerGather;
  /// PostgreSQL maximum predicate locks per transaction.
  late final pulumi.Output<int> maxPredLocksPerTransaction;
  /// PostgreSQL maximum prepared transactions. Once increased, this parameter cannot be lowered from its set value.
  late final pulumi.Output<int> maxPreparedTransactions;
  /// PostgreSQL maximum replication slots.
  late final pulumi.Output<int> maxReplicationSlots;
  /// Maximum depth of the stack in bytes.
  late final pulumi.Output<int> maxStackDepth;
  /// Max standby archive delay in milliseconds.
  late final pulumi.Output<int> maxStandbyArchiveDelay;
  /// Max standby streaming delay in milliseconds.
  late final pulumi.Output<int> maxStandbyStreamingDelay;
  /// PostgreSQL maximum WAL senders. Once increased, this parameter cannot be lowered from its set value.
  late final pulumi.Output<int> maxWalSenders;
  /// Sets the maximum number of background processes that the system can support. Once increased, this parameter cannot be lowered from its set value.
  late final pulumi.Output<int> maxWorkerProcesses;
  /// Sets the time interval to run pg_partman's scheduled tasks.
  late final pulumi.Output<int> pgPartmanBgwInterval;
  /// Controls which role to use for pg_partman's scheduled background tasks. Must consist of alpha-numeric characters, dots, underscores, or dashes. May not start with dash or dot. Maximum of 64 characters.
  late final pulumi.Output<String> pgPartmanBgwRole;
  /// Controls which statements are counted. Specify 'top' to track top-level statements (those issued directly by clients), 'all' to also track nested statements (such as statements invoked within functions), or 'none' to disable statement statistics collection. The default value is top. Supported values are: `all`, `top`, `none`.
  late final pulumi.Output<String> pgStatStatementsTrack;
  /// PGBouncer connection pooling settings
  late final pulumi.Output<List<DatabasePostgresqlConfigPgbouncer>> pgbouncers;
  /// Percentage of total RAM that the database server uses for shared memory buffers. Valid range is 20-60 (float), which corresponds to 20% - 60%. This setting adjusts the shared_buffers configuration value.
  late final pulumi.Output<double> sharedBuffersPercentage;
  /// PostgreSQL temporary file limit in KiB. If -1, sets to unlimited.
  late final pulumi.Output<int> tempFileLimit;
  /// TimescaleDB extension configuration values
  late final pulumi.Output<List<DatabasePostgresqlConfigTimescaledb>> timescaledbs;
  /// PostgreSQL service timezone
  late final pulumi.Output<String> timezone;
  /// Specifies the number of bytes reserved to track the currently executing command for each active session.
  late final pulumi.Output<int> trackActivityQuerySize;
  /// Record commit time of transactions. The default value is top. Supported values are: `off`, `on`.
  late final pulumi.Output<String> trackCommitTimestamp;
  /// Enables tracking of function call counts and time used. The default value is top. Supported values are: `all`, `pl`, `none`.
  late final pulumi.Output<String> trackFunctions;
  /// Enables timing of database I/O calls. This parameter is off by default, because it will repeatedly query the operating system for the current time, which may cause significant overhead on some platforms. The default value is top. Supported values are: `off`, `on`.
  late final pulumi.Output<String> trackIoTiming;
  /// Terminate replication connections that are inactive for longer than this amount of time, in milliseconds. Setting this value to zero disables the timeout. Must be either 0 or between 5000 and 10800000.
  late final pulumi.Output<int> walSenderTimeout;
  /// WAL flush interval in milliseconds. Note that setting this value to lower than the default 200ms may negatively impact performance
  late final pulumi.Output<int> walWriterDelay;
  /// The maximum amount of memory, in MB, used by a query operation (such as a sort or hash table) before writing to temporary disk files. Default is 1MB + 0.075% of total RAM (up to 32MB).
  late final pulumi.Output<int> workMem;

  /// Creates a new [DatabasePostgresqlConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabasePostgresqlConfig]. {@macro pulumi_index_database_postgresql_config_database_postgresql_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabasePostgresqlConfig(
    String name, {
    DatabasePostgresqlConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/databasePostgresqlConfig:DatabasePostgresqlConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autovacuumAnalyzeScaleFactor = registerOutput<double>('autovacuumAnalyzeScaleFactor');
    this.autovacuumAnalyzeThreshold = registerOutput<int>('autovacuumAnalyzeThreshold');
    this.autovacuumFreezeMaxAge = registerOutput<int>('autovacuumFreezeMaxAge');
    this.autovacuumMaxWorkers = registerOutput<int>('autovacuumMaxWorkers');
    this.autovacuumNaptime = registerOutput<int>('autovacuumNaptime');
    this.autovacuumVacuumCostDelay = registerOutput<int>('autovacuumVacuumCostDelay');
    this.autovacuumVacuumCostLimit = registerOutput<int>('autovacuumVacuumCostLimit');
    this.autovacuumVacuumScaleFactor = registerOutput<double>('autovacuumVacuumScaleFactor');
    this.autovacuumVacuumThreshold = registerOutput<int>('autovacuumVacuumThreshold');
    this.backupHour = registerOutput<int>('backupHour');
    this.backupMinute = registerOutput<int>('backupMinute');
    this.bgwriterDelay = registerOutput<int>('bgwriterDelay');
    this.bgwriterFlushAfter = registerOutput<int>('bgwriterFlushAfter');
    this.bgwriterLruMaxpages = registerOutput<int>('bgwriterLruMaxpages');
    this.bgwriterLruMultiplier = registerOutput<double>('bgwriterLruMultiplier');
    this.clusterId = registerOutput<String>('clusterId');
    this.deadlockTimeout = registerOutput<int>('deadlockTimeout');
    this.defaultToastCompression = registerOutput<String>('defaultToastCompression');
    this.idleInTransactionSessionTimeout = registerOutput<int>('idleInTransactionSessionTimeout');
    this.jit = registerOutput<bool>('jit');
    this.logAutovacuumMinDuration = registerOutput<int>('logAutovacuumMinDuration');
    this.logErrorVerbosity = registerOutput<String>('logErrorVerbosity');
    this.logLinePrefix = registerOutput<String>('logLinePrefix');
    this.logMinDurationStatement = registerOutput<int>('logMinDurationStatement');
    this.maxFilesPerProcess = registerOutput<int>('maxFilesPerProcess');
    this.maxLocksPerTransaction = registerOutput<int>('maxLocksPerTransaction');
    this.maxLogicalReplicationWorkers = registerOutput<int>('maxLogicalReplicationWorkers');
    this.maxParallelWorkers = registerOutput<int>('maxParallelWorkers');
    this.maxParallelWorkersPerGather = registerOutput<int>('maxParallelWorkersPerGather');
    this.maxPredLocksPerTransaction = registerOutput<int>('maxPredLocksPerTransaction');
    this.maxPreparedTransactions = registerOutput<int>('maxPreparedTransactions');
    this.maxReplicationSlots = registerOutput<int>('maxReplicationSlots');
    this.maxStackDepth = registerOutput<int>('maxStackDepth');
    this.maxStandbyArchiveDelay = registerOutput<int>('maxStandbyArchiveDelay');
    this.maxStandbyStreamingDelay = registerOutput<int>('maxStandbyStreamingDelay');
    this.maxWalSenders = registerOutput<int>('maxWalSenders');
    this.maxWorkerProcesses = registerOutput<int>('maxWorkerProcesses');
    this.pgPartmanBgwInterval = registerOutput<int>('pgPartmanBgwInterval');
    this.pgPartmanBgwRole = registerOutput<String>('pgPartmanBgwRole');
    this.pgStatStatementsTrack = registerOutput<String>('pgStatStatementsTrack');
    this.pgbouncers = registerOutput<List<DatabasePostgresqlConfigPgbouncer>>('pgbouncers');
    this.sharedBuffersPercentage = registerOutput<double>('sharedBuffersPercentage');
    this.tempFileLimit = registerOutput<int>('tempFileLimit');
    this.timescaledbs = registerOutput<List<DatabasePostgresqlConfigTimescaledb>>('timescaledbs');
    this.timezone = registerOutput<String>('timezone');
    this.trackActivityQuerySize = registerOutput<int>('trackActivityQuerySize');
    this.trackCommitTimestamp = registerOutput<String>('trackCommitTimestamp');
    this.trackFunctions = registerOutput<String>('trackFunctions');
    this.trackIoTiming = registerOutput<String>('trackIoTiming');
    this.walSenderTimeout = registerOutput<int>('walSenderTimeout');
    this.walWriterDelay = registerOutput<int>('walWriterDelay');
    this.workMem = registerOutput<int>('workMem');
  }
}
