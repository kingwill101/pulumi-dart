import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_valkey_config_args.dart';

/// Provides a virtual resource that can be used to change advanced configuration
/// options for a DigitalOcean managed Valkey database cluster.
///
/// > **Note** Valkey configurations are only removed from state when destroyed. The remote configuration is not unset.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as digitalocean from "@pulumi/digitalocean";
///
/// const exampleDatabaseCluster = new digitalocean.DatabaseCluster("example", {
///     name: "example-valkey-cluster",
///     engine: "valkey",
///     version: "8",
///     size: digitalocean.DatabaseSlug.DB_1VPCU1GB,
///     region: digitalocean.Region.NYC1,
///     nodeCount: 1,
/// });
/// const example = new digitalocean.DatabaseValkeyConfig("example", {
///     clusterId: exampleDatabaseCluster.id,
///     notifyKeyspaceEvents: "KEA",
///     timeout: 90,
///     valkeyMaxmemoryPolicy: "allkeys-random",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_digitalocean as digitalocean
///
/// example_database_cluster = digitalocean.DatabaseCluster("example",
///     name="example-valkey-cluster",
///     engine="valkey",
///     version="8",
///     size=digitalocean.DatabaseSlug.D_B_1_VPCU1_GB,
///     region=digitalocean.Region.NYC1,
///     node_count=1)
/// example = digitalocean.DatabaseValkeyConfig("example",
///     cluster_id=example_database_cluster.id,
///     notify_keyspace_events="KEA",
///     timeout=90,
///     valkey_maxmemory_policy="allkeys-random")
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
///         Name = "example-valkey-cluster",
///         Engine = "valkey",
///         Version = "8",
///         Size = DigitalOcean.DatabaseSlug.DB_1VPCU1GB,
///         Region = DigitalOcean.Region.NYC1,
///         NodeCount = 1,
///     });
///
///     var example = new DigitalOcean.DatabaseValkeyConfig("example", new()
///     {
///         ClusterId = exampleDatabaseCluster.Id,
///         NotifyKeyspaceEvents = "KEA",
///         Timeout = 90,
///         ValkeyMaxmemoryPolicy = "allkeys-random",
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
/// 			Name:      pulumi.String("example-valkey-cluster"),
/// 			Engine:    pulumi.String("valkey"),
/// 			Version:   pulumi.String("8"),
/// 			Size:      pulumi.String(digitalocean.DatabaseSlug_DB_1VPCU1GB),
/// 			Region:    pulumi.String(digitalocean.RegionNYC1),
/// 			NodeCount: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = digitalocean.NewDatabaseValkeyConfig(ctx, "example", &digitalocean.DatabaseValkeyConfigArgs{
/// 			ClusterId:             exampleDatabaseCluster.ID(),
/// 			NotifyKeyspaceEvents:  pulumi.String("KEA"),
/// 			Timeout:               pulumi.Int(90),
/// 			ValkeyMaxmemoryPolicy: pulumi.String("allkeys-random"),
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
/// import com.pulumi.digitalocean.DatabaseValkeyConfig;
/// import com.pulumi.digitalocean.DatabaseValkeyConfigArgs;
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
///             .name("example-valkey-cluster")
///             .engine("valkey")
///             .version("8")
///             .size("db-s-1vcpu-1gb")
///             .region("nyc1")
///             .nodeCount(1)
///             .build());
///
///         var example = new DatabaseValkeyConfig("example", DatabaseValkeyConfigArgs.builder()
///             .clusterId(exampleDatabaseCluster.id())
///             .notifyKeyspaceEvents("KEA")
///             .timeout(90)
///             .valkeyMaxmemoryPolicy("allkeys-random")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: digitalocean:DatabaseValkeyConfig
///     properties:
///       clusterId: ${exampleDatabaseCluster.id}
///       notifyKeyspaceEvents: KEA
///       timeout: 90
///       valkeyMaxmemoryPolicy: allkeys-random
///   exampleDatabaseCluster:
///     type: digitalocean:DatabaseCluster
///     name: example
///     properties:
///       name: example-valkey-cluster
///       engine: valkey
///       version: '8'
///       size: db-s-1vcpu-1gb
///       region: nyc1
///       nodeCount: 1
/// ```
///
///
/// ## Import
///
/// A Valkey database cluster's configuration can be imported using the `id` the parent cluster, e.g.
///
/// ```sh
/// $ pulumi import digitalocean:index/databaseValkeyConfig:DatabaseValkeyConfig example 245bcfd0-7f31-4ce6-a2bc-475a116cca97
/// ```
class DatabaseValkeyConfig extends pulumi.CustomResource {
  /// Determines default pub/sub channels' ACL for new users if an ACL is not supplied. When this option is not defined, `allchannels` is assumed to keep backward compatibility. This option doesn't affect Valkey' `acl-pubsub-default` configuration. Supported values are: `allchannels` and `resetchannels`
  late final pulumi.Output<String> aclChannelsDefault;
  /// The ID of the target Valkey cluster.
  late final pulumi.Output<String> clusterId;
  /// Frequent RDB snapshots. When enabled, Valkey will create frequent local RDB snapshots. When disabled, Valkey will only take RDB snapshots when a backup is created, based on the backup schedule. This setting is ignored when valkey_persistence is set to off.
  late final pulumi.Output<bool> frequentSnapshots;
  /// The Valkey IO thread count.
  late final pulumi.Output<int> ioThreads;
  /// The LFU maxmemory policy counter decay time in minutes.
  late final pulumi.Output<int> lfuDecayTime;
  /// The counter logarithm factor for volatile-lfu and allkeys-lfu maxmemory policies.
  late final pulumi.Output<int> lfuLogFactor;
  /// The `notify-keyspace-events` option. Requires at least `K` or `E`.
  late final pulumi.Output<String> notifyKeyspaceEvents;
  /// The number of Valkey databases. Changing this will cause a restart of Valkey service.
  late final pulumi.Output<int> numberOfDatabases;
  /// When persistence is 'rdb', Valkey does RDB dumps each 10 minutes if any key is changed. Also RDB dumps are done according to backup schedule for backup purposes. When persistence is 'off', no RDB dumps and backups are done, so data can be lost at any moment if service is restarted for any reason, or if service is powered off. Also service can't be forked.
  late final pulumi.Output<String> persistence;
  /// The output buffer limit for pub/sub clients in MB. The value is the hard limit, the soft limit is 1/4 of the hard limit. When setting the limit, be mindful of the available memory in the selected service plan.
  late final pulumi.Output<int> pubsubClientOutputBufferLimit;
  /// A boolean indicating whether to require SSL to access Valkey.
  late final pulumi.Output<bool> ssl;
  /// The Valkey idle connection timeout in seconds.
  late final pulumi.Output<int> timeout;
  /// Active expire effort. Valkey reclaims expired keys both when accessed and in the background. The background process scans for expired keys to free memory. Increasing the active-expire-effort setting (default 1, max 10) uses more CPU to reclaim expired keys faster, reducing memory usage but potentially increasing latency.
  late final pulumi.Output<int> valkeyActiveExpireEffort;
  /// Eviction policy model
  late final pulumi.Output<String> valkeyMaxmemoryPolicy;

  /// Creates a new [DatabaseValkeyConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseValkeyConfig]. {@macro pulumi_index_database_valkey_config_database_valkey_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseValkeyConfig(
    String name, {
    DatabaseValkeyConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'digitalocean:index/databaseValkeyConfig:DatabaseValkeyConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.aclChannelsDefault = registerOutput<String>('aclChannelsDefault');
    this.clusterId = registerOutput<String>('clusterId');
    this.frequentSnapshots = registerOutput<bool>('frequentSnapshots');
    this.ioThreads = registerOutput<int>('ioThreads');
    this.lfuDecayTime = registerOutput<int>('lfuDecayTime');
    this.lfuLogFactor = registerOutput<int>('lfuLogFactor');
    this.notifyKeyspaceEvents = registerOutput<String>('notifyKeyspaceEvents');
    this.numberOfDatabases = registerOutput<int>('numberOfDatabases');
    this.persistence = registerOutput<String>('persistence');
    this.pubsubClientOutputBufferLimit = registerOutput<int>('pubsubClientOutputBufferLimit');
    this.ssl = registerOutput<bool>('ssl');
    this.timeout = registerOutput<int>('timeout');
    this.valkeyActiveExpireEffort = registerOutput<int>('valkeyActiveExpireEffort');
    this.valkeyMaxmemoryPolicy = registerOutput<String>('valkeyMaxmemoryPolicy');
  }
}
