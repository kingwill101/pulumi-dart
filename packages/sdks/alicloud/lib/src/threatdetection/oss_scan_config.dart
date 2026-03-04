import 'package:pulumi/pulumi.dart' as pulumi;
import 'oss_scan_config_args.dart';
import 'oss_scan_config_state.dart';

/// Provides a Threat Detection Oss Scan Config resource.
///
/// Oss detection configuration.
///
/// For information about Threat Detection Oss Scan Config and how to use it, see [What is Oss Scan Config](https://www.alibabacloud.com/help/zh/security-center/developer-reference/api-sas-2018-12-03-createossscanconfig/).
///
/// &gt; **NOTE:** Available since v1.214.0.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const bucketRandom = _default.result;
/// const default8j4t1R = new alicloud.oss.Bucket("default8j4t1R", {
///     bucket: `${name}-1-${bucketRandom}`,
///     storageClass: "Standard",
/// });
/// const default9HMqfT = new alicloud.oss.Bucket("default9HMqfT", {
///     bucket: `${name}-2-${bucketRandom}`,
///     storageClass: "Standard",
/// });
/// const defaultxBXqFQ = new alicloud.oss.Bucket("defaultxBXqFQ", {
///     bucket: `${name}-3-${bucketRandom}`,
///     storageClass: "Standard",
/// });
/// const defaulthZvCmR = new alicloud.oss.Bucket("defaulthZvCmR", {
///     bucket: `${name}-4-${bucketRandom}`,
///     storageClass: "Standard",
/// });
/// const defaultOssScanConfig = new alicloud.threatdetection.OssScanConfig("default", {
///     keySuffixLists: [
///         ".jsp",
///         ".php",
///         ".k",
///     ],
///     scanDayLists: [
///         2,
///         5,
///         4,
///         3,
///     ],
///     ossScanConfigName: name,
///     endTime: "00:00:02",
///     startTime: "00:00:01",
///     enable: 1,
///     allKeyPrefix: false,
///     bucketNameLists: [
///         default8j4t1R.bucket,
///         default9HMqfT.bucket,
///         defaultxBXqFQ.bucket,
///     ],
///     keyPrefixLists: [
///         "/root",
///         "/usr",
///         "/123",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// bucket_random = default["result"]
/// default8j4t1_r = alicloud.oss.Bucket("default8j4t1R",
///     bucket=f"{name}-1-{bucket_random}",
///     storage_class="Standard")
/// default9_h_mqf_t = alicloud.oss.Bucket("default9HMqfT",
///     bucket=f"{name}-2-{bucket_random}",
///     storage_class="Standard")
/// defaultx_b_xq_fq = alicloud.oss.Bucket("defaultxBXqFQ",
///     bucket=f"{name}-3-{bucket_random}",
///     storage_class="Standard")
/// defaulth_zv_cm_r = alicloud.oss.Bucket("defaulthZvCmR",
///     bucket=f"{name}-4-{bucket_random}",
///     storage_class="Standard")
/// default_oss_scan_config = alicloud.threatdetection.OssScanConfig("default",
///     key_suffix_lists=[
///         ".jsp",
///         ".php",
///         ".k",
///     ],
///     scan_day_lists=[
///         2,
///         5,
///         4,
///         3,
///     ],
///     oss_scan_config_name=name,
///     end_time="00:00:02",
///     start_time="00:00:01",
///     enable=1,
///     all_key_prefix=False,
///     bucket_name_lists=[
///         default8j4t1_r.bucket,
///         default9_h_mqf_t.bucket,
///         defaultx_b_xq_fq.bucket,
///     ],
///     key_prefix_lists=[
///         "/root",
///         "/usr",
///         "/123",
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
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var bucketRandom = @default.Result;
///
///     var default8j4t1R = new AliCloud.Oss.Bucket("default8j4t1R", new()
///     {
///         BucketName = $"{name}-1-{bucketRandom}",
///         StorageClass = "Standard",
///     });
///
///     var default9HMqfT = new AliCloud.Oss.Bucket("default9HMqfT", new()
///     {
///         BucketName = $"{name}-2-{bucketRandom}",
///         StorageClass = "Standard",
///     });
///
///     var defaultxBXqFQ = new AliCloud.Oss.Bucket("defaultxBXqFQ", new()
///     {
///         BucketName = $"{name}-3-{bucketRandom}",
///         StorageClass = "Standard",
///     });
///
///     var defaulthZvCmR = new AliCloud.Oss.Bucket("defaulthZvCmR", new()
///     {
///         BucketName = $"{name}-4-{bucketRandom}",
///         StorageClass = "Standard",
///     });
///
///     var defaultOssScanConfig = new AliCloud.ThreatDetection.OssScanConfig("default", new()
///     {
///         KeySuffixLists = new[]
///         {
///             ".jsp",
///             ".php",
///             ".k",
///         },
///         ScanDayLists = new[]
///         {
///             2,
///             5,
///             4,
///             3,
///         },
///         OssScanConfigName = name,
///         EndTime = "00:00:02",
///         StartTime = "00:00:01",
///         Enable = 1,
///         AllKeyPrefix = false,
///         BucketNameLists = new[]
///         {
///             default8j4t1R.BucketName,
///             default9HMqfT.BucketName,
///             defaultxBXqFQ.BucketName,
///         },
///         KeyPrefixLists = new[]
///         {
///             "/root",
///             "/usr",
///             "/123",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/threatdetection"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucketRandom := _default.Result
/// 		default8j4t1R, err := oss.NewBucket(ctx, "default8j4t1R", &oss.BucketArgs{
/// 			Bucket:       pulumi.Sprintf("%v-1-%v", name, bucketRandom),
/// 			StorageClass: pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default9HMqfT, err := oss.NewBucket(ctx, "default9HMqfT", &oss.BucketArgs{
/// 			Bucket:       pulumi.Sprintf("%v-2-%v", name, bucketRandom),
/// 			StorageClass: pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultxBXqFQ, err := oss.NewBucket(ctx, "defaultxBXqFQ", &oss.BucketArgs{
/// 			Bucket:       pulumi.Sprintf("%v-3-%v", name, bucketRandom),
/// 			StorageClass: pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucket(ctx, "defaulthZvCmR", &oss.BucketArgs{
/// 			Bucket:       pulumi.Sprintf("%v-4-%v", name, bucketRandom),
/// 			StorageClass: pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = threatdetection.NewOssScanConfig(ctx, "default", &threatdetection.OssScanConfigArgs{
/// 			KeySuffixLists: pulumi.StringArray{
/// 				pulumi.String(".jsp"),
/// 				pulumi.String(".php"),
/// 				pulumi.String(".k"),
/// 			},
/// 			ScanDayLists: pulumi.IntArray{
/// 				pulumi.Int(2),
/// 				pulumi.Int(5),
/// 				pulumi.Int(4),
/// 				pulumi.Int(3),
/// 			},
/// 			OssScanConfigName: pulumi.String(name),
/// 			EndTime:           pulumi.String("00:00:02"),
/// 			StartTime:         pulumi.String("00:00:01"),
/// 			Enable:            pulumi.Int(1),
/// 			AllKeyPrefix:      pulumi.Bool(false),
/// 			BucketNameLists: pulumi.StringArray{
/// 				default8j4t1R.Bucket,
/// 				default9HMqfT.Bucket,
/// 				defaultxBXqFQ.Bucket,
/// 			},
/// 			KeyPrefixLists: pulumi.StringArray{
/// 				pulumi.String("/root"),
/// 				pulumi.String("/usr"),
/// 				pulumi.String("/123"),
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
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.threatdetection.OssScanConfig;
/// import com.pulumi.alicloud.threatdetection.OssScanConfigArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         final var bucketRandom = default_.result();
///
///         var default8j4t1R = new Bucket("default8j4t1R", BucketArgs.builder()
///             .bucket(String.format("%s-1-%s", name,bucketRandom))
///             .storageClass("Standard")
///             .build());
///
///         var default9HMqfT = new Bucket("default9HMqfT", BucketArgs.builder()
///             .bucket(String.format("%s-2-%s", name,bucketRandom))
///             .storageClass("Standard")
///             .build());
///
///         var defaultxBXqFQ = new Bucket("defaultxBXqFQ", BucketArgs.builder()
///             .bucket(String.format("%s-3-%s", name,bucketRandom))
///             .storageClass("Standard")
///             .build());
///
///         var defaulthZvCmR = new Bucket("defaulthZvCmR", BucketArgs.builder()
///             .bucket(String.format("%s-4-%s", name,bucketRandom))
///             .storageClass("Standard")
///             .build());
///
///         var defaultOssScanConfig = new OssScanConfig("defaultOssScanConfig", OssScanConfigArgs.builder()
///             .keySuffixLists(
///                 ".jsp",
///                 ".php",
///                 ".k")
///             .scanDayLists(
///                 2,
///                 5,
///                 4,
///                 3)
///             .ossScanConfigName(name)
///             .endTime("00:00:02")
///             .startTime("00:00:01")
///             .enable(1)
///             .allKeyPrefix(false)
///             .bucketNameLists(
///                 default8j4t1R.bucket(),
///                 default9HMqfT.bucket(),
///                 defaultxBXqFQ.bucket())
///             .keyPrefixLists(
///                 "/root",
///                 "/usr",
///                 "/123")
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
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   default8j4t1R:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket: ${name}-1-${bucketRandom}
///       storageClass: Standard
///   default9HMqfT:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket: ${name}-2-${bucketRandom}
///       storageClass: Standard
///   defaultxBXqFQ:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket: ${name}-3-${bucketRandom}
///       storageClass: Standard
///   defaulthZvCmR:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket: ${name}-4-${bucketRandom}
///       storageClass: Standard
///   defaultOssScanConfig:
///     type: alicloud:threatdetection:OssScanConfig
///     name: default
///     properties:
///       keySuffixLists:
///         - .jsp
///         - .php
///         - .k
///       scanDayLists:
///         - '2'
///         - '5'
///         - '4'
///         - '3'
///       ossScanConfigName: ${name}
///       endTime: 00:00:02
///       startTime: 00:00:01
///       enable: '1'
///       allKeyPrefix: 'false'
///       bucketNameLists:
///         - ${default8j4t1R.bucket}
///         - ${default9HMqfT.bucket}
///         - ${defaultxBXqFQ.bucket}
///       keyPrefixLists:
///         - /root
///         - /usr
///         - /123
/// variables:
///   bucketRandom: ${default.result}
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Threat Detection Oss Scan Config can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:threatdetection/ossScanConfig:OssScanConfig example <id>
/// ```
class OssScanConfig extends pulumi.CustomResource {
  /// Specifies whether to match the prefixes of all objects.
  late final pulumi.Output<bool> allKeyPrefix;

  /// The names of the buckets.
  late final pulumi.Output<List<String>> bucketNameLists;

  /// The maximum number of objects that can be extracted during decompression. Valid values: 1 to 1000. If the maximum number of objects that can be extracted is reached, the decompression operation immediately ends and the detection of extracted objects is not affected.
  late final pulumi.Output<int?> decompressMaxFileCount;

  /// The maximum number of decompression levels when multi-level packages are decompressed. Valid values: 1 to 5. If the maximum number of decompression levels is reached, the decompression operation immediately ends and the detection of extracted objects is not affected.
  late final pulumi.Output<int?> decompressMaxLayer;

  /// The decryption methods.
  late final pulumi.Output<List<String>?> decryptionLists;

  /// Indicates whether the check policy is enabled. Valid values:
  late final pulumi.Output<int> enable;

  /// The end time of the check. The time is in the HH:mm:ss format.
  late final pulumi.Output<String> endTime;

  /// The prefixes of the objects.
  late final pulumi.Output<List<String>?> keyPrefixLists;

  /// The suffixes of the objects that are checked.
  late final pulumi.Output<List<String>> keySuffixLists;

  /// The timestamp when the object was last modified. The time must be later than the timestamp that you specify. Unit: milliseconds.
  late final pulumi.Output<int?> lastModifiedStartTime;

  /// The policy name.
  late final pulumi.Output<String?> ossScanConfigName;

  /// The days when the check is performed. The value indicates the days of the week.
  late final pulumi.Output<List<int>> scanDayLists;

  /// The start time of the check. The time is in the HH:mm:ss format.
  late final pulumi.Output<String> startTime;

  /// Creates a new [OssScanConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OssScanConfig]. {@macro pulumi_threatdetection_oss_scan_config_oss_scan_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OssScanConfig(
    String name, {
    OssScanConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:threatdetection/ossScanConfig:OssScanConfig',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allKeyPrefix = registerOutput<bool>('allKeyPrefix');
    bucketNameLists = registerOutput<List<String>>('bucketNameLists');
    decompressMaxFileCount = registerOutput<int?>('decompressMaxFileCount');
    decompressMaxLayer = registerOutput<int?>('decompressMaxLayer');
    decryptionLists = registerOutput<List<String>?>('decryptionLists');
    enable = registerOutput<int>('enable');
    endTime = registerOutput<String>('endTime');
    keyPrefixLists = registerOutput<List<String>?>('keyPrefixLists');
    keySuffixLists = registerOutput<List<String>>('keySuffixLists');
    lastModifiedStartTime = registerOutput<int?>('lastModifiedStartTime');
    ossScanConfigName = registerOutput<String?>('ossScanConfigName');
    scanDayLists = registerOutput<List<int>>('scanDayLists');
    startTime = registerOutput<String>('startTime');
  }

  /// Gets an existing [OssScanConfig] resource's state with the given [name] and [id].
  static OssScanConfig get(
    String name,
    pulumi.Input<String> id, {
    OssScanConfigState? state,
  }) {
    return OssScanConfig._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OssScanConfig._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:threatdetection/ossScanConfig:OssScanConfig',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allKeyPrefix = registerOutput<bool>('allKeyPrefix');
    bucketNameLists = registerOutput<List<String>>('bucketNameLists');
    decompressMaxFileCount = registerOutput<int?>('decompressMaxFileCount');
    decompressMaxLayer = registerOutput<int?>('decompressMaxLayer');
    decryptionLists = registerOutput<List<String>?>('decryptionLists');
    enable = registerOutput<int>('enable');
    endTime = registerOutput<String>('endTime');
    keyPrefixLists = registerOutput<List<String>?>('keyPrefixLists');
    keySuffixLists = registerOutput<List<String>>('keySuffixLists');
    lastModifiedStartTime = registerOutput<int?>('lastModifiedStartTime');
    ossScanConfigName = registerOutput<String?>('ossScanConfigName');
    scanDayLists = registerOutput<List<int>>('scanDayLists');
    startTime = registerOutput<String>('startTime');
  }
}
