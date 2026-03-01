import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_objects_args.dart';
import 'get_bucket_objects_result.dart';
import 'get_buckets_args.dart';
import 'get_buckets_result.dart';
import 'get_instance_attachments_args.dart';
import 'get_instance_attachments_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_tables_args.dart';
import 'get_tables_result.dart';

/// This data source provides the objects of an OSS bucket.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const bucketObjectsDs = alicloud.oss.getBucketObjects({
///     bucketName: "sample_bucket",
///     keyRegex: "sample/sample_object.txt",
/// });
/// export const firstObjectKey = bucketObjectsDs.then(bucketObjectsDs => bucketObjectsDs.objects?.[0]?.key);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// bucket_objects_ds = alicloud.oss.get_bucket_objects(bucket_name="sample_bucket",
///     key_regex="sample/sample_object.txt")
/// pulumi.export("firstObjectKey", bucket_objects_ds.objects[0].key)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bucketObjectsDs = AliCloud.Oss.GetBucketObjects.Invoke(new()
///     {
///         BucketName = "sample_bucket",
///         KeyRegex = "sample/sample_object.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstObjectKey"] = bucketObjectsDs.Apply(getBucketObjectsResult => getBucketObjectsResult.Objects[0]?.Key),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bucketObjectsDs, err := oss.GetBucketObjects(ctx, &oss.GetBucketObjectsArgs{
/// 			BucketName: "sample_bucket",
/// 			KeyRegex:   pulumi.StringRef("sample/sample_object.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstObjectKey", bucketObjectsDs.Objects[0].Key)
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
/// import com.pulumi.alicloud.oss.OssFunctions;
/// import com.pulumi.alicloud.oss.inputs.GetBucketObjectsArgs;
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
///         final var bucketObjectsDs = OssFunctions.getBucketObjects(GetBucketObjectsArgs.builder()
///             .bucketName("sample_bucket")
///             .keyRegex("sample/sample_object.txt")
///             .build());
///
///         ctx.export("firstObjectKey", bucketObjectsDs.objects()[0].key());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   bucketObjectsDs:
///     fn::invoke:
///       function: alicloud:oss:getBucketObjects
///       arguments:
///         bucketName: sample_bucket
///         keyRegex: sample/sample_object.txt
/// outputs:
///   firstObjectKey: ${bucketObjectsDs.objects[0].key}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_oss_get_bucket_objects_get_bucket_objects_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBucketObjectsResult> getBucketObjects(
  GetBucketObjectsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:oss/getBucketObjects:getBucketObjects',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBucketObjectsResult.fromMap(result);
}

/// This data source provides the OSS buckets of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.17.0.
///
/// ## Example Usage
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
/// const bucket = new alicloud.oss.Bucket("bucket", {bucket: `oss-tf-example-${_default.result}`});
/// const ossBucketsDs = alicloud.oss.getBucketsOutput({
///     nameRegex: bucket.bucket,
/// });
/// export const firstOssBucketName = ossBucketsDs.apply(ossBucketsDs => ossBucketsDs.buckets?.[0]?.name);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// bucket = alicloud.oss.Bucket("bucket", bucket=f"oss-tf-example-{default['result']}")
/// oss_buckets_ds = alicloud.oss.get_buckets_output(name_regex=bucket.bucket)
/// pulumi.export("firstOssBucketName", oss_buckets_ds.buckets[0].name)
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
///     var bucket = new AliCloud.Oss.Bucket("bucket", new()
///     {
///         BucketName = $"oss-tf-example-{@default.Result}",
///     });
///
///     var ossBucketsDs = AliCloud.Oss.GetBuckets.Invoke(new()
///     {
///         NameRegex = bucket.BucketName,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstOssBucketName"] = ossBucketsDs.Apply(getBucketsResult => getBucketsResult.Buckets[0]?.Name),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
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
/// 		bucket, err := oss.NewBucket(ctx, "bucket", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("oss-tf-example-%v", _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ossBucketsDs := oss.GetBucketsOutput(ctx, oss.GetBucketsOutputArgs{
/// 			NameRegex: bucket.Bucket,
/// 		}, nil)
/// 		ctx.Export("firstOssBucketName", ossBucketsDs.ApplyT(func(ossBucketsDs oss.GetBucketsResult) (*string, error) {
/// 			return &ossBucketsDs.Buckets[0].Name, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.oss.OssFunctions;
/// import com.pulumi.alicloud.oss.inputs.GetBucketsArgs;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .bucket(String.format("oss-tf-example-%s", default_.result()))
///             .build());
///
///         final var ossBucketsDs = OssFunctions.getBuckets(GetBucketsArgs.builder()
///             .nameRegex(bucket.bucket())
///             .build());
///
///         ctx.export("firstOssBucketName", ossBucketsDs.applyValue(_ossBucketsDs -> _ossBucketsDs.buckets()[0].name()));
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
///   bucket:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket: oss-tf-example-${default.result}
/// variables:
///   ossBucketsDs:
///     fn::invoke:
///       function: alicloud:oss:getBuckets
///       arguments:
///         nameRegex: ${bucket.bucket}
/// outputs:
///   firstOssBucketName: ${ossBucketsDs.buckets[0].name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_oss_get_buckets_get_buckets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBucketsResult> getBuckets(
  GetBucketsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:oss/getBuckets:getBuckets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBucketsResult.fromMap(result);
}

/// This data source provides the ots instance attachments of the current Alibaba Cloud user.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const attachmentsDs = alicloud.ots.getInstanceAttachments({
///     instanceName: "sample-instance",
///     nameRegex: "testvpc",
///     outputFile: "attachments.txt",
/// });
/// export const firstOtsAttachmentId = attachmentsDs.then(attachmentsDs => attachmentsDs.attachments?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// attachments_ds = alicloud.ots.get_instance_attachments(instance_name="sample-instance",
///     name_regex="testvpc",
///     output_file="attachments.txt")
/// pulumi.export("firstOtsAttachmentId", attachments_ds.attachments[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var attachmentsDs = AliCloud.Ots.GetInstanceAttachments.Invoke(new()
///     {
///         InstanceName = "sample-instance",
///         NameRegex = "testvpc",
///         OutputFile = "attachments.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstOtsAttachmentId"] = attachmentsDs.Apply(getInstanceAttachmentsResult => getInstanceAttachmentsResult.Attachments[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ots"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		attachmentsDs, err := ots.GetInstanceAttachments(ctx, &ots.GetInstanceAttachmentsArgs{
/// 			InstanceName: "sample-instance",
/// 			NameRegex:    pulumi.StringRef("testvpc"),
/// 			OutputFile:   pulumi.StringRef("attachments.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstOtsAttachmentId", attachmentsDs.Attachments[0].Id)
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
/// import com.pulumi.alicloud.ots.OtsFunctions;
/// import com.pulumi.alicloud.ots.inputs.GetInstanceAttachmentsArgs;
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
///         final var attachmentsDs = OtsFunctions.getInstanceAttachments(GetInstanceAttachmentsArgs.builder()
///             .instanceName("sample-instance")
///             .nameRegex("testvpc")
///             .outputFile("attachments.txt")
///             .build());
///
///         ctx.export("firstOtsAttachmentId", attachmentsDs.attachments()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   attachmentsDs:
///     fn::invoke:
///       function: alicloud:ots:getInstanceAttachments
///       arguments:
///         instanceName: sample-instance
///         nameRegex: testvpc
///         outputFile: attachments.txt
/// outputs:
///   firstOtsAttachmentId: ${attachmentsDs.attachments[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_oss_get_instance_attachments_get_instance_attachments_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceAttachmentsResult> getInstanceAttachments(
  GetInstanceAttachmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:oss/getInstanceAttachments:getInstanceAttachments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceAttachmentsResult.fromMap(result);
}

/// This data source provides the ots instances of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.40.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const instancesDs = alicloud.ots.getInstances({
///     outputFile: "instances.txt",
/// });
/// export const firstInstanceId = instancesDs.then(instancesDs => instancesDs.instances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// instances_ds = alicloud.ots.get_instances(output_file="instances.txt")
/// pulumi.export("firstInstanceId", instances_ds.instances[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instancesDs = AliCloud.Ots.GetInstances.Invoke(new()
///     {
///         OutputFile = "instances.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstInstanceId"] = instancesDs.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ots"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instancesDs, err := ots.GetInstances(ctx, &ots.GetInstancesArgs{
/// 			OutputFile: pulumi.StringRef("instances.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstInstanceId", instancesDs.Instances[0].Id)
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
/// import com.pulumi.alicloud.ots.OtsFunctions;
/// import com.pulumi.alicloud.ots.inputs.GetInstancesArgs;
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
///         final var instancesDs = OtsFunctions.getInstances(GetInstancesArgs.builder()
///             .outputFile("instances.txt")
///             .build());
///
///         ctx.export("firstInstanceId", instancesDs.instances()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   instancesDs:
///     fn::invoke:
///       function: alicloud:ots:getInstances
///       arguments:
///         outputFile: instances.txt
/// outputs:
///   firstInstanceId: ${instancesDs.instances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_oss_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:oss/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

/// Using this data source can enable OSS service automatically. If the service has been enabled, it will return `Opened`.
///
/// For information about OSS and how to use it, see [What is OSS](https://www.alibabacloud.com/help/product/31815.htm).
///
/// > **NOTE:** Available in v1.97.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.oss.getService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.oss.get_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.Oss.GetService.Invoke(new()
///     {
///         Enable = "On",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oss.GetService(ctx, &oss.GetServiceArgs{
/// 			Enable: pulumi.StringRef("On"),
/// 		}, nil)
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
/// import com.pulumi.alicloud.oss.OssFunctions;
/// import com.pulumi.alicloud.oss.inputs.GetServiceArgs;
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
///         final var open = OssFunctions.getService(GetServiceArgs.builder()
///             .enable("On")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   open:
///     fn::invoke:
///       function: alicloud:oss:getService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_oss_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:oss/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// This data source provides the ots tables of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.40.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const tablesDs = alicloud.ots.getTables({
///     instanceName: "sample-instance",
///     nameRegex: "sample-table",
///     outputFile: "tables.txt",
/// });
/// export const firstTableId = tablesDs.then(tablesDs => tablesDs.tables?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// tables_ds = alicloud.ots.get_tables(instance_name="sample-instance",
///     name_regex="sample-table",
///     output_file="tables.txt")
/// pulumi.export("firstTableId", tables_ds.tables[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tablesDs = AliCloud.Ots.GetTables.Invoke(new()
///     {
///         InstanceName = "sample-instance",
///         NameRegex = "sample-table",
///         OutputFile = "tables.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstTableId"] = tablesDs.Apply(getTablesResult => getTablesResult.Tables[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ots"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tablesDs, err := ots.GetTables(ctx, &ots.GetTablesArgs{
/// 			InstanceName: "sample-instance",
/// 			NameRegex:    pulumi.StringRef("sample-table"),
/// 			OutputFile:   pulumi.StringRef("tables.txt"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstTableId", tablesDs.Tables[0].Id)
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
/// import com.pulumi.alicloud.ots.OtsFunctions;
/// import com.pulumi.alicloud.ots.inputs.GetTablesArgs;
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
///         final var tablesDs = OtsFunctions.getTables(GetTablesArgs.builder()
///             .instanceName("sample-instance")
///             .nameRegex("sample-table")
///             .outputFile("tables.txt")
///             .build());
///
///         ctx.export("firstTableId", tablesDs.tables()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   tablesDs:
///     fn::invoke:
///       function: alicloud:ots:getTables
///       arguments:
///         instanceName: sample-instance
///         nameRegex: sample-table
///         outputFile: tables.txt
/// outputs:
///   firstTableId: ${tablesDs.tables[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_oss_get_tables_get_tables_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTablesResult> getTables(
  GetTablesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:oss/getTables:getTables',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTablesResult.fromMap(result);
}
