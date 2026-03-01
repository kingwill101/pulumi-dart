import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_ecs_list.dart';
import 'instance_state.dart';

/// Provides a DBFS Dbfs Instance resource. An instance of a database file system is equivalent to a file system and can store data of file types.
///
/// For information about DBFS Dbfs Instance and how to use it, see [What is Dbfs Instance](https://next.api.alibabacloud.com/document/DBFS/2020-04-18/CreateDbfs).
///
/// > **NOTE:** Need to contact us open whitelist before you can use the resource.
///
/// > **NOTE:** Available since v1.136.0.
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
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const example = new alicloud.databasefilesystem.Instance("example", {
///     category: "standard",
///     zoneId: "cn-hangzhou-i",
///     performanceLevel: "PL1",
///     fsName: name,
///     size: 100,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// example = alicloud.databasefilesystem.Instance("example",
///     category="standard",
///     zone_id="cn-hangzhou-i",
///     performance_level="PL1",
///     fs_name=name,
///     size=100)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var example = new AliCloud.DatabaseFilesystem.Instance("example", new()
///     {
///         Category = "standard",
///         ZoneId = "cn-hangzhou-i",
///         PerformanceLevel = "PL1",
///         FsName = name,
///         Size = 100,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/databasefilesystem"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := databasefilesystem.NewInstance(ctx, "example", &databasefilesystem.InstanceArgs{
/// 			Category:         pulumi.String("standard"),
/// 			ZoneId:           pulumi.String("cn-hangzhou-i"),
/// 			PerformanceLevel: pulumi.String("PL1"),
/// 			FsName:           pulumi.String(name),
/// 			Size:             pulumi.Int(100),
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
/// import com.pulumi.alicloud.databasefilesystem.Instance;
/// import com.pulumi.alicloud.databasefilesystem.InstanceArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var example = new Instance("example", InstanceArgs.builder()
///             .category("standard")
///             .zoneId("cn-hangzhou-i")
///             .performanceLevel("PL1")
///             .fsName(name)
///             .size(100)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   example:
///     type: alicloud:databasefilesystem:Instance
///     properties:
///       category: standard
///       zoneId: cn-hangzhou-i
///       performanceLevel: PL1
///       fsName: ${name}
///       size: 100
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// DBFS Dbfs Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:databasefilesystem/instance:Instance example <id>
/// ```
class Instance extends pulumi.CustomResource {
  /// The number of CPU cores and the upper limit of memory used by the database file storage instance.
  late final pulumi.Output<String> advancedFeatures;
  /// Category of database file system.
  late final pulumi.Output<String> category;
  /// The creation time of the resource.
  late final pulumi.Output<String> createTime;
  /// Whether to delete the original snapshot after creating DBFS using the snapshot.
  late final pulumi.Output<bool?> deleteSnapshot;
  /// The collection of ECS instances mounted to the Database file system. See `ecs_list` below.  **NOTE:** Field 'ecs_list' has been deprecated from provider version 1.156.0 and it will be removed in the future version. Please use the new resource 'alicloud_dbfs_instance_attachment' to attach ECS and DBFS. See `ecs_list` below.
  late final pulumi.Output<List<InstanceEcsList>?> ecsLists;
  /// Whether to create DBFS in RAID mode. If created in RAID mode, the capacity is at least 66GB.Valid values: true or false. Default value: false.
  late final pulumi.Output<bool?> enableRaid;
  /// Whether to encrypt DBFS.Valid values: true or false. Default value: false.
  late final pulumi.Output<bool?> encryption;
  /// Database file system name.
  late final pulumi.Output<String> fsName;
  /// . Field 'instance_name' has been deprecated from provider version 1.212.0. New field 'fs_name' instead.
  late final pulumi.Output<String> instanceName;
  /// Instance type. Value range:
  /// - dbfs.small
  /// - dbfs.medium
  /// - dbfs.large (default)
  late final pulumi.Output<String?> instanceType;
  /// The ID of the KMS key used by DBFS.
  late final pulumi.Output<String?> kmsKeyId;
  /// When you create a DBFS instance, set the performance level of the DBFS instance. Value range:
  /// - PL0: single disk maximum random read-write IOPS 10000
  /// - PL1: highest random read-write IOPS 50000 per disk (default)
  /// - PL2: single disk maximum random read-write IOPS 100000
  /// - PL3: single disk maximum random read-write IOPS 1 million.
  late final pulumi.Output<String> performanceLevel;
  /// Number of strips. Required when the EnableRaid parameter is true.Value range: Currently, only 8 stripes are supported.
  late final pulumi.Output<int?> raidStripeUnitNumber;
  /// Size of database file system, unit GiB.
  late final pulumi.Output<int> size;
  /// The ID of the snapshot used to create the DBFS instance.
  late final pulumi.Output<String> snapshotId;
  /// The status of the resource.
  late final pulumi.Output<String> status;
  /// A mapping of tags to assign to the resource.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<Map<String, String>?> tags;
  /// The usage scenario of DBFS. Value range:
  /// - MySQL 5.7
  /// - PostgreSQL
  /// - MongoDB.
  late final pulumi.Output<String?> usedScene;
  /// The ID of the zone to which the database file system belongs.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_databasefilesystem_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:databasefilesystem/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.advancedFeatures = registerOutput<String>('advancedFeatures');
    this.category = registerOutput<String>('category');
    this.createTime = registerOutput<String>('createTime');
    this.deleteSnapshot = registerOutput<bool?>('deleteSnapshot');
    this.ecsLists = registerOutput<List<InstanceEcsList>?>('ecsLists');
    this.enableRaid = registerOutput<bool?>('enableRaid');
    this.encryption = registerOutput<bool?>('encryption');
    this.fsName = registerOutput<String>('fsName');
    this.instanceName = registerOutput<String>('instanceName');
    this.instanceType = registerOutput<String?>('instanceType');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.performanceLevel = registerOutput<String>('performanceLevel');
    this.raidStripeUnitNumber = registerOutput<int?>('raidStripeUnitNumber');
    this.size = registerOutput<int>('size');
    this.snapshotId = registerOutput<String>('snapshotId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.usedScene = registerOutput<String?>('usedScene');
    this.zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:databasefilesystem/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.advancedFeatures = registerOutput<String>('advancedFeatures');
    this.category = registerOutput<String>('category');
    this.createTime = registerOutput<String>('createTime');
    this.deleteSnapshot = registerOutput<bool?>('deleteSnapshot');
    this.ecsLists = registerOutput<List<InstanceEcsList>?>('ecsLists');
    this.enableRaid = registerOutput<bool?>('enableRaid');
    this.encryption = registerOutput<bool?>('encryption');
    this.fsName = registerOutput<String>('fsName');
    this.instanceName = registerOutput<String>('instanceName');
    this.instanceType = registerOutput<String?>('instanceType');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.performanceLevel = registerOutput<String>('performanceLevel');
    this.raidStripeUnitNumber = registerOutput<int?>('raidStripeUnitNumber');
    this.size = registerOutput<int>('size');
    this.snapshotId = registerOutput<String>('snapshotId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.usedScene = registerOutput<String?>('usedScene');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
