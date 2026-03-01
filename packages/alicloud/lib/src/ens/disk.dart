import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_args.dart';

/// Provides a ENS Disk resource.
///
/// The disk. When you use it for the first time, please contact the product classmates to add a resource whitelist.
///
/// For information about ENS Disk and how to use it, see [What is Disk](https://www.alibabacloud.com/help/en/ens/developer-reference/api-ens-2017-11-10-createdisk).
///
/// > **NOTE:** Available since v1.213.0.
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
/// const _default = new alicloud.ens.Disk("default", {
///     category: "cloud_ssd",
///     size: 20,
///     paymentType: "PayAsYouGo",
///     ensRegionId: "cn-chongqing-11",
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
/// default = alicloud.ens.Disk("default",
///     category="cloud_ssd",
///     size=20,
///     payment_type="PayAsYouGo",
///     ens_region_id="cn-chongqing-11")
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
///     var @default = new AliCloud.Ens.Disk("default", new()
///     {
///         Category = "cloud_ssd",
///         Size = 20,
///         PaymentType = "PayAsYouGo",
///         EnsRegionId = "cn-chongqing-11",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ens"
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
/// 		_, err := ens.NewDisk(ctx, "default", &ens.DiskArgs{
/// 			Category:    pulumi.String("cloud_ssd"),
/// 			Size:        pulumi.Int(20),
/// 			PaymentType: pulumi.String("PayAsYouGo"),
/// 			EnsRegionId: pulumi.String("cn-chongqing-11"),
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
/// import com.pulumi.alicloud.ens.Disk;
/// import com.pulumi.alicloud.ens.DiskArgs;
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
///         var default_ = new Disk("default", DiskArgs.builder()
///             .category("cloud_ssd")
///             .size(20)
///             .paymentType("PayAsYouGo")
///             .ensRegionId("cn-chongqing-11")
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
///   default:
///     type: alicloud:ens:Disk
///     properties:
///       category: cloud_ssd
///       size: '20'
///       paymentType: PayAsYouGo
///       ensRegionId: cn-chongqing-11
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ENS Disk can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ens/disk:Disk example <id>
/// ```
class Disk extends pulumi.CustomResource {
  /// The category of the disk. Valid values: `cloud_efficiency` (high-efficiency cloud disk), `cloud_ssd` (full Flash cloud disk), `local_hdd` (local HDD), `local_ssd` (local ssd).
  late final pulumi.Output<String> category;
  /// The time when the disk was created.
  late final pulumi.Output<String> createTime;
  /// The name of the disk.
  late final pulumi.Output<String?> diskName;
  /// Specifies whether to encrypt the new system disk. Valid values: `true`, `false`(default).
  late final pulumi.Output<bool?> encrypted;
  /// The ID of the edge node.
  late final pulumi.Output<String> ensRegionId;
  /// The ID of the KMS key used by the cloud disk. If `encrypted` is set to `true`, the service default key is used when KMSKeyId is empty.
  late final pulumi.Output<String> kmsKeyId;
  /// The billing method of the instance. Valid values: `PayAsYouGo`.
  late final pulumi.Output<String> paymentType;
  /// The size of the disk instance. Unit: GiB.
  late final pulumi.Output<int?> size;
  /// The ID of the snapshot used to create the cloud disk.
  ///
  /// The SnapshotId and Size parameters have the following limitations:
  /// - If the snapshot capacity corresponding to the `snapshot_id` parameter is greater than the specified `size` parameter, the Size of the cloud disk created is the Size of the specified snapshot.
  /// - If the snapshot capacity corresponding to the `snapshot_id` parameter is less than the set `size` parameter value, the Size of the cloud disk created is the specified `size` parameter value.
  late final pulumi.Output<String?> snapshotId;
  /// The status of the disk.
  late final pulumi.Output<String> status;
  /// The label to which the instance is bound.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Disk].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Disk]. {@macro pulumi_ens_disk_disk_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Disk(
    String name, {
    DiskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ens/disk:Disk',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.category = registerOutput<String>('category');
    this.createTime = registerOutput<String>('createTime');
    this.diskName = registerOutput<String?>('diskName');
    this.encrypted = registerOutput<bool?>('encrypted');
    this.ensRegionId = registerOutput<String>('ensRegionId');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.paymentType = registerOutput<String>('paymentType');
    this.size = registerOutput<int?>('size');
    this.snapshotId = registerOutput<String?>('snapshotId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
