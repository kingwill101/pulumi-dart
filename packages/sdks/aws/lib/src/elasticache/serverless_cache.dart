import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_cache_args.dart';
import 'serverless_cache_cache_usage_limits.dart';
import 'serverless_cache_endpoint.dart';
import 'serverless_cache_reader_endpoint.dart';
import 'serverless_cache_state.dart';
import 'serverless_cache_timeouts.dart';

/// Provides an ElastiCache Serverless Cache resource which manages memcached, redis or valkey.
///
/// ## Example Usage
///
/// ### Memcached Serverless
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.elasticache.ServerlessCache("example", {
///     engine: "memcached",
///     name: "example",
///     cacheUsageLimits: {
///         dataStorage: {
///             maximum: 10,
///             unit: "GB",
///         },
///         ecpuPerSeconds: [{
///             maximum: 5000,
///         }],
///     },
///     description: "Test Server",
///     kmsKeyId: test.arn,
///     majorEngineVersion: "1.6",
///     securityGroupIds: [testAwsSecurityGroup.id],
///     subnetIds: testAwsSubnet.map(__item => __item.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.elasticache.ServerlessCache("example",
///     engine="memcached",
///     name="example",
///     cache_usage_limits={
///         "data_storage": {
///             "maximum": 10,
///             "unit": "GB",
///         },
///         "ecpu_per_seconds": [{
///             "maximum": 5000,
///         }],
///     },
///     description="Test Server",
///     kms_key_id=test["arn"],
///     major_engine_version="1.6",
///     security_group_ids=[test_aws_security_group["id"]],
///     subnet_ids=[__item["id"] for __item in test_aws_subnet])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ElastiCache.ServerlessCache("example", new()
///     {
///         Engine = "memcached",
///         Name = "example",
///         CacheUsageLimits = new Aws.ElastiCache.Inputs.ServerlessCacheCacheUsageLimitsArgs
///         {
///             DataStorage = new Aws.ElastiCache.Inputs.ServerlessCacheCacheUsageLimitsDataStorageArgs
///             {
///                 Maximum = 10,
///                 Unit = "GB",
///             },
///             EcpuPerSeconds = new[]
///             {
///                 new Aws.ElastiCache.Inputs.ServerlessCacheCacheUsageLimitsEcpuPerSecondArgs
///                 {
///                     Maximum = 5000,
///                 },
///             },
///         },
///         Description = "Test Server",
///         KmsKeyId = test.Arn,
///         MajorEngineVersion = "1.6",
///         SecurityGroupIds = new[]
///         {
///             testAwsSecurityGroup.Id,
///         },
///         SubnetIds = testAwsSubnet.Select(__item => __item.Id).ToList(),
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
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// var splat0 []interface{}
/// for _, val0 := range testAwsSubnet {
/// splat0 = append(splat0, val0.Id)
/// }
/// _, err := elasticache.NewServerlessCache(ctx, "example", &elasticache.ServerlessCacheArgs{
/// Engine: pulumi.String("memcached"),
/// Name: pulumi.String("example"),
/// CacheUsageLimits: &elasticache.ServerlessCacheCacheUsageLimitsArgs{
/// DataStorage: &elasticache.ServerlessCacheCacheUsageLimitsDataStorageArgs{
/// Maximum: pulumi.Int(10),
/// Unit: pulumi.String("GB"),
/// },
/// EcpuPerSeconds: elasticache.ServerlessCacheCacheUsageLimitsEcpuPerSecondArray{
/// &elasticache.ServerlessCacheCacheUsageLimitsEcpuPerSecondArgs{
/// Maximum: pulumi.Int(5000),
/// },
/// },
/// },
/// Description: pulumi.String("Test Server"),
/// KmsKeyId: pulumi.Any(test.Arn),
/// MajorEngineVersion: pulumi.String("1.6"),
/// SecurityGroupIds: pulumi.StringArray{
/// testAwsSecurityGroup.Id,
/// },
/// SubnetIds: toPulumiArray(splat0),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// func toPulumiArray(arr []) pulumi.Array {
/// var pulumiArr pulumi.Array
/// for _, v := range arr {
/// pulumiArr = append(pulumiArr, pulumi.(v))
/// }
/// return pulumiArr
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticache.ServerlessCache;
/// import com.pulumi.aws.elasticache.ServerlessCacheArgs;
/// import com.pulumi.aws.elasticache.inputs.ServerlessCacheCacheUsageLimitsArgs;
/// import com.pulumi.aws.elasticache.inputs.ServerlessCacheCacheUsageLimitsDataStorageArgs;
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
///         var example = new ServerlessCache("example", ServerlessCacheArgs.builder()
///             .engine("memcached")
///             .name("example")
///             .cacheUsageLimits(ServerlessCacheCacheUsageLimitsArgs.builder()
///                 .dataStorage(ServerlessCacheCacheUsageLimitsDataStorageArgs.builder()
///                     .maximum(10)
///                     .unit("GB")
///                     .build())
///                 .ecpuPerSeconds(ServerlessCacheCacheUsageLimitsEcpuPerSecondArgs.builder()
///                     .maximum(5000)
///                     .build())
///                 .build())
///             .description("Test Server")
///             .kmsKeyId(test.arn())
///             .majorEngineVersion("1.6")
///             .securityGroupIds(testAwsSecurityGroup.id())
///             .subnetIds(testAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///             .build());
///
///     }
/// }
/// ```
///
///
/// ### Redis OSS Serverless
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.elasticache.ServerlessCache("example", {
///     engine: "redis",
///     name: "example",
///     cacheUsageLimits: {
///         dataStorage: {
///             maximum: 10,
///             unit: "GB",
///         },
///         ecpuPerSeconds: [{
///             maximum: 5000,
///         }],
///     },
///     dailySnapshotTime: "09:00",
///     description: "Test Server",
///     kmsKeyId: test.arn,
///     majorEngineVersion: "7",
///     snapshotRetentionLimit: 1,
///     securityGroupIds: [testAwsSecurityGroup.id],
///     subnetIds: testAwsSubnet.map(__item => __item.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.elasticache.ServerlessCache("example",
///     engine="redis",
///     name="example",
///     cache_usage_limits={
///         "data_storage": {
///             "maximum": 10,
///             "unit": "GB",
///         },
///         "ecpu_per_seconds": [{
///             "maximum": 5000,
///         }],
///     },
///     daily_snapshot_time="09:00",
///     description="Test Server",
///     kms_key_id=test["arn"],
///     major_engine_version="7",
///     snapshot_retention_limit=1,
///     security_group_ids=[test_aws_security_group["id"]],
///     subnet_ids=[__item["id"] for __item in test_aws_subnet])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ElastiCache.ServerlessCache("example", new()
///     {
///         Engine = "redis",
///         Name = "example",
///         CacheUsageLimits = new Aws.ElastiCache.Inputs.ServerlessCacheCacheUsageLimitsArgs
///         {
///             DataStorage = new Aws.ElastiCache.Inputs.ServerlessCacheCacheUsageLimitsDataStorageArgs
///             {
///                 Maximum = 10,
///                 Unit = "GB",
///             },
///             EcpuPerSeconds = new[]
///             {
///                 new Aws.ElastiCache.Inputs.ServerlessCacheCacheUsageLimitsEcpuPerSecondArgs
///                 {
///                     Maximum = 5000,
///                 },
///             },
///         },
///         DailySnapshotTime = "09:00",
///         Description = "Test Server",
///         KmsKeyId = test.Arn,
///         MajorEngineVersion = "7",
///         SnapshotRetentionLimit = 1,
///         SecurityGroupIds = new[]
///         {
///             testAwsSecurityGroup.Id,
///         },
///         SubnetIds = testAwsSubnet.Select(__item => __item.Id).ToList(),
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
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// var splat0 []interface{}
/// for _, val0 := range testAwsSubnet {
/// splat0 = append(splat0, val0.Id)
/// }
/// _, err := elasticache.NewServerlessCache(ctx, "example", &elasticache.ServerlessCacheArgs{
/// Engine: pulumi.String("redis"),
/// Name: pulumi.String("example"),
/// CacheUsageLimits: &elasticache.ServerlessCacheCacheUsageLimitsArgs{
/// DataStorage: &elasticache.ServerlessCacheCacheUsageLimitsDataStorageArgs{
/// Maximum: pulumi.Int(10),
/// Unit: pulumi.String("GB"),
/// },
/// EcpuPerSeconds: elasticache.ServerlessCacheCacheUsageLimitsEcpuPerSecondArray{
/// &elasticache.ServerlessCacheCacheUsageLimitsEcpuPerSecondArgs{
/// Maximum: pulumi.Int(5000),
/// },
/// },
/// },
/// DailySnapshotTime: pulumi.String("09:00"),
/// Description: pulumi.String("Test Server"),
/// KmsKeyId: pulumi.Any(test.Arn),
/// MajorEngineVersion: pulumi.String("7"),
/// SnapshotRetentionLimit: pulumi.Int(1),
/// SecurityGroupIds: pulumi.StringArray{
/// testAwsSecurityGroup.Id,
/// },
/// SubnetIds: toPulumiArray(splat0),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// func toPulumiArray(arr []) pulumi.Array {
/// var pulumiArr pulumi.Array
/// for _, v := range arr {
/// pulumiArr = append(pulumiArr, pulumi.(v))
/// }
/// return pulumiArr
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticache.ServerlessCache;
/// import com.pulumi.aws.elasticache.ServerlessCacheArgs;
/// import com.pulumi.aws.elasticache.inputs.ServerlessCacheCacheUsageLimitsArgs;
/// import com.pulumi.aws.elasticache.inputs.ServerlessCacheCacheUsageLimitsDataStorageArgs;
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
///         var example = new ServerlessCache("example", ServerlessCacheArgs.builder()
///             .engine("redis")
///             .name("example")
///             .cacheUsageLimits(ServerlessCacheCacheUsageLimitsArgs.builder()
///                 .dataStorage(ServerlessCacheCacheUsageLimitsDataStorageArgs.builder()
///                     .maximum(10)
///                     .unit("GB")
///                     .build())
///                 .ecpuPerSeconds(ServerlessCacheCacheUsageLimitsEcpuPerSecondArgs.builder()
///                     .maximum(5000)
///                     .build())
///                 .build())
///             .dailySnapshotTime("09:00")
///             .description("Test Server")
///             .kmsKeyId(test.arn())
///             .majorEngineVersion("7")
///             .snapshotRetentionLimit(1)
///             .securityGroupIds(testAwsSecurityGroup.id())
///             .subnetIds(testAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///             .build());
///
///     }
/// }
/// ```
///
///
/// ### Valkey Serverless
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.elasticache.ServerlessCache("example", {
///     engine: "valkey",
///     name: "example",
///     cacheUsageLimits: {
///         dataStorage: {
///             maximum: 10,
///             unit: "GB",
///         },
///         ecpuPerSeconds: [{
///             maximum: 5000,
///         }],
///     },
///     dailySnapshotTime: "09:00",
///     description: "Test Server",
///     kmsKeyId: test.arn,
///     majorEngineVersion: "7",
///     snapshotRetentionLimit: 1,
///     securityGroupIds: [testAwsSecurityGroup.id],
///     subnetIds: testAwsSubnet.map(__item => __item.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.elasticache.ServerlessCache("example",
///     engine="valkey",
///     name="example",
///     cache_usage_limits={
///         "data_storage": {
///             "maximum": 10,
///             "unit": "GB",
///         },
///         "ecpu_per_seconds": [{
///             "maximum": 5000,
///         }],
///     },
///     daily_snapshot_time="09:00",
///     description="Test Server",
///     kms_key_id=test["arn"],
///     major_engine_version="7",
///     snapshot_retention_limit=1,
///     security_group_ids=[test_aws_security_group["id"]],
///     subnet_ids=[__item["id"] for __item in test_aws_subnet])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ElastiCache.ServerlessCache("example", new()
///     {
///         Engine = "valkey",
///         Name = "example",
///         CacheUsageLimits = new Aws.ElastiCache.Inputs.ServerlessCacheCacheUsageLimitsArgs
///         {
///             DataStorage = new Aws.ElastiCache.Inputs.ServerlessCacheCacheUsageLimitsDataStorageArgs
///             {
///                 Maximum = 10,
///                 Unit = "GB",
///             },
///             EcpuPerSeconds = new[]
///             {
///                 new Aws.ElastiCache.Inputs.ServerlessCacheCacheUsageLimitsEcpuPerSecondArgs
///                 {
///                     Maximum = 5000,
///                 },
///             },
///         },
///         DailySnapshotTime = "09:00",
///         Description = "Test Server",
///         KmsKeyId = test.Arn,
///         MajorEngineVersion = "7",
///         SnapshotRetentionLimit = 1,
///         SecurityGroupIds = new[]
///         {
///             testAwsSecurityGroup.Id,
///         },
///         SubnetIds = testAwsSubnet.Select(__item => __item.Id).ToList(),
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
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// var splat0 []interface{}
/// for _, val0 := range testAwsSubnet {
/// splat0 = append(splat0, val0.Id)
/// }
/// _, err := elasticache.NewServerlessCache(ctx, "example", &elasticache.ServerlessCacheArgs{
/// Engine: pulumi.String("valkey"),
/// Name: pulumi.String("example"),
/// CacheUsageLimits: &elasticache.ServerlessCacheCacheUsageLimitsArgs{
/// DataStorage: &elasticache.ServerlessCacheCacheUsageLimitsDataStorageArgs{
/// Maximum: pulumi.Int(10),
/// Unit: pulumi.String("GB"),
/// },
/// EcpuPerSeconds: elasticache.ServerlessCacheCacheUsageLimitsEcpuPerSecondArray{
/// &elasticache.ServerlessCacheCacheUsageLimitsEcpuPerSecondArgs{
/// Maximum: pulumi.Int(5000),
/// },
/// },
/// },
/// DailySnapshotTime: pulumi.String("09:00"),
/// Description: pulumi.String("Test Server"),
/// KmsKeyId: pulumi.Any(test.Arn),
/// MajorEngineVersion: pulumi.String("7"),
/// SnapshotRetentionLimit: pulumi.Int(1),
/// SecurityGroupIds: pulumi.StringArray{
/// testAwsSecurityGroup.Id,
/// },
/// SubnetIds: toPulumiArray(splat0),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// func toPulumiArray(arr []) pulumi.Array {
/// var pulumiArr pulumi.Array
/// for _, v := range arr {
/// pulumiArr = append(pulumiArr, pulumi.(v))
/// }
/// return pulumiArr
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticache.ServerlessCache;
/// import com.pulumi.aws.elasticache.ServerlessCacheArgs;
/// import com.pulumi.aws.elasticache.inputs.ServerlessCacheCacheUsageLimitsArgs;
/// import com.pulumi.aws.elasticache.inputs.ServerlessCacheCacheUsageLimitsDataStorageArgs;
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
///         var example = new ServerlessCache("example", ServerlessCacheArgs.builder()
///             .engine("valkey")
///             .name("example")
///             .cacheUsageLimits(ServerlessCacheCacheUsageLimitsArgs.builder()
///                 .dataStorage(ServerlessCacheCacheUsageLimitsDataStorageArgs.builder()
///                     .maximum(10)
///                     .unit("GB")
///                     .build())
///                 .ecpuPerSeconds(ServerlessCacheCacheUsageLimitsEcpuPerSecondArgs.builder()
///                     .maximum(5000)
///                     .build())
///                 .build())
///             .dailySnapshotTime("09:00")
///             .description("Test Server")
///             .kmsKeyId(test.arn())
///             .majorEngineVersion("7")
///             .snapshotRetentionLimit(1)
///             .securityGroupIds(testAwsSecurityGroup.id())
///             .subnetIds(testAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///             .build());
///
///     }
/// }
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import ElastiCache Serverless Cache using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticache/serverlessCache:ServerlessCache my_cluster my_cluster
/// ```
class ServerlessCache extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the serverless cache.
  late final pulumi.Output<String> arn;
  /// Sets the cache usage limits for storage and ElastiCache Processing Units for the cache. See `cache_usage_limits` Block for details.
  late final pulumi.Output<ServerlessCacheCacheUsageLimits?> cacheUsageLimits;
  /// Timestamp of when the serverless cache was created.
  late final pulumi.Output<String> createTime;
  /// The daily time that snapshots will be created from the new serverless cache. Only supported for engine types `"redis"` or `"valkey"`. Defaults to `0`.
  late final pulumi.Output<String> dailySnapshotTime;
  /// User-provided description for the serverless cache. The default is NULL.
  late final pulumi.Output<String> description;
  /// Represents the information required for client programs to connect to a cache node. See `endpoint` Block for details.
  late final pulumi.Output<List<ServerlessCacheEndpoint>> endpoints;
  /// Name of the cache engine to be used for this cache cluster. Valid values are `memcached`, `redis` or `valkey`.
  late final pulumi.Output<String> engine;
  /// The name and version number of the engine the serverless cache is compatible with.
  late final pulumi.Output<String> fullEngineVersion;
  /// ARN of the customer managed key for encrypting the data at rest. If no KMS key is provided, a default service key is used.
  late final pulumi.Output<String?> kmsKeyId;
  /// The version of the cache engine that will be used to create the serverless cache.
  /// See [Describe Cache Engine Versions](https://docs.aws.amazon.com/cli/latest/reference/elasticache/describe-cache-engine-versions.html) in the AWS Documentation for supported versions.
  late final pulumi.Output<String> majorEngineVersion;
  /// The Cluster name which serves as a unique identifier to the serverless cache
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Represents the information required for client programs to connect to a cache node. See `reader_endpoint` Block for details.
  late final pulumi.Output<List<ServerlessCacheReaderEndpoint>> readerEndpoints;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A list of the one or more VPC security groups to be associated with the serverless cache. The security group will authorize traffic access for the VPC end-point (private-link). If no other information is given this will be the VPC’s Default Security Group that is associated with the cluster VPC end-point.
  late final pulumi.Output<List<String>> securityGroupIds;
  /// The list of ARN(s) of the snapshot that the new serverless cache will be created from. Only supported for engine types `"redis"` or `"valkey"`.
  late final pulumi.Output<List<String>?> snapshotArnsToRestores;
  /// The number of snapshots that will be retained for the serverless cache that is being created. As new snapshots beyond this limit are added, the oldest snapshots will be deleted on a rolling basis. Only supported for engine types `"redis"` or `"valkey"`.
  late final pulumi.Output<int> snapshotRetentionLimit;
  /// The current status of the serverless cache. The allowed values are CREATING, AVAILABLE, DELETING, CREATE-FAILED and MODIFYING.
  late final pulumi.Output<String> status;
  /// A list of the identifiers of the subnets where the VPC endpoint for the serverless cache will be deployed. All the subnetIds must belong to the same VPC.
  late final pulumi.Output<List<String>> subnetIds;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ServerlessCacheTimeouts?> timeouts;
  /// The identifier of the UserGroup to be associated with the serverless cache. Available for Redis and Valkey. Default is NULL.
  late final pulumi.Output<String?> userGroupId;

  /// Creates a new [ServerlessCache].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerlessCache]. {@macro pulumi_elasticache_serverless_cache_serverless_cache_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerlessCache(
    String name, {
    ServerlessCacheArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/serverlessCache:ServerlessCache',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.cacheUsageLimits = registerOutput<ServerlessCacheCacheUsageLimits?>('cacheUsageLimits');
    this.createTime = registerOutput<String>('createTime');
    this.dailySnapshotTime = registerOutput<String>('dailySnapshotTime');
    this.description = registerOutput<String>('description');
    this.endpoints = registerOutput<List<ServerlessCacheEndpoint>>('endpoints');
    this.engine = registerOutput<String>('engine');
    this.fullEngineVersion = registerOutput<String>('fullEngineVersion');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.majorEngineVersion = registerOutput<String>('majorEngineVersion');
    this.name = registerOutput<String>('name');
    this.readerEndpoints = registerOutput<List<ServerlessCacheReaderEndpoint>>('readerEndpoints');
    this.region = registerOutput<String>('region');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.snapshotArnsToRestores = registerOutput<List<String>?>('snapshotArnsToRestores');
    this.snapshotRetentionLimit = registerOutput<int>('snapshotRetentionLimit');
    this.status = registerOutput<String>('status');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ServerlessCacheTimeouts?>('timeouts');
    this.userGroupId = registerOutput<String?>('userGroupId');
  }

  /// Gets an existing [ServerlessCache] resource's state with the given [name] and [id].
  static ServerlessCache get(
    String name,
    pulumi.Input<String> id, {
    ServerlessCacheState? state,
  }) {
    return ServerlessCache._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServerlessCache._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/serverlessCache:ServerlessCache',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.cacheUsageLimits = registerOutput<ServerlessCacheCacheUsageLimits?>('cacheUsageLimits');
    this.createTime = registerOutput<String>('createTime');
    this.dailySnapshotTime = registerOutput<String>('dailySnapshotTime');
    this.description = registerOutput<String>('description');
    this.endpoints = registerOutput<List<ServerlessCacheEndpoint>>('endpoints');
    this.engine = registerOutput<String>('engine');
    this.fullEngineVersion = registerOutput<String>('fullEngineVersion');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.majorEngineVersion = registerOutput<String>('majorEngineVersion');
    this.name = registerOutput<String>('name');
    this.readerEndpoints = registerOutput<List<ServerlessCacheReaderEndpoint>>('readerEndpoints');
    this.region = registerOutput<String>('region');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.snapshotArnsToRestores = registerOutput<List<String>?>('snapshotArnsToRestores');
    this.snapshotRetentionLimit = registerOutput<int>('snapshotRetentionLimit');
    this.status = registerOutput<String>('status');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ServerlessCacheTimeouts?>('timeouts');
    this.userGroupId = registerOutput<String?>('userGroupId');
  }
}
