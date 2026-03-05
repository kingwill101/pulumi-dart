import 'package:pulumi/pulumi.dart' as pulumi;
import 'global_replication_group_args.dart';
import 'global_replication_group_state.dart';

/// Provides an ElastiCache Global Replication Group resource, which manages replication between two or more Replication Groups in different regions. For more information, see the [ElastiCache User Guide](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Redis-Global-Datastore.html).
///
/// ## Example Usage
///
/// ### Global replication group with one secondary replication group
///
/// The global replication group depends on the primary group existing. Secondary replication groups depend on the global replication group. the provider dependency management will handle this transparently using resource value references.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const primary = new aws.elasticache.ReplicationGroup("primary", {
///     replicationGroupId: "example-primary",
///     description: "primary replication group",
///     engine: "redis",
///     engineVersion: "5.0.6",
///     nodeType: "cache.m5.large",
///     numCacheClusters: 1,
/// });
/// const example = new aws.elasticache.GlobalReplicationGroup("example", {
///     globalReplicationGroupIdSuffix: "example",
///     primaryReplicationGroupId: primary.id,
/// });
/// const secondary = new aws.elasticache.ReplicationGroup("secondary", {
///     replicationGroupId: "example-secondary",
///     description: "secondary replication group",
///     globalReplicationGroupId: example.globalReplicationGroupId,
///     numCacheClusters: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// primary = aws.elasticache.ReplicationGroup("primary",
///     replication_group_id="example-primary",
///     description="primary replication group",
///     engine="redis",
///     engine_version="5.0.6",
///     node_type="cache.m5.large",
///     num_cache_clusters=1)
/// example = aws.elasticache.GlobalReplicationGroup("example",
///     global_replication_group_id_suffix="example",
///     primary_replication_group_id=primary.id)
/// secondary = aws.elasticache.ReplicationGroup("secondary",
///     replication_group_id="example-secondary",
///     description="secondary replication group",
///     global_replication_group_id=example.global_replication_group_id,
///     num_cache_clusters=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Aws.ElastiCache.ReplicationGroup("primary", new()
///     {
///         ReplicationGroupId = "example-primary",
///         Description = "primary replication group",
///         Engine = "redis",
///         EngineVersion = "5.0.6",
///         NodeType = "cache.m5.large",
///         NumCacheClusters = 1,
///     });
///
///     var example = new Aws.ElastiCache.GlobalReplicationGroup("example", new()
///     {
///         GlobalReplicationGroupIdSuffix = "example",
///         PrimaryReplicationGroupId = primary.Id,
///     });
///
///     var secondary = new Aws.ElastiCache.ReplicationGroup("secondary", new()
///     {
///         ReplicationGroupId = "example-secondary",
///         Description = "secondary replication group",
///         GlobalReplicationGroupId = example.GlobalReplicationGroupId,
///         NumCacheClusters = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticache"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := elasticache.NewReplicationGroup(ctx, "primary", &elasticache.ReplicationGroupArgs{
/// 			ReplicationGroupId: pulumi.String("example-primary"),
/// 			Description:        pulumi.String("primary replication group"),
/// 			Engine:             pulumi.String("redis"),
/// 			EngineVersion:      pulumi.String("5.0.6"),
/// 			NodeType:           pulumi.String("cache.m5.large"),
/// 			NumCacheClusters:   pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := elasticache.NewGlobalReplicationGroup(ctx, "example", &elasticache.GlobalReplicationGroupArgs{
/// 			GlobalReplicationGroupIdSuffix: pulumi.String("example"),
/// 			PrimaryReplicationGroupId:      primary.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = elasticache.NewReplicationGroup(ctx, "secondary", &elasticache.ReplicationGroupArgs{
/// 			ReplicationGroupId:       pulumi.String("example-secondary"),
/// 			Description:              pulumi.String("secondary replication group"),
/// 			GlobalReplicationGroupId: example.GlobalReplicationGroupId,
/// 			NumCacheClusters:         pulumi.Int(1),
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
/// import com.pulumi.aws.elasticache.ReplicationGroup;
/// import com.pulumi.aws.elasticache.ReplicationGroupArgs;
/// import com.pulumi.aws.elasticache.GlobalReplicationGroup;
/// import com.pulumi.aws.elasticache.GlobalReplicationGroupArgs;
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
///         var primary = new ReplicationGroup("primary", ReplicationGroupArgs.builder()
///             .replicationGroupId("example-primary")
///             .description("primary replication group")
///             .engine("redis")
///             .engineVersion("5.0.6")
///             .nodeType("cache.m5.large")
///             .numCacheClusters(1)
///             .build());
///
///         var example = new GlobalReplicationGroup("example", GlobalReplicationGroupArgs.builder()
///             .globalReplicationGroupIdSuffix("example")
///             .primaryReplicationGroupId(primary.id())
///             .build());
///
///         var secondary = new ReplicationGroup("secondary", ReplicationGroupArgs.builder()
///             .replicationGroupId("example-secondary")
///             .description("secondary replication group")
///             .globalReplicationGroupId(example.globalReplicationGroupId())
///             .numCacheClusters(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:elasticache:GlobalReplicationGroup
///     properties:
///       globalReplicationGroupIdSuffix: example
///       primaryReplicationGroupId: ${primary.id}
///   primary:
///     type: aws:elasticache:ReplicationGroup
///     properties:
///       replicationGroupId: example-primary
///       description: primary replication group
///       engine: redis
///       engineVersion: 5.0.6
///       nodeType: cache.m5.large
///       numCacheClusters: 1
///   secondary:
///     type: aws:elasticache:ReplicationGroup
///     properties:
///       replicationGroupId: example-secondary
///       description: secondary replication group
///       globalReplicationGroupId: ${example.globalReplicationGroupId}
///       numCacheClusters: 1
/// ```
///
///
/// ### Managing Redis OOS/Valkey Engine Versions
///
/// The initial Redis version is determined by the version set on the primary replication group.
/// However, once it is part of a Global Replication Group,
/// the Global Replication Group manages the version of all member replication groups.
///
/// The provider is configured to ignore changes to `engine`, `engine_version` and `parameter_group_name` inside `aws.elasticache.ReplicationGroup` resources if they belong to a global replication group.
///
/// In this example,
/// the primary replication group will be created with Redis 6.0,
/// and then upgraded to Redis 6.2 once added to the Global Replication Group.
/// The secondary replication group will be created with Redis 6.2.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const primary = new aws.elasticache.ReplicationGroup("primary", {
///     replicationGroupId: "example-primary",
///     description: "primary replication group",
///     engine: "redis",
///     engineVersion: "6.0",
///     nodeType: "cache.m5.large",
///     numCacheClusters: 1,
/// });
/// const example = new aws.elasticache.GlobalReplicationGroup("example", {
///     globalReplicationGroupIdSuffix: "example",
///     primaryReplicationGroupId: primary.id,
///     engineVersion: "6.2",
/// });
/// const secondary = new aws.elasticache.ReplicationGroup("secondary", {
///     replicationGroupId: "example-secondary",
///     description: "secondary replication group",
///     globalReplicationGroupId: example.globalReplicationGroupId,
///     numCacheClusters: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// primary = aws.elasticache.ReplicationGroup("primary",
///     replication_group_id="example-primary",
///     description="primary replication group",
///     engine="redis",
///     engine_version="6.0",
///     node_type="cache.m5.large",
///     num_cache_clusters=1)
/// example = aws.elasticache.GlobalReplicationGroup("example",
///     global_replication_group_id_suffix="example",
///     primary_replication_group_id=primary.id,
///     engine_version="6.2")
/// secondary = aws.elasticache.ReplicationGroup("secondary",
///     replication_group_id="example-secondary",
///     description="secondary replication group",
///     global_replication_group_id=example.global_replication_group_id,
///     num_cache_clusters=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Aws.ElastiCache.ReplicationGroup("primary", new()
///     {
///         ReplicationGroupId = "example-primary",
///         Description = "primary replication group",
///         Engine = "redis",
///         EngineVersion = "6.0",
///         NodeType = "cache.m5.large",
///         NumCacheClusters = 1,
///     });
///
///     var example = new Aws.ElastiCache.GlobalReplicationGroup("example", new()
///     {
///         GlobalReplicationGroupIdSuffix = "example",
///         PrimaryReplicationGroupId = primary.Id,
///         EngineVersion = "6.2",
///     });
///
///     var secondary = new Aws.ElastiCache.ReplicationGroup("secondary", new()
///     {
///         ReplicationGroupId = "example-secondary",
///         Description = "secondary replication group",
///         GlobalReplicationGroupId = example.GlobalReplicationGroupId,
///         NumCacheClusters = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticache"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := elasticache.NewReplicationGroup(ctx, "primary", &elasticache.ReplicationGroupArgs{
/// 			ReplicationGroupId: pulumi.String("example-primary"),
/// 			Description:        pulumi.String("primary replication group"),
/// 			Engine:             pulumi.String("redis"),
/// 			EngineVersion:      pulumi.String("6.0"),
/// 			NodeType:           pulumi.String("cache.m5.large"),
/// 			NumCacheClusters:   pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := elasticache.NewGlobalReplicationGroup(ctx, "example", &elasticache.GlobalReplicationGroupArgs{
/// 			GlobalReplicationGroupIdSuffix: pulumi.String("example"),
/// 			PrimaryReplicationGroupId:      primary.ID(),
/// 			EngineVersion:                  pulumi.String("6.2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = elasticache.NewReplicationGroup(ctx, "secondary", &elasticache.ReplicationGroupArgs{
/// 			ReplicationGroupId:       pulumi.String("example-secondary"),
/// 			Description:              pulumi.String("secondary replication group"),
/// 			GlobalReplicationGroupId: example.GlobalReplicationGroupId,
/// 			NumCacheClusters:         pulumi.Int(1),
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
/// import com.pulumi.aws.elasticache.ReplicationGroup;
/// import com.pulumi.aws.elasticache.ReplicationGroupArgs;
/// import com.pulumi.aws.elasticache.GlobalReplicationGroup;
/// import com.pulumi.aws.elasticache.GlobalReplicationGroupArgs;
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
///         var primary = new ReplicationGroup("primary", ReplicationGroupArgs.builder()
///             .replicationGroupId("example-primary")
///             .description("primary replication group")
///             .engine("redis")
///             .engineVersion("6.0")
///             .nodeType("cache.m5.large")
///             .numCacheClusters(1)
///             .build());
///
///         var example = new GlobalReplicationGroup("example", GlobalReplicationGroupArgs.builder()
///             .globalReplicationGroupIdSuffix("example")
///             .primaryReplicationGroupId(primary.id())
///             .engineVersion("6.2")
///             .build());
///
///         var secondary = new ReplicationGroup("secondary", ReplicationGroupArgs.builder()
///             .replicationGroupId("example-secondary")
///             .description("secondary replication group")
///             .globalReplicationGroupId(example.globalReplicationGroupId())
///             .numCacheClusters(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:elasticache:GlobalReplicationGroup
///     properties:
///       globalReplicationGroupIdSuffix: example
///       primaryReplicationGroupId: ${primary.id}
///       engineVersion: '6.2'
///   primary:
///     type: aws:elasticache:ReplicationGroup
///     properties:
///       replicationGroupId: example-primary
///       description: primary replication group
///       engine: redis
///       engineVersion: '6.0'
///       nodeType: cache.m5.large
///       numCacheClusters: 1
///   secondary:
///     type: aws:elasticache:ReplicationGroup
///     properties:
///       replicationGroupId: example-secondary
///       description: secondary replication group
///       globalReplicationGroupId: ${example.globalReplicationGroupId}
///       numCacheClusters: 1
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import ElastiCache Global Replication Groups using the `global_replication_group_id`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticache/globalReplicationGroup:GlobalReplicationGroup my_global_replication_group okuqm-global-replication-group-1
/// ```
class GlobalReplicationGroup extends pulumi.CustomResource {
  /// The ARN of the ElastiCache Global Replication Group.
  late final pulumi.Output<String> arn;
  /// A flag that indicate whether the encryption at rest is enabled.
  late final pulumi.Output<bool> atRestEncryptionEnabled;
  /// A flag that indicate whether AuthToken (password) is enabled.
  late final pulumi.Output<bool> authTokenEnabled;
  /// Specifies whether read-only replicas will be automatically promoted to read/write primary if the existing primary fails.
  /// When creating, by default the Global Replication Group inherits the automatic failover setting of the primary replication group.
  late final pulumi.Output<bool> automaticFailoverEnabled;
  /// The instance class used.
  /// See AWS documentation for information on [supported node types](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/CacheNodes.SupportedTypes.html)
  /// and [guidance on selecting node types](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/nodes-select-size.html).
  /// When creating, by default the Global Replication Group inherits the node type of the primary replication group.
  late final pulumi.Output<String> cacheNodeType;
  /// Indicates whether the Global Datastore is cluster enabled.
  late final pulumi.Output<bool> clusterEnabled;
  /// The name of the cache engine to be used for the clusters in this global replication group.
  /// When creating, by default the Global Replication Group inherits the engine of the primary replication group.
  /// If an engine is specified, the Global Replication Group and all member replication groups will be upgraded to this engine.
  /// Valid values are `redis` or `valkey`.
  /// Default is `redis` if `engine_version` is specified.
  late final pulumi.Output<String> engine;
  /// Engine version to use for the Global Replication Group.
  /// When creating, by default the Global Replication Group inherits the version of the primary replication group.
  /// If a version is specified, the Global Replication Group and all member replication groups will be upgraded to this version.
  /// Cannot be downgraded without replacing the Global Replication Group and all member replication groups.
  /// When the version is 7 or higher, the major and minor version should be set, e.g., `7.2`.
  /// When the version is 6, the major and minor version can be set, e.g., `6.2`,
  /// or the minor version can be unspecified which will use the latest version at creation time, e.g., `6.x`.
  /// The actual engine version used is returned in the attribute `engine_version_actual`, see Attribute Reference below.
  late final pulumi.Output<String> engineVersion;
  /// The full version number of the cache engine running on the members of this global replication group.
  late final pulumi.Output<String> engineVersionActual;
  /// Set of node groups (shards) on the global replication group.
  /// Has the values:
  late final pulumi.Output<List<Map<String, dynamic>>> globalNodeGroups;
  /// A user-created description for the global replication group.
  late final pulumi.Output<String?> globalReplicationGroupDescription;
  /// The full ID of the global replication group.
  late final pulumi.Output<String> globalReplicationGroupId;
  /// The suffix name of a Global Datastore. If `global_replication_group_id_suffix` is changed, creates a new resource.
  late final pulumi.Output<String> globalReplicationGroupIdSuffix;
  /// The number of node groups (shards) on the global replication group.
  late final pulumi.Output<int> numNodeGroups;
  /// An ElastiCache Parameter Group to use for the Global Replication Group.
  /// Required when upgrading an engine or major engine version, but will be ignored if left configured after the upgrade is complete.
  /// Specifying without a major version upgrade will fail.
  /// Note that ElastiCache creates a copy of this parameter group for each member replication group.
  late final pulumi.Output<String?> parameterGroupName;
  /// The ID of the primary cluster that accepts writes and will replicate updates to the secondary cluster. If `primary_replication_group_id` is changed, creates a new resource.
  late final pulumi.Output<String> primaryReplicationGroupId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A flag that indicates whether the encryption in transit is enabled.
  late final pulumi.Output<bool> transitEncryptionEnabled;

  /// Creates a new [GlobalReplicationGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GlobalReplicationGroup]. {@macro pulumi_elasticache_global_replication_group_global_replication_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GlobalReplicationGroup(
    String name, {
    GlobalReplicationGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/globalReplicationGroup:GlobalReplicationGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    atRestEncryptionEnabled = registerOutput<bool>('atRestEncryptionEnabled');
    authTokenEnabled = registerOutput<bool>('authTokenEnabled');
    automaticFailoverEnabled = registerOutput<bool>('automaticFailoverEnabled');
    cacheNodeType = registerOutput<String>('cacheNodeType');
    clusterEnabled = registerOutput<bool>('clusterEnabled');
    engine = registerOutput<String>('engine');
    engineVersion = registerOutput<String>('engineVersion');
    engineVersionActual = registerOutput<String>('engineVersionActual');
    globalNodeGroups = registerOutput<List<Map<String, dynamic>>>('globalNodeGroups');
    globalReplicationGroupDescription = registerOutput<String?>('globalReplicationGroupDescription');
    globalReplicationGroupId = registerOutput<String>('globalReplicationGroupId');
    globalReplicationGroupIdSuffix = registerOutput<String>('globalReplicationGroupIdSuffix');
    numNodeGroups = registerOutput<int>('numNodeGroups');
    parameterGroupName = registerOutput<String?>('parameterGroupName');
    primaryReplicationGroupId = registerOutput<String>('primaryReplicationGroupId');
    region = registerOutput<String>('region');
    transitEncryptionEnabled = registerOutput<bool>('transitEncryptionEnabled');
  }

  /// Gets an existing [GlobalReplicationGroup] resource's state with the given [name] and [id].
  static GlobalReplicationGroup get(
    String name,
    pulumi.Input<String> id, {
    GlobalReplicationGroupState? state,
  }) {
    return GlobalReplicationGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GlobalReplicationGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/globalReplicationGroup:GlobalReplicationGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    atRestEncryptionEnabled = registerOutput<bool>('atRestEncryptionEnabled');
    authTokenEnabled = registerOutput<bool>('authTokenEnabled');
    automaticFailoverEnabled = registerOutput<bool>('automaticFailoverEnabled');
    cacheNodeType = registerOutput<String>('cacheNodeType');
    clusterEnabled = registerOutput<bool>('clusterEnabled');
    engine = registerOutput<String>('engine');
    engineVersion = registerOutput<String>('engineVersion');
    engineVersionActual = registerOutput<String>('engineVersionActual');
    globalNodeGroups = registerOutput<List<Map<String, dynamic>>>('globalNodeGroups');
    globalReplicationGroupDescription = registerOutput<String?>('globalReplicationGroupDescription');
    globalReplicationGroupId = registerOutput<String>('globalReplicationGroupId');
    globalReplicationGroupIdSuffix = registerOutput<String>('globalReplicationGroupIdSuffix');
    numNodeGroups = registerOutput<int>('numNodeGroups');
    parameterGroupName = registerOutput<String?>('parameterGroupName');
    primaryReplicationGroupId = registerOutput<String>('primaryReplicationGroupId');
    region = registerOutput<String>('region');
    transitEncryptionEnabled = registerOutput<bool>('transitEncryptionEnabled');
  }
}
