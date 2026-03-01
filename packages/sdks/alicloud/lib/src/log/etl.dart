import 'package:pulumi/pulumi.dart' as pulumi;
import 'etl_args.dart';
import 'etl_etl_sink.dart';
import 'etl_state.dart';

/// The data transformation of the log service is a hosted, highly available, and scalable data processing service,
/// which is widely applicable to scenarios such as data regularization, enrichment, distribution, aggregation, and index reconstruction.
/// [Refer to details](https://www.alibabacloud.com/help/zh/doc-detail/125384.htm).
///
/// > **NOTE:** This resource is no longer maintained. It is recommended to use the new resource alicloud_sls_etl.
/// [Refer to details](https://www.alibabacloud.com/help/zh/doc-detail/125384.htm).
///
/// > **NOTE:** Available since v1.120.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const _default = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const example = new alicloud.log.Project("example", {
///     projectName: `terraform-example-${_default.result}`,
///     description: "terraform-example",
/// });
/// const exampleStore = new alicloud.log.Store("example", {
///     projectName: example.projectName,
///     logstoreName: "example-store",
///     retentionPeriod: 3650,
///     shardCount: 3,
///     autoSplit: true,
///     maxSplitShardCount: 60,
///     appendMeta: true,
/// });
/// const example2 = new alicloud.log.Store("example2", {
///     projectName: example.projectName,
///     logstoreName: "example-store2",
///     retentionPeriod: 3650,
///     shardCount: 3,
///     autoSplit: true,
///     maxSplitShardCount: 60,
///     appendMeta: true,
/// });
/// const example3 = new alicloud.log.Store("example3", {
///     projectName: example.projectName,
///     logstoreName: "example-store3",
///     retentionPeriod: 3650,
///     shardCount: 3,
///     autoSplit: true,
///     maxSplitShardCount: 60,
///     appendMeta: true,
/// });
/// const exampleEtl = new alicloud.log.Etl("example", {
///     etlName: "terraform-example",
///     project: example.projectName,
///     displayName: "terraform-example",
///     description: "terraform-example",
///     accessKeyId: "access_key_id",
///     accessKeySecret: "access_key_secret",
///     script: "e_set('new','key')",
///     logstore: exampleStore.logstoreName,
///     etlSinks: [
///         {
///             name: "target_name",
///             accessKeyId: "example2_access_key_id",
///             accessKeySecret: "example2_access_key_secret",
///             endpoint: "cn-hangzhou.log.aliyuncs.com",
///             project: example.projectName,
///             logstore: example2.logstoreName,
///         },
///         {
///             name: "target_name2",
///             accessKeyId: "example3_access_key_id",
///             accessKeySecret: "example3_access_key_secret",
///             endpoint: "cn-hangzhou.log.aliyuncs.com",
///             project: example.projectName,
///             logstore: example3.logstoreName,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// example = alicloud.log.Project("example",
///     project_name=f"terraform-example-{default['result']}",
///     description="terraform-example")
/// example_store = alicloud.log.Store("example",
///     project_name=example.project_name,
///     logstore_name="example-store",
///     retention_period=3650,
///     shard_count=3,
///     auto_split=True,
///     max_split_shard_count=60,
///     append_meta=True)
/// example2 = alicloud.log.Store("example2",
///     project_name=example.project_name,
///     logstore_name="example-store2",
///     retention_period=3650,
///     shard_count=3,
///     auto_split=True,
///     max_split_shard_count=60,
///     append_meta=True)
/// example3 = alicloud.log.Store("example3",
///     project_name=example.project_name,
///     logstore_name="example-store3",
///     retention_period=3650,
///     shard_count=3,
///     auto_split=True,
///     max_split_shard_count=60,
///     append_meta=True)
/// example_etl = alicloud.log.Etl("example",
///     etl_name="terraform-example",
///     project=example.project_name,
///     display_name="terraform-example",
///     description="terraform-example",
///     access_key_id="access_key_id",
///     access_key_secret="access_key_secret",
///     script="e_set('new','key')",
///     logstore=example_store.logstore_name,
///     etl_sinks=[
///         {
///             "name": "target_name",
///             "access_key_id": "example2_access_key_id",
///             "access_key_secret": "example2_access_key_secret",
///             "endpoint": "cn-hangzhou.log.aliyuncs.com",
///             "project": example.project_name,
///             "logstore": example2.logstore_name,
///         },
///         {
///             "name": "target_name2",
///             "access_key_id": "example3_access_key_id",
///             "access_key_secret": "example3_access_key_secret",
///             "endpoint": "cn-hangzhou.log.aliyuncs.com",
///             "project": example.project_name,
///             "logstore": example3.logstore_name,
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var example = new AliCloud.Log.Project("example", new()
///     {
///         ProjectName = $"terraform-example-{@default.Result}",
///         Description = "terraform-example",
///     });
///
///     var exampleStore = new AliCloud.Log.Store("example", new()
///     {
///         ProjectName = example.ProjectName,
///         LogstoreName = "example-store",
///         RetentionPeriod = 3650,
///         ShardCount = 3,
///         AutoSplit = true,
///         MaxSplitShardCount = 60,
///         AppendMeta = true,
///     });
///
///     var example2 = new AliCloud.Log.Store("example2", new()
///     {
///         ProjectName = example.ProjectName,
///         LogstoreName = "example-store2",
///         RetentionPeriod = 3650,
///         ShardCount = 3,
///         AutoSplit = true,
///         MaxSplitShardCount = 60,
///         AppendMeta = true,
///     });
///
///     var example3 = new AliCloud.Log.Store("example3", new()
///     {
///         ProjectName = example.ProjectName,
///         LogstoreName = "example-store3",
///         RetentionPeriod = 3650,
///         ShardCount = 3,
///         AutoSplit = true,
///         MaxSplitShardCount = 60,
///         AppendMeta = true,
///     });
///
///     var exampleEtl = new AliCloud.Log.Etl("example", new()
///     {
///         EtlName = "terraform-example",
///         Project = example.ProjectName,
///         DisplayName = "terraform-example",
///         Description = "terraform-example",
///         AccessKeyId = "access_key_id",
///         AccessKeySecret = "access_key_secret",
///         Script = "e_set('new','key')",
///         Logstore = exampleStore.LogstoreName,
///         EtlSinks = new[]
///         {
///             new AliCloud.Log.Inputs.EtlEtlSinkArgs
///             {
///                 Name = "target_name",
///                 AccessKeyId = "example2_access_key_id",
///                 AccessKeySecret = "example2_access_key_secret",
///                 Endpoint = "cn-hangzhou.log.aliyuncs.com",
///                 Project = example.ProjectName,
///                 Logstore = example2.LogstoreName,
///             },
///             new AliCloud.Log.Inputs.EtlEtlSinkArgs
///             {
///                 Name = "target_name2",
///                 AccessKeyId = "example3_access_key_id",
///                 AccessKeySecret = "example3_access_key_secret",
///                 Endpoint = "cn-hangzhou.log.aliyuncs.com",
///                 Project = example.ProjectName,
///                 Logstore = example3.LogstoreName,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := log.NewProject(ctx, "example", &log.ProjectArgs{
/// 			ProjectName: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 			Description: pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleStore, err := log.NewStore(ctx, "example", &log.StoreArgs{
/// 			ProjectName:        example.ProjectName,
/// 			LogstoreName:       pulumi.String("example-store"),
/// 			RetentionPeriod:    pulumi.Int(3650),
/// 			ShardCount:         pulumi.Int(3),
/// 			AutoSplit:          pulumi.Bool(true),
/// 			MaxSplitShardCount: pulumi.Int(60),
/// 			AppendMeta:         pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example2, err := log.NewStore(ctx, "example2", &log.StoreArgs{
/// 			ProjectName:        example.ProjectName,
/// 			LogstoreName:       pulumi.String("example-store2"),
/// 			RetentionPeriod:    pulumi.Int(3650),
/// 			ShardCount:         pulumi.Int(3),
/// 			AutoSplit:          pulumi.Bool(true),
/// 			MaxSplitShardCount: pulumi.Int(60),
/// 			AppendMeta:         pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example3, err := log.NewStore(ctx, "example3", &log.StoreArgs{
/// 			ProjectName:        example.ProjectName,
/// 			LogstoreName:       pulumi.String("example-store3"),
/// 			RetentionPeriod:    pulumi.Int(3650),
/// 			ShardCount:         pulumi.Int(3),
/// 			AutoSplit:          pulumi.Bool(true),
/// 			MaxSplitShardCount: pulumi.Int(60),
/// 			AppendMeta:         pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = log.NewEtl(ctx, "example", &log.EtlArgs{
/// 			EtlName:         pulumi.String("terraform-example"),
/// 			Project:         example.ProjectName,
/// 			DisplayName:     pulumi.String("terraform-example"),
/// 			Description:     pulumi.String("terraform-example"),
/// 			AccessKeyId:     pulumi.String("access_key_id"),
/// 			AccessKeySecret: pulumi.String("access_key_secret"),
/// 			Script:          pulumi.String("e_set('new','key')"),
/// 			Logstore:        exampleStore.LogstoreName,
/// 			EtlSinks: log.EtlEtlSinkArray{
/// 				&log.EtlEtlSinkArgs{
/// 					Name:            pulumi.String("target_name"),
/// 					AccessKeyId:     pulumi.String("example2_access_key_id"),
/// 					AccessKeySecret: pulumi.String("example2_access_key_secret"),
/// 					Endpoint:        pulumi.String("cn-hangzhou.log.aliyuncs.com"),
/// 					Project:         example.ProjectName,
/// 					Logstore:        example2.LogstoreName,
/// 				},
/// 				&log.EtlEtlSinkArgs{
/// 					Name:            pulumi.String("target_name2"),
/// 					AccessKeyId:     pulumi.String("example3_access_key_id"),
/// 					AccessKeySecret: pulumi.String("example3_access_key_secret"),
/// 					Endpoint:        pulumi.String("cn-hangzhou.log.aliyuncs.com"),
/// 					Project:         example.ProjectName,
/// 					Logstore:        example3.LogstoreName,
/// 				},
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.alicloud.log.Store;
/// import com.pulumi.alicloud.log.StoreArgs;
/// import com.pulumi.alicloud.log.Etl;
/// import com.pulumi.alicloud.log.EtlArgs;
/// import com.pulumi.alicloud.log.inputs.EtlEtlSinkArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var example = new Project("example", ProjectArgs.builder()
///             .projectName(String.format("terraform-example-%s", default_.result()))
///             .description("terraform-example")
///             .build());
///
///         var exampleStore = new Store("exampleStore", StoreArgs.builder()
///             .projectName(example.projectName())
///             .logstoreName("example-store")
///             .retentionPeriod(3650)
///             .shardCount(3)
///             .autoSplit(true)
///             .maxSplitShardCount(60)
///             .appendMeta(true)
///             .build());
///
///         var example2 = new Store("example2", StoreArgs.builder()
///             .projectName(example.projectName())
///             .logstoreName("example-store2")
///             .retentionPeriod(3650)
///             .shardCount(3)
///             .autoSplit(true)
///             .maxSplitShardCount(60)
///             .appendMeta(true)
///             .build());
///
///         var example3 = new Store("example3", StoreArgs.builder()
///             .projectName(example.projectName())
///             .logstoreName("example-store3")
///             .retentionPeriod(3650)
///             .shardCount(3)
///             .autoSplit(true)
///             .maxSplitShardCount(60)
///             .appendMeta(true)
///             .build());
///
///         var exampleEtl = new Etl("exampleEtl", EtlArgs.builder()
///             .etlName("terraform-example")
///             .project(example.projectName())
///             .displayName("terraform-example")
///             .description("terraform-example")
///             .accessKeyId("access_key_id")
///             .accessKeySecret("access_key_secret")
///             .script("e_set('new','key')")
///             .logstore(exampleStore.logstoreName())
///             .etlSinks(
///                 EtlEtlSinkArgs.builder()
///                     .name("target_name")
///                     .accessKeyId("example2_access_key_id")
///                     .accessKeySecret("example2_access_key_secret")
///                     .endpoint("cn-hangzhou.log.aliyuncs.com")
///                     .project(example.projectName())
///                     .logstore(example2.logstoreName())
///                     .build(),
///                 EtlEtlSinkArgs.builder()
///                     .name("target_name2")
///                     .accessKeyId("example3_access_key_id")
///                     .accessKeySecret("example3_access_key_secret")
///                     .endpoint("cn-hangzhou.log.aliyuncs.com")
///                     .project(example.projectName())
///                     .logstore(example3.logstoreName())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       max: 99999
///       min: 10000
///   example:
///     type: alicloud:log:Project
///     properties:
///       projectName: terraform-example-${default.result}
///       description: terraform-example
///   exampleStore:
///     type: alicloud:log:Store
///     name: example
///     properties:
///       projectName: ${example.projectName}
///       logstoreName: example-store
///       retentionPeriod: 3650
///       shardCount: 3
///       autoSplit: true
///       maxSplitShardCount: 60
///       appendMeta: true
///   example2:
///     type: alicloud:log:Store
///     properties:
///       projectName: ${example.projectName}
///       logstoreName: example-store2
///       retentionPeriod: 3650
///       shardCount: 3
///       autoSplit: true
///       maxSplitShardCount: 60
///       appendMeta: true
///   example3:
///     type: alicloud:log:Store
///     properties:
///       projectName: ${example.projectName}
///       logstoreName: example-store3
///       retentionPeriod: 3650
///       shardCount: 3
///       autoSplit: true
///       maxSplitShardCount: 60
///       appendMeta: true
///   exampleEtl:
///     type: alicloud:log:Etl
///     name: example
///     properties:
///       etlName: terraform-example
///       project: ${example.projectName}
///       displayName: terraform-example
///       description: terraform-example
///       accessKeyId: access_key_id
///       accessKeySecret: access_key_secret
///       script: e_set('new','key')
///       logstore: ${exampleStore.logstoreName}
///       etlSinks:
///         - name: target_name
///           accessKeyId: example2_access_key_id
///           accessKeySecret: example2_access_key_secret
///           endpoint: cn-hangzhou.log.aliyuncs.com
///           project: ${example.projectName}
///           logstore: ${example2.logstoreName}
///         - name: target_name2
///           accessKeyId: example3_access_key_id
///           accessKeySecret: example3_access_key_secret
///           endpoint: cn-hangzhou.log.aliyuncs.com
///           project: ${example.projectName}
///           logstore: ${example3.logstoreName}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Log etl can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:log/etl:Etl example tf-log-project:tf-log-etl-name
/// ```
class Etl extends pulumi.CustomResource {
  /// Source logstore access key id.
  late final pulumi.Output<String?> accessKeyId;
  /// Source logstore access key secret.
  late final pulumi.Output<String?> accessKeySecret;
  /// The etl job create time.
  late final pulumi.Output<int> createTime;
  /// Description of the log etl job.
  late final pulumi.Output<String?> description;
  /// Log service etl job alias.
  late final pulumi.Output<String> displayName;
  /// The name of the log etl job.
  late final pulumi.Output<String> etlName;
  /// Target logstore configuration for delivery after data processing. See `etl_sinks` below.
  late final pulumi.Output<List<EtlEtlSink>> etlSinks;
  /// Log service etl type, the default value is `ETL`.
  late final pulumi.Output<String?> etlType;
  /// The start time of the processing job, if not set the value is 0, indicates to start processing from the oldest data.
  late final pulumi.Output<int?> fromTime;
  /// An KMS encrypts access key id used to a log etl job. If the `access_key_id` is filled in, this field will be ignored.
  late final pulumi.Output<String?> kmsEncryptedAccessKeyId;
  /// An KMS encrypts access key secret used to a log etl job. If the `access_key_secret` is filled in, this field will be ignored.
  late final pulumi.Output<String?> kmsEncryptedAccessKeySecret;
  /// An KMS encryption context used to decrypt `kms_encrypted_access_key_id` before creating or updating an instance with `kms_encrypted_access_key_id`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set. When it is changed, the instance will reboot to make the change take effect.
  late final pulumi.Output<Map<String, String>?> kmsEncryptionAccessKeyIdContext;
  /// An KMS encryption context used to decrypt `kms_encrypted_access_key_secret` before creating or updating an instance with `kms_encrypted_access_key_secret`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set. When it is changed, the instance will reboot to make the change take effect.
  late final pulumi.Output<Map<String, String>?> kmsEncryptionAccessKeySecretContext;
  /// The language of the etl job.
  late final pulumi.Output<String?> lang;
  /// ETL job last modified time.
  late final pulumi.Output<int> lastModifiedTime;
  /// The source logstore of the processing job.
  late final pulumi.Output<String> logstore;
  /// Advanced parameter configuration of processing operations.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// The name of the project where the etl job is located.
  late final pulumi.Output<String> project;
  /// Sts role info under source logstore. `role_arn` and `(access_key_id, access_key_secret)` fill in at most one. If you do not fill in both, then you must fill in `(kms_encrypted_access_key_id, kms_encrypted_access_key_secret, kms_encryption_access_key_id_context, kms_encryption_access_key_secret_context)` to use KMS to get the key pair.
  late final pulumi.Output<String?> roleArn;
  /// Job scheduling type, the default value is Resident.
  late final pulumi.Output<String?> schedule;
  /// Processing operation grammar.
  late final pulumi.Output<String> script;
  /// Log project tags. the default value is RUNNING, Only 4 values are supported: `STARTING`，`RUNNING`，`STOPPING`，`STOPPED`.
  late final pulumi.Output<String> status;
  /// Deadline of processing job, if not set the value is 0, indicates that new data will be processed continuously.
  late final pulumi.Output<int?> toTime;
  /// Log etl job version. the default value is `2`.
  late final pulumi.Output<int?> version;

  /// Creates a new [Etl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Etl]. {@macro pulumi_log_etl_etl_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Etl(
    String name, {
    EtlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:log/etl:Etl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessKeyId = registerOutput<String?>('accessKeyId');
    this.accessKeySecret = registerOutput<String?>('accessKeySecret');
    this.createTime = registerOutput<int>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.etlName = registerOutput<String>('etlName');
    this.etlSinks = registerOutput<List<EtlEtlSink>>('etlSinks');
    this.etlType = registerOutput<String?>('etlType');
    this.fromTime = registerOutput<int?>('fromTime');
    this.kmsEncryptedAccessKeyId = registerOutput<String?>('kmsEncryptedAccessKeyId');
    this.kmsEncryptedAccessKeySecret = registerOutput<String?>('kmsEncryptedAccessKeySecret');
    this.kmsEncryptionAccessKeyIdContext = registerOutput<Map<String, String>?>('kmsEncryptionAccessKeyIdContext');
    this.kmsEncryptionAccessKeySecretContext = registerOutput<Map<String, String>?>('kmsEncryptionAccessKeySecretContext');
    this.lang = registerOutput<String?>('lang');
    this.lastModifiedTime = registerOutput<int>('lastModifiedTime');
    this.logstore = registerOutput<String>('logstore');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.project = registerOutput<String>('project');
    this.roleArn = registerOutput<String?>('roleArn');
    this.schedule = registerOutput<String?>('schedule');
    this.script = registerOutput<String>('script');
    this.status = registerOutput<String>('status');
    this.toTime = registerOutput<int?>('toTime');
    this.version = registerOutput<int?>('version');
  }

  /// Gets an existing [Etl] resource's state with the given [name] and [id].
  static Etl get(
    String name,
    pulumi.Input<String> id, {
    EtlState? state,
  }) {
    return Etl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Etl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:log/etl:Etl',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessKeyId = registerOutput<String?>('accessKeyId');
    this.accessKeySecret = registerOutput<String?>('accessKeySecret');
    this.createTime = registerOutput<int>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.etlName = registerOutput<String>('etlName');
    this.etlSinks = registerOutput<List<EtlEtlSink>>('etlSinks');
    this.etlType = registerOutput<String?>('etlType');
    this.fromTime = registerOutput<int?>('fromTime');
    this.kmsEncryptedAccessKeyId = registerOutput<String?>('kmsEncryptedAccessKeyId');
    this.kmsEncryptedAccessKeySecret = registerOutput<String?>('kmsEncryptedAccessKeySecret');
    this.kmsEncryptionAccessKeyIdContext = registerOutput<Map<String, String>?>('kmsEncryptionAccessKeyIdContext');
    this.kmsEncryptionAccessKeySecretContext = registerOutput<Map<String, String>?>('kmsEncryptionAccessKeySecretContext');
    this.lang = registerOutput<String?>('lang');
    this.lastModifiedTime = registerOutput<int>('lastModifiedTime');
    this.logstore = registerOutput<String>('logstore');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.project = registerOutput<String>('project');
    this.roleArn = registerOutput<String?>('roleArn');
    this.schedule = registerOutput<String?>('schedule');
    this.script = registerOutput<String>('script');
    this.status = registerOutput<String>('status');
    this.toTime = registerOutput<int?>('toTime');
    this.version = registerOutput<int?>('version');
  }
}
