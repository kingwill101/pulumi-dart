import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_access_monitor.dart';
import 'bucket_args.dart';
import 'bucket_cors_rule.dart';
import 'bucket_lifecycle_rule.dart';
import 'bucket_logging.dart';
import 'bucket_referer_config.dart';
import 'bucket_server_side_encryption_rule.dart';
import 'bucket_transfer_acceleration.dart';
import 'bucket_versioning.dart';
import 'bucket_website.dart';

/// Provides a resource to create a oss bucket and set its attribution.
///
/// > **NOTE:** The bucket namespace is shared by all users of the OSS system. Please set bucket name as unique as possible.
///
/// > **NOTE:** Available since v1.2.0.
///
/// ## Example Usage
///
/// Private Bucket
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
/// const bucket_acl = new alicloud.oss.Bucket("bucket-acl", {bucket: `example-value-${_default.result}`});
/// const bucket_aclBucketAcl = new alicloud.oss.BucketAcl("bucket-acl", {
///     bucket: bucket_acl.bucket,
///     acl: "private",
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
/// bucket_acl = alicloud.oss.Bucket("bucket-acl", bucket=f"example-value-{default['result']}")
/// bucket_acl_bucket_acl = alicloud.oss.BucketAcl("bucket-acl",
///     bucket=bucket_acl.bucket,
///     acl="private")
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
///     var bucket_acl = new AliCloud.Oss.Bucket("bucket-acl", new()
///     {
///         BucketName = $"example-value-{@default.Result}",
///     });
///
///     var bucket_aclBucketAcl = new AliCloud.Oss.BucketAcl("bucket-acl", new()
///     {
///         Bucket = bucket_acl.BucketName,
///         Acl = "private",
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
/// 		bucket_acl, err := oss.NewBucket(ctx, "bucket-acl", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("example-value-%v", _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketAcl(ctx, "bucket-acl", &oss.BucketAclArgs{
/// 			Bucket: bucket_acl.Bucket,
/// 			Acl:    pulumi.String("private"),
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
/// import com.pulumi.alicloud.oss.BucketAcl;
/// import com.pulumi.alicloud.oss.BucketAclArgs;
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
///         var bucket_acl = new Bucket("bucket-acl", BucketArgs.builder()
///             .bucket(String.format("example-value-%s", default_.result()))
///             .build());
///
///         var bucket_aclBucketAcl = new BucketAcl("bucket-aclBucketAcl", BucketAclArgs.builder()
///             .bucket(bucket_acl.bucket())
///             .acl("private")
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
///   bucket-acl:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket: example-value-${default.result}
///   bucket-aclBucketAcl:
///     type: alicloud:oss:BucketAcl
///     name: bucket-acl
///     properties:
///       bucket: ${["bucket-acl"].bucket}
///       acl: private
/// ```
///
///
/// Static Website
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
/// const bucket_website = new alicloud.oss.Bucket("bucket-website", {
///     bucket: `example-value-${_default.result}`,
///     website: {
///         indexDocument: "index.html",
///         errorDocument: "error.html",
///     },
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
/// bucket_website = alicloud.oss.Bucket("bucket-website",
///     bucket=f"example-value-{default['result']}",
///     website={
///         "index_document": "index.html",
///         "error_document": "error.html",
///     })
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
///     var bucket_website = new AliCloud.Oss.Bucket("bucket-website", new()
///     {
///         BucketName = $"example-value-{@default.Result}",
///         Website = new AliCloud.Oss.Inputs.BucketWebsiteArgs
///         {
///             IndexDocument = "index.html",
///             ErrorDocument = "error.html",
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
/// 		_, err = oss.NewBucket(ctx, "bucket-website", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("example-value-%v", _default.Result),
/// 			Website: &oss.BucketWebsiteTypeArgs{
/// 				IndexDocument: pulumi.String("index.html"),
/// 				ErrorDocument: pulumi.String("error.html"),
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
/// import com.pulumi.alicloud.oss.inputs.BucketWebsiteArgs;
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
///         var bucket_website = new Bucket("bucket-website", BucketArgs.builder()
///             .bucket(String.format("example-value-%s", default_.result()))
///             .website(BucketWebsiteArgs.builder()
///                 .indexDocument("index.html")
///                 .errorDocument("error.html")
///                 .build())
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
///   bucket-website:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket: example-value-${default.result}
///       website:
///         indexDocument: index.html
///         errorDocument: error.html
/// ```
///
///
/// Enable Logging
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
/// const bucket_target = new alicloud.oss.Bucket("bucket-target", {bucket: `example-value-${_default.result}`});
/// const bucket_targetBucketAcl = new alicloud.oss.BucketAcl("bucket-target", {
///     bucket: bucket_target.bucket,
///     acl: "public-read",
/// });
/// const bucket_logging = new alicloud.oss.Bucket("bucket-logging", {
///     bucket: `example-logging-${_default.result}`,
///     logging: {
///         targetBucket: bucket_target.id,
///         targetPrefix: "log/",
///     },
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
/// bucket_target = alicloud.oss.Bucket("bucket-target", bucket=f"example-value-{default['result']}")
/// bucket_target_bucket_acl = alicloud.oss.BucketAcl("bucket-target",
///     bucket=bucket_target.bucket,
///     acl="public-read")
/// bucket_logging = alicloud.oss.Bucket("bucket-logging",
///     bucket=f"example-logging-{default['result']}",
///     logging={
///         "target_bucket": bucket_target.id,
///         "target_prefix": "log/",
///     })
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
///     var bucket_target = new AliCloud.Oss.Bucket("bucket-target", new()
///     {
///         BucketName = $"example-value-{@default.Result}",
///     });
///
///     var bucket_targetBucketAcl = new AliCloud.Oss.BucketAcl("bucket-target", new()
///     {
///         Bucket = bucket_target.BucketName,
///         Acl = "public-read",
///     });
///
///     var bucket_logging = new AliCloud.Oss.Bucket("bucket-logging", new()
///     {
///         BucketName = $"example-logging-{@default.Result}",
///         Logging = new AliCloud.Oss.Inputs.BucketLoggingArgs
///         {
///             TargetBucket = bucket_target.Id,
///             TargetPrefix = "log/",
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
/// 		bucket_target, err := oss.NewBucket(ctx, "bucket-target", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("example-value-%v", _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketAcl(ctx, "bucket-target", &oss.BucketAclArgs{
/// 			Bucket: bucket_target.Bucket,
/// 			Acl:    pulumi.String("public-read"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucket(ctx, "bucket-logging", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("example-logging-%v", _default.Result),
/// 			Logging: &oss.BucketLoggingTypeArgs{
/// 				TargetBucket: bucket_target.ID(),
/// 				TargetPrefix: pulumi.String("log/"),
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
/// import com.pulumi.alicloud.oss.BucketAcl;
/// import com.pulumi.alicloud.oss.BucketAclArgs;
/// import com.pulumi.alicloud.oss.inputs.BucketLoggingArgs;
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
///         var bucket_target = new Bucket("bucket-target", BucketArgs.builder()
///             .bucket(String.format("example-value-%s", default_.result()))
///             .build());
///
///         var bucket_targetBucketAcl = new BucketAcl("bucket-targetBucketAcl", BucketAclArgs.builder()
///             .bucket(bucket_target.bucket())
///             .acl("public-read")
///             .build());
///
///         var bucket_logging = new Bucket("bucket-logging", BucketArgs.builder()
///             .bucket(String.format("example-logging-%s", default_.result()))
///             .logging(BucketLoggingArgs.builder()
///                 .targetBucket(bucket_target.id())
///                 .targetPrefix("log/")
///                 .build())
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
///   bucket-target:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket: example-value-${default.result}
///   bucket-targetBucketAcl:
///     type: alicloud:oss:BucketAcl
///     name: bucket-target
///     properties:
///       bucket: ${["bucket-target"].bucket}
///       acl: public-read
///   bucket-logging:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket: example-logging-${default.result}
///       logging:
///         targetBucket: ${["bucket-target"].id}
///         targetPrefix: log/
/// ```
///
///
/// Referer configuration
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
/// const bucket_referer = new alicloud.oss.Bucket("bucket-referer", {
///     bucket: `example-value-${_default.result}`,
///     refererConfig: {
///         allowEmpty: false,
///         referers: [
///             "http://www.aliyun.com",
///             "https://www.aliyun.com",
///         ],
///     },
/// });
/// const defaultBucketAcl = new alicloud.oss.BucketAcl("default", {
///     bucket: bucket_referer.bucket,
///     acl: "private",
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
/// bucket_referer = alicloud.oss.Bucket("bucket-referer",
///     bucket=f"example-value-{default['result']}",
///     referer_config={
///         "allow_empty": False,
///         "referers": [
///             "http://www.aliyun.com",
///             "https://www.aliyun.com",
///         ],
///     })
/// default_bucket_acl = alicloud.oss.BucketAcl("default",
///     bucket=bucket_referer.bucket,
///     acl="private")
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
///     var bucket_referer = new AliCloud.Oss.Bucket("bucket-referer", new()
///     {
///         BucketName = $"example-value-{@default.Result}",
///         RefererConfig = new AliCloud.Oss.Inputs.BucketRefererConfigArgs
///         {
///             AllowEmpty = false,
///             Referers = new[]
///             {
///                 "http://www.aliyun.com",
///                 "https://www.aliyun.com",
///             },
///         },
///     });
///
///     var defaultBucketAcl = new AliCloud.Oss.BucketAcl("default", new()
///     {
///         Bucket = bucket_referer.BucketName,
///         Acl = "private",
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
/// 		bucket_referer, err := oss.NewBucket(ctx, "bucket-referer", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("example-value-%v", _default.Result),
/// 			RefererConfig: &oss.BucketRefererConfigArgs{
/// 				AllowEmpty: pulumi.Bool(false),
/// 				Referers: pulumi.StringArray{
/// 					pulumi.String("http://www.aliyun.com"),
/// 					pulumi.String("https://www.aliyun.com"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketAcl(ctx, "default", &oss.BucketAclArgs{
/// 			Bucket: bucket_referer.Bucket,
/// 			Acl:    pulumi.String("private"),
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
/// import com.pulumi.alicloud.oss.inputs.BucketRefererConfigArgs;
/// import com.pulumi.alicloud.oss.BucketAcl;
/// import com.pulumi.alicloud.oss.BucketAclArgs;
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
///         var bucket_referer = new Bucket("bucket-referer", BucketArgs.builder()
///             .bucket(String.format("example-value-%s", default_.result()))
///             .refererConfig(BucketRefererConfigArgs.builder()
///                 .allowEmpty(false)
///                 .referers(
///                     "http://www.aliyun.com",
///                     "https://www.aliyun.com")
///                 .build())
///             .build());
///
///         var defaultBucketAcl = new BucketAcl("defaultBucketAcl", BucketAclArgs.builder()
///             .bucket(bucket_referer.bucket())
///             .acl("private")
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
///   bucket-referer:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket: example-value-${default.result}
///       refererConfig:
///         allowEmpty: false
///         referers:
///           - http://www.aliyun.com
///           - https://www.aliyun.com
///   defaultBucketAcl:
///     type: alicloud:oss:BucketAcl
///     name: default
///     properties:
///       bucket: ${["bucket-referer"].bucket}
///       acl: private
/// ```
///
///
/// Set lifecycle rule
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
/// import * as std from "@pulumi/std";
///
/// const _default = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const bucket_lifecycle1 = new alicloud.oss.Bucket("bucket-lifecycle1", {
///     bucket: `example-lifecycle1-${_default.result}`,
///     lifecycleRules: [
///         {
///             id: "rule-days",
///             prefix: "path1/",
///             enabled: true,
///             expirations: [{
///                 days: 365,
///             }],
///         },
///         {
///             id: "rule-date",
///             prefix: "path2/",
///             enabled: true,
///             expirations: [{
///                 date: "2018-01-12",
///             }],
///         },
///     ],
/// });
/// const bucket_lifecycle1BucketAcl = new alicloud.oss.BucketAcl("bucket-lifecycle1", {
///     bucket: bucket_lifecycle1.bucket,
///     acl: "public-read",
/// });
/// const bucket_lifecycle2 = new alicloud.oss.Bucket("bucket-lifecycle2", {
///     bucket: `example-lifecycle2-${_default.result}`,
///     lifecycleRules: [{
///         id: "rule-days-transition",
///         prefix: "path3/",
///         enabled: true,
///         transitions: [
///             {
///                 days: 3,
///                 storageClass: "IA",
///             },
///             {
///                 days: 30,
///                 storageClass: "Archive",
///             },
///         ],
///     }],
/// });
/// const bucket_lifecycle2BucketAcl = new alicloud.oss.BucketAcl("bucket-lifecycle2", {
///     bucket: bucket_lifecycle2.bucket,
///     acl: "public-read",
/// });
/// const bucket_lifecycle3 = new alicloud.oss.Bucket("bucket-lifecycle3", {
///     bucket: `example-lifecycle3-${_default.result}`,
///     lifecycleRules: [{
///         id: "rule-days-transition",
///         prefix: "path3/",
///         enabled: true,
///         transitions: [
///             {
///                 createdBeforeDate: "2022-11-11",
///                 storageClass: "IA",
///             },
///             {
///                 createdBeforeDate: "2021-11-11",
///                 storageClass: "Archive",
///             },
///         ],
///     }],
/// });
/// const bucket_lifecycle3BucketAcl = new alicloud.oss.BucketAcl("bucket-lifecycle3", {
///     bucket: bucket_lifecycle3.bucket,
///     acl: "public-read",
/// });
/// const bucket_lifecycle4 = new alicloud.oss.Bucket("bucket-lifecycle4", {
///     bucket: `example-lifecycle4-${_default.result}`,
///     lifecycleRules: [{
///         id: "rule-abort-multipart-upload",
///         prefix: "path3/",
///         enabled: true,
///         abortMultipartUploads: [{
///             days: 128,
///         }],
///     }],
/// });
/// const bucket_lifecycle4BucketAcl = new alicloud.oss.BucketAcl("bucket-lifecycle4", {
///     bucket: bucket_lifecycle4.bucket,
///     acl: "public-read",
/// });
/// const bucket_versioning_lifecycle = new alicloud.oss.Bucket("bucket-versioning-lifecycle", {
///     bucket: `example-lifecycle5-${_default.result}`,
///     versioning: {
///         status: "Enabled",
///     },
///     lifecycleRules: [{
///         id: "rule-versioning",
///         prefix: "path1/",
///         enabled: true,
///         expirations: [{
///             expiredObjectDeleteMarker: true,
///         }],
///         noncurrentVersionExpirations: [{
///             days: 240,
///         }],
///         noncurrentVersionTransitions: [
///             {
///                 days: 180,
///                 storageClass: "Archive",
///             },
///             {
///                 days: 60,
///                 storageClass: "IA",
///             },
///         ],
///     }],
/// });
/// const bucket_versioning_lifecycleBucketAcl = new alicloud.oss.BucketAcl("bucket-versioning-lifecycle", {
///     bucket: bucket_versioning_lifecycle.bucket,
///     acl: "private",
/// });
/// const bucket_access_monitor_lifecycle = new alicloud.oss.Bucket("bucket-access-monitor-lifecycle", {
///     bucket: std.format({
///         input: "example-lifecycle6-%s",
///         args: [_default.result],
///     }).then(invoke => invoke.result),
///     accessMonitor: {
///         status: "Enabled",
///     },
///     lifecycleRules: [{
///         id: "rule-days-transition",
///         prefix: "path/",
///         enabled: true,
///         transitions: [{
///             days: 30,
///             storageClass: "IA",
///             isAccessTime: true,
///             returnToStdWhenVisit: true,
///         }],
///     }],
/// });
/// const bucket_access_monitor_lifecycleBucketAcl = new alicloud.oss.BucketAcl("bucket-access-monitor-lifecycle", {
///     bucket: bucket_access_monitor_lifecycle.bucket,
///     acl: "private",
/// });
/// const bucket_tag_lifecycle = new alicloud.oss.Bucket("bucket-tag-lifecycle", {
///     bucket: std.format({
///         input: "example-lifecycle7-%s",
///         args: [_default.result],
///     }).then(invoke => invoke.result),
///     lifecycleRules: [{
///         id: "rule-days-transition",
///         prefix: "path/",
///         enabled: true,
///         transitions: [{
///             createdBeforeDate: "2022-11-11",
///             storageClass: "IA",
///         }],
///     }],
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
/// });
/// const bucket_tag_lifecycleBucketAcl = new alicloud.oss.BucketAcl("bucket-tag-lifecycle", {
///     bucket: bucket_tag_lifecycle.bucket,
///     acl: "private",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
/// import pulumi_std as std
///
/// default = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// bucket_lifecycle1 = alicloud.oss.Bucket("bucket-lifecycle1",
///     bucket=f"example-lifecycle1-{default['result']}",
///     lifecycle_rules=[
///         {
///             "id": "rule-days",
///             "prefix": "path1/",
///             "enabled": True,
///             "expirations": [{
///                 "days": 365,
///             }],
///         },
///         {
///             "id": "rule-date",
///             "prefix": "path2/",
///             "enabled": True,
///             "expirations": [{
///                 "date": "2018-01-12",
///             }],
///         },
///     ])
/// bucket_lifecycle1_bucket_acl = alicloud.oss.BucketAcl("bucket-lifecycle1",
///     bucket=bucket_lifecycle1.bucket,
///     acl="public-read")
/// bucket_lifecycle2 = alicloud.oss.Bucket("bucket-lifecycle2",
///     bucket=f"example-lifecycle2-{default['result']}",
///     lifecycle_rules=[{
///         "id": "rule-days-transition",
///         "prefix": "path3/",
///         "enabled": True,
///         "transitions": [
///             {
///                 "days": 3,
///                 "storage_class": "IA",
///             },
///             {
///                 "days": 30,
///                 "storage_class": "Archive",
///             },
///         ],
///     }])
/// bucket_lifecycle2_bucket_acl = alicloud.oss.BucketAcl("bucket-lifecycle2",
///     bucket=bucket_lifecycle2.bucket,
///     acl="public-read")
/// bucket_lifecycle3 = alicloud.oss.Bucket("bucket-lifecycle3",
///     bucket=f"example-lifecycle3-{default['result']}",
///     lifecycle_rules=[{
///         "id": "rule-days-transition",
///         "prefix": "path3/",
///         "enabled": True,
///         "transitions": [
///             {
///                 "created_before_date": "2022-11-11",
///                 "storage_class": "IA",
///             },
///             {
///                 "created_before_date": "2021-11-11",
///                 "storage_class": "Archive",
///             },
///         ],
///     }])
/// bucket_lifecycle3_bucket_acl = alicloud.oss.BucketAcl("bucket-lifecycle3",
///     bucket=bucket_lifecycle3.bucket,
///     acl="public-read")
/// bucket_lifecycle4 = alicloud.oss.Bucket("bucket-lifecycle4",
///     bucket=f"example-lifecycle4-{default['result']}",
///     lifecycle_rules=[{
///         "id": "rule-abort-multipart-upload",
///         "prefix": "path3/",
///         "enabled": True,
///         "abort_multipart_uploads": [{
///             "days": 128,
///         }],
///     }])
/// bucket_lifecycle4_bucket_acl = alicloud.oss.BucketAcl("bucket-lifecycle4",
///     bucket=bucket_lifecycle4.bucket,
///     acl="public-read")
/// bucket_versioning_lifecycle = alicloud.oss.Bucket("bucket-versioning-lifecycle",
///     bucket=f"example-lifecycle5-{default['result']}",
///     versioning={
///         "status": "Enabled",
///     },
///     lifecycle_rules=[{
///         "id": "rule-versioning",
///         "prefix": "path1/",
///         "enabled": True,
///         "expirations": [{
///             "expired_object_delete_marker": True,
///         }],
///         "noncurrent_version_expirations": [{
///             "days": 240,
///         }],
///         "noncurrent_version_transitions": [
///             {
///                 "days": 180,
///                 "storage_class": "Archive",
///             },
///             {
///                 "days": 60,
///                 "storage_class": "IA",
///             },
///         ],
///     }])
/// bucket_versioning_lifecycle_bucket_acl = alicloud.oss.BucketAcl("bucket-versioning-lifecycle",
///     bucket=bucket_versioning_lifecycle.bucket,
///     acl="private")
/// bucket_access_monitor_lifecycle = alicloud.oss.Bucket("bucket-access-monitor-lifecycle",
///     bucket=std.format(input="example-lifecycle6-%s",
///         args=[default["result"]]).result,
///     access_monitor={
///         "status": "Enabled",
///     },
///     lifecycle_rules=[{
///         "id": "rule-days-transition",
///         "prefix": "path/",
///         "enabled": True,
///         "transitions": [{
///             "days": 30,
///             "storage_class": "IA",
///             "is_access_time": True,
///             "return_to_std_when_visit": True,
///         }],
///     }])
/// bucket_access_monitor_lifecycle_bucket_acl = alicloud.oss.BucketAcl("bucket-access-monitor-lifecycle",
///     bucket=bucket_access_monitor_lifecycle.bucket,
///     acl="private")
/// bucket_tag_lifecycle = alicloud.oss.Bucket("bucket-tag-lifecycle",
///     bucket=std.format(input="example-lifecycle7-%s",
///         args=[default["result"]]).result,
///     lifecycle_rules=[{
///         "id": "rule-days-transition",
///         "prefix": "path/",
///         "enabled": True,
///         "transitions": [{
///             "created_before_date": "2022-11-11",
///             "storage_class": "IA",
///         }],
///     }],
///     tags={
///         "Created": "TF",
///         "For": "example",
///     })
/// bucket_tag_lifecycle_bucket_acl = alicloud.oss.BucketAcl("bucket-tag-lifecycle",
///     bucket=bucket_tag_lifecycle.bucket,
///     acl="private")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var bucket_lifecycle1 = new AliCloud.Oss.Bucket("bucket-lifecycle1", new()
///     {
///         BucketName = $"example-lifecycle1-{@default.Result}",
///         LifecycleRules = new[]
///         {
///             new AliCloud.Oss.Inputs.BucketLifecycleRuleArgs
///             {
///                 Id = "rule-days",
///                 Prefix = "path1/",
///                 Enabled = true,
///                 Expirations = new[]
///                 {
///                     new AliCloud.Oss.Inputs.BucketLifecycleRuleExpirationArgs
///                     {
///                         Days = 365,
///                     },
///                 },
///             },
///             new AliCloud.Oss.Inputs.BucketLifecycleRuleArgs
///             {
///                 Id = "rule-date",
///                 Prefix = "path2/",
///                 Enabled = true,
///                 Expirations = new[]
///                 {
///                     new AliCloud.Oss.Inputs.BucketLifecycleRuleExpirationArgs
///                     {
///                         Date = "2018-01-12",
///                     },
///                 },
///             },
///         },
///     });
///
///     var bucket_lifecycle1BucketAcl = new AliCloud.Oss.BucketAcl("bucket-lifecycle1", new()
///     {
///         Bucket = bucket_lifecycle1.BucketName,
///         Acl = "public-read",
///     });
///
///     var bucket_lifecycle2 = new AliCloud.Oss.Bucket("bucket-lifecycle2", new()
///     {
///         BucketName = $"example-lifecycle2-{@default.Result}",
///         LifecycleRules = new[]
///         {
///             new AliCloud.Oss.Inputs.BucketLifecycleRuleArgs
///             {
///                 Id = "rule-days-transition",
///                 Prefix = "path3/",
///                 Enabled = true,
///                 Transitions = new[]
///                 {
///                     new AliCloud.Oss.Inputs.BucketLifecycleRuleTransitionArgs
///                     {
///                         Days = 3,
///                         StorageClass = "IA",
///                     },
///                     new AliCloud.Oss.Inputs.BucketLifecycleRuleTransitionArgs
///                     {
///                         Days = 30,
///                         StorageClass = "Archive",
///                     },
///                 },
///             },
///         },
///     });
///
///     var bucket_lifecycle2BucketAcl = new AliCloud.Oss.BucketAcl("bucket-lifecycle2", new()
///     {
///         Bucket = bucket_lifecycle2.BucketName,
///         Acl = "public-read",
///     });
///
///     var bucket_lifecycle3 = new AliCloud.Oss.Bucket("bucket-lifecycle3", new()
///     {
///         BucketName = $"example-lifecycle3-{@default.Result}",
///         LifecycleRules = new[]
///         {
///             new AliCloud.Oss.Inputs.BucketLifecycleRuleArgs
///             {
///                 Id = "rule-days-transition",
///                 Prefix = "path3/",
///                 Enabled = true,
///                 Transitions = new[]
///                 {
///                     new AliCloud.Oss.Inputs.BucketLifecycleRuleTransitionArgs
///                     {
///                         CreatedBeforeDate = "2022-11-11",
///                         StorageClass = "IA",
///                     },
///                     new AliCloud.Oss.Inputs.BucketLifecycleRuleTransitionArgs
///                     {
///                         CreatedBeforeDate = "2021-11-11",
///                         StorageClass = "Archive",
///                     },
///                 },
///             },
///         },
///     });
///
///     var bucket_lifecycle3BucketAcl = new AliCloud.Oss.BucketAcl("bucket-lifecycle3", new()
///     {
///         Bucket = bucket_lifecycle3.BucketName,
///         Acl = "public-read",
///     });
///
///     var bucket_lifecycle4 = new AliCloud.Oss.Bucket("bucket-lifecycle4", new()
///     {
///         BucketName = $"example-lifecycle4-{@default.Result}",
///         LifecycleRules = new[]
///         {
///             new AliCloud.Oss.Inputs.BucketLifecycleRuleArgs
///             {
///                 Id = "rule-abort-multipart-upload",
///                 Prefix = "path3/",
///                 Enabled = true,
///                 AbortMultipartUploads = new[]
///                 {
///                     new AliCloud.Oss.Inputs.BucketLifecycleRuleAbortMultipartUploadArgs
///                     {
///                         Days = 128,
///                     },
///                 },
///             },
///         },
///     });
///
///     var bucket_lifecycle4BucketAcl = new AliCloud.Oss.BucketAcl("bucket-lifecycle4", new()
///     {
///         Bucket = bucket_lifecycle4.BucketName,
///         Acl = "public-read",
///     });
///
///     var bucket_versioning_lifecycle = new AliCloud.Oss.Bucket("bucket-versioning-lifecycle", new()
///     {
///         BucketName = $"example-lifecycle5-{@default.Result}",
///         Versioning = new AliCloud.Oss.Inputs.BucketVersioningArgs
///         {
///             Status = "Enabled",
///         },
///         LifecycleRules = new[]
///         {
///             new AliCloud.Oss.Inputs.BucketLifecycleRuleArgs
///             {
///                 Id = "rule-versioning",
///                 Prefix = "path1/",
///                 Enabled = true,
///                 Expirations = new[]
///                 {
///                     new AliCloud.Oss.Inputs.BucketLifecycleRuleExpirationArgs
///                     {
///                         ExpiredObjectDeleteMarker = true,
///                     },
///                 },
///                 NoncurrentVersionExpirations = new[]
///                 {
///                     new AliCloud.Oss.Inputs.BucketLifecycleRuleNoncurrentVersionExpirationArgs
///                     {
///                         Days = 240,
///                     },
///                 },
///                 NoncurrentVersionTransitions = new[]
///                 {
///                     new AliCloud.Oss.Inputs.BucketLifecycleRuleNoncurrentVersionTransitionArgs
///                     {
///                         Days = 180,
///                         StorageClass = "Archive",
///                     },
///                     new AliCloud.Oss.Inputs.BucketLifecycleRuleNoncurrentVersionTransitionArgs
///                     {
///                         Days = 60,
///                         StorageClass = "IA",
///                     },
///                 },
///             },
///         },
///     });
///
///     var bucket_versioning_lifecycleBucketAcl = new AliCloud.Oss.BucketAcl("bucket-versioning-lifecycle", new()
///     {
///         Bucket = bucket_versioning_lifecycle.BucketName,
///         Acl = "private",
///     });
///
///     var bucket_access_monitor_lifecycle = new AliCloud.Oss.Bucket("bucket-access-monitor-lifecycle", new()
///     {
///         BucketName = Std.Format.Invoke(new()
///         {
///             Input = "example-lifecycle6-%s",
///             Args = new[]
///             {
///                 @default.Result,
///             },
///         }).Apply(invoke => invoke.Result),
///         AccessMonitor = new AliCloud.Oss.Inputs.BucketAccessMonitorArgs
///         {
///             Status = "Enabled",
///         },
///         LifecycleRules = new[]
///         {
///             new AliCloud.Oss.Inputs.BucketLifecycleRuleArgs
///             {
///                 Id = "rule-days-transition",
///                 Prefix = "path/",
///                 Enabled = true,
///                 Transitions = new[]
///                 {
///                     new AliCloud.Oss.Inputs.BucketLifecycleRuleTransitionArgs
///                     {
///                         Days = 30,
///                         StorageClass = "IA",
///                         IsAccessTime = true,
///                         ReturnToStdWhenVisit = true,
///                     },
///                 },
///             },
///         },
///     });
///
///     var bucket_access_monitor_lifecycleBucketAcl = new AliCloud.Oss.BucketAcl("bucket-access-monitor-lifecycle", new()
///     {
///         Bucket = bucket_access_monitor_lifecycle.BucketName,
///         Acl = "private",
///     });
///
///     var bucket_tag_lifecycle = new AliCloud.Oss.Bucket("bucket-tag-lifecycle", new()
///     {
///         BucketName = Std.Format.Invoke(new()
///         {
///             Input = "example-lifecycle7-%s",
///             Args = new[]
///             {
///                 @default.Result,
///             },
///         }).Apply(invoke => invoke.Result),
///         LifecycleRules = new[]
///         {
///             new AliCloud.Oss.Inputs.BucketLifecycleRuleArgs
///             {
///                 Id = "rule-days-transition",
///                 Prefix = "path/",
///                 Enabled = true,
///                 Transitions = new[]
///                 {
///                     new AliCloud.Oss.Inputs.BucketLifecycleRuleTransitionArgs
///                     {
///                         CreatedBeforeDate = "2022-11-11",
///                         StorageClass = "IA",
///                     },
///                 },
///             },
///         },
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///     });
///
///     var bucket_tag_lifecycleBucketAcl = new AliCloud.Oss.BucketAcl("bucket-tag-lifecycle", new()
///     {
///         Bucket = bucket_tag_lifecycle.BucketName,
///         Acl = "private",
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
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		bucket_lifecycle1, err := oss.NewBucket(ctx, "bucket-lifecycle1", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("example-lifecycle1-%v", _default.Result),
/// 			LifecycleRules: oss.BucketLifecycleRuleArray{
/// 				&oss.BucketLifecycleRuleArgs{
/// 					Id:      pulumi.String("rule-days"),
/// 					Prefix:  pulumi.String("path1/"),
/// 					Enabled: pulumi.Bool(true),
/// 					Expirations: oss.BucketLifecycleRuleExpirationArray{
/// 						&oss.BucketLifecycleRuleExpirationArgs{
/// 							Days: pulumi.Int(365),
/// 						},
/// 					},
/// 				},
/// 				&oss.BucketLifecycleRuleArgs{
/// 					Id:      pulumi.String("rule-date"),
/// 					Prefix:  pulumi.String("path2/"),
/// 					Enabled: pulumi.Bool(true),
/// 					Expirations: oss.BucketLifecycleRuleExpirationArray{
/// 						&oss.BucketLifecycleRuleExpirationArgs{
/// 							Date: pulumi.String("2018-01-12"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketAcl(ctx, "bucket-lifecycle1", &oss.BucketAclArgs{
/// 			Bucket: bucket_lifecycle1.Bucket,
/// 			Acl:    pulumi.String("public-read"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket_lifecycle2, err := oss.NewBucket(ctx, "bucket-lifecycle2", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("example-lifecycle2-%v", _default.Result),
/// 			LifecycleRules: oss.BucketLifecycleRuleArray{
/// 				&oss.BucketLifecycleRuleArgs{
/// 					Id:      pulumi.String("rule-days-transition"),
/// 					Prefix:  pulumi.String("path3/"),
/// 					Enabled: pulumi.Bool(true),
/// 					Transitions: oss.BucketLifecycleRuleTransitionArray{
/// 						&oss.BucketLifecycleRuleTransitionArgs{
/// 							Days:         pulumi.Int(3),
/// 							StorageClass: pulumi.String("IA"),
/// 						},
/// 						&oss.BucketLifecycleRuleTransitionArgs{
/// 							Days:         pulumi.Int(30),
/// 							StorageClass: pulumi.String("Archive"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketAcl(ctx, "bucket-lifecycle2", &oss.BucketAclArgs{
/// 			Bucket: bucket_lifecycle2.Bucket,
/// 			Acl:    pulumi.String("public-read"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket_lifecycle3, err := oss.NewBucket(ctx, "bucket-lifecycle3", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("example-lifecycle3-%v", _default.Result),
/// 			LifecycleRules: oss.BucketLifecycleRuleArray{
/// 				&oss.BucketLifecycleRuleArgs{
/// 					Id:      pulumi.String("rule-days-transition"),
/// 					Prefix:  pulumi.String("path3/"),
/// 					Enabled: pulumi.Bool(true),
/// 					Transitions: oss.BucketLifecycleRuleTransitionArray{
/// 						&oss.BucketLifecycleRuleTransitionArgs{
/// 							CreatedBeforeDate: pulumi.String("2022-11-11"),
/// 							StorageClass:      pulumi.String("IA"),
/// 						},
/// 						&oss.BucketLifecycleRuleTransitionArgs{
/// 							CreatedBeforeDate: pulumi.String("2021-11-11"),
/// 							StorageClass:      pulumi.String("Archive"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketAcl(ctx, "bucket-lifecycle3", &oss.BucketAclArgs{
/// 			Bucket: bucket_lifecycle3.Bucket,
/// 			Acl:    pulumi.String("public-read"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket_lifecycle4, err := oss.NewBucket(ctx, "bucket-lifecycle4", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("example-lifecycle4-%v", _default.Result),
/// 			LifecycleRules: oss.BucketLifecycleRuleArray{
/// 				&oss.BucketLifecycleRuleArgs{
/// 					Id:      pulumi.String("rule-abort-multipart-upload"),
/// 					Prefix:  pulumi.String("path3/"),
/// 					Enabled: pulumi.Bool(true),
/// 					AbortMultipartUploads: oss.BucketLifecycleRuleAbortMultipartUploadArray{
/// 						&oss.BucketLifecycleRuleAbortMultipartUploadArgs{
/// 							Days: pulumi.Int(128),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketAcl(ctx, "bucket-lifecycle4", &oss.BucketAclArgs{
/// 			Bucket: bucket_lifecycle4.Bucket,
/// 			Acl:    pulumi.String("public-read"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket_versioning_lifecycle, err := oss.NewBucket(ctx, "bucket-versioning-lifecycle", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("example-lifecycle5-%v", _default.Result),
/// 			Versioning: &oss.BucketVersioningTypeArgs{
/// 				Status: pulumi.String("Enabled"),
/// 			},
/// 			LifecycleRules: oss.BucketLifecycleRuleArray{
/// 				&oss.BucketLifecycleRuleArgs{
/// 					Id:      pulumi.String("rule-versioning"),
/// 					Prefix:  pulumi.String("path1/"),
/// 					Enabled: pulumi.Bool(true),
/// 					Expirations: oss.BucketLifecycleRuleExpirationArray{
/// 						&oss.BucketLifecycleRuleExpirationArgs{
/// 							ExpiredObjectDeleteMarker: pulumi.Bool(true),
/// 						},
/// 					},
/// 					NoncurrentVersionExpirations: oss.BucketLifecycleRuleNoncurrentVersionExpirationArray{
/// 						&oss.BucketLifecycleRuleNoncurrentVersionExpirationArgs{
/// 							Days: pulumi.Int(240),
/// 						},
/// 					},
/// 					NoncurrentVersionTransitions: oss.BucketLifecycleRuleNoncurrentVersionTransitionArray{
/// 						&oss.BucketLifecycleRuleNoncurrentVersionTransitionArgs{
/// 							Days:         pulumi.Int(180),
/// 							StorageClass: pulumi.String("Archive"),
/// 						},
/// 						&oss.BucketLifecycleRuleNoncurrentVersionTransitionArgs{
/// 							Days:         pulumi.Int(60),
/// 							StorageClass: pulumi.String("IA"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketAcl(ctx, "bucket-versioning-lifecycle", &oss.BucketAclArgs{
/// 			Bucket: bucket_versioning_lifecycle.Bucket,
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "example-lifecycle6-%s",
/// 			Args: []interface{}{
/// 				_default.Result,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket_access_monitor_lifecycle, err := oss.NewBucket(ctx, "bucket-access-monitor-lifecycle", &oss.BucketArgs{
/// 			Bucket: pulumi.String(invokeFormat.Result),
/// 			AccessMonitor: &oss.BucketAccessMonitorTypeArgs{
/// 				Status: pulumi.String("Enabled"),
/// 			},
/// 			LifecycleRules: oss.BucketLifecycleRuleArray{
/// 				&oss.BucketLifecycleRuleArgs{
/// 					Id:      pulumi.String("rule-days-transition"),
/// 					Prefix:  pulumi.String("path/"),
/// 					Enabled: pulumi.Bool(true),
/// 					Transitions: oss.BucketLifecycleRuleTransitionArray{
/// 						&oss.BucketLifecycleRuleTransitionArgs{
/// 							Days:                 pulumi.Int(30),
/// 							StorageClass:         pulumi.String("IA"),
/// 							IsAccessTime:         pulumi.Bool(true),
/// 							ReturnToStdWhenVisit: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketAcl(ctx, "bucket-access-monitor-lifecycle", &oss.BucketAclArgs{
/// 			Bucket: bucket_access_monitor_lifecycle.Bucket,
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat1, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "example-lifecycle7-%s",
/// 			Args: []interface{}{
/// 				_default.Result,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket_tag_lifecycle, err := oss.NewBucket(ctx, "bucket-tag-lifecycle", &oss.BucketArgs{
/// 			Bucket: pulumi.String(invokeFormat1.Result),
/// 			LifecycleRules: oss.BucketLifecycleRuleArray{
/// 				&oss.BucketLifecycleRuleArgs{
/// 					Id:      pulumi.String("rule-days-transition"),
/// 					Prefix:  pulumi.String("path/"),
/// 					Enabled: pulumi.Bool(true),
/// 					Transitions: oss.BucketLifecycleRuleTransitionArray{
/// 						&oss.BucketLifecycleRuleTransitionArgs{
/// 							CreatedBeforeDate: pulumi.String("2022-11-11"),
/// 							StorageClass:      pulumi.String("IA"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketAcl(ctx, "bucket-tag-lifecycle", &oss.BucketAclArgs{
/// 			Bucket: bucket_tag_lifecycle.Bucket,
/// 			Acl:    pulumi.String("private"),
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
/// import com.pulumi.alicloud.oss.inputs.BucketLifecycleRuleArgs;
/// import com.pulumi.alicloud.oss.BucketAcl;
/// import com.pulumi.alicloud.oss.BucketAclArgs;
/// import com.pulumi.alicloud.oss.inputs.BucketVersioningArgs;
/// import com.pulumi.alicloud.oss.inputs.BucketAccessMonitorArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
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
///         var bucket_lifecycle1 = new Bucket("bucket-lifecycle1", BucketArgs.builder()
///             .bucket(String.format("example-lifecycle1-%s", default_.result()))
///             .lifecycleRules(
///                 BucketLifecycleRuleArgs.builder()
///                     .id("rule-days")
///                     .prefix("path1/")
///                     .enabled(true)
///                     .expirations(BucketLifecycleRuleExpirationArgs.builder()
///                         .days(365)
///                         .build())
///                     .build(),
///                 BucketLifecycleRuleArgs.builder()
///                     .id("rule-date")
///                     .prefix("path2/")
///                     .enabled(true)
///                     .expirations(BucketLifecycleRuleExpirationArgs.builder()
///                         .date("2018-01-12")
///                         .build())
///                     .build())
///             .build());
///
///         var bucket_lifecycle1BucketAcl = new BucketAcl("bucket-lifecycle1BucketAcl", BucketAclArgs.builder()
///             .bucket(bucket_lifecycle1.bucket())
///             .acl("public-read")
///             .build());
///
///         var bucket_lifecycle2 = new Bucket("bucket-lifecycle2", BucketArgs.builder()
///             .bucket(String.format("example-lifecycle2-%s", default_.result()))
///             .lifecycleRules(BucketLifecycleRuleArgs.builder()
///                 .id("rule-days-transition")
///                 .prefix("path3/")
///                 .enabled(true)
///                 .transitions(
///                     BucketLifecycleRuleTransitionArgs.builder()
///                         .days(3)
///                         .storageClass("IA")
///                         .build(),
///                     BucketLifecycleRuleTransitionArgs.builder()
///                         .days(30)
///                         .storageClass("Archive")
///                         .build())
///                 .build())
///             .build());
///
///         var bucket_lifecycle2BucketAcl = new BucketAcl("bucket-lifecycle2BucketAcl", BucketAclArgs.builder()
///             .bucket(bucket_lifecycle2.bucket())
///             .acl("public-read")
///             .build());
///
///         var bucket_lifecycle3 = new Bucket("bucket-lifecycle3", BucketArgs.builder()
///             .bucket(String.format("example-lifecycle3-%s", default_.result()))
///             .lifecycleRules(BucketLifecycleRuleArgs.builder()
///                 .id("rule-days-transition")
///                 .prefix("path3/")
///                 .enabled(true)
///                 .transitions(
///                     BucketLifecycleRuleTransitionArgs.builder()
///                         .createdBeforeDate("2022-11-11")
///                         .storageClass("IA")
///                         .build(),
///                     BucketLifecycleRuleTransitionArgs.builder()
///                         .createdBeforeDate("2021-11-11")
///                         .storageClass("Archive")
///                         .build())
///                 .build())
///             .build());
///
///         var bucket_lifecycle3BucketAcl = new BucketAcl("bucket-lifecycle3BucketAcl", BucketAclArgs.builder()
///             .bucket(bucket_lifecycle3.bucket())
///             .acl("public-read")
///             .build());
///
///         var bucket_lifecycle4 = new Bucket("bucket-lifecycle4", BucketArgs.builder()
///             .bucket(String.format("example-lifecycle4-%s", default_.result()))
///             .lifecycleRules(BucketLifecycleRuleArgs.builder()
///                 .id("rule-abort-multipart-upload")
///                 .prefix("path3/")
///                 .enabled(true)
///                 .abortMultipartUploads(BucketLifecycleRuleAbortMultipartUploadArgs.builder()
///                     .days(128)
///                     .build())
///                 .build())
///             .build());
///
///         var bucket_lifecycle4BucketAcl = new BucketAcl("bucket-lifecycle4BucketAcl", BucketAclArgs.builder()
///             .bucket(bucket_lifecycle4.bucket())
///             .acl("public-read")
///             .build());
///
///         var bucket_versioning_lifecycle = new Bucket("bucket-versioning-lifecycle", BucketArgs.builder()
///             .bucket(String.format("example-lifecycle5-%s", default_.result()))
///             .versioning(BucketVersioningArgs.builder()
///                 .status("Enabled")
///                 .build())
///             .lifecycleRules(BucketLifecycleRuleArgs.builder()
///                 .id("rule-versioning")
///                 .prefix("path1/")
///                 .enabled(true)
///                 .expirations(BucketLifecycleRuleExpirationArgs.builder()
///                     .expiredObjectDeleteMarker(true)
///                     .build())
///                 .noncurrentVersionExpirations(BucketLifecycleRuleNoncurrentVersionExpirationArgs.builder()
///                     .days(240)
///                     .build())
///                 .noncurrentVersionTransitions(
///                     BucketLifecycleRuleNoncurrentVersionTransitionArgs.builder()
///                         .days(180)
///                         .storageClass("Archive")
///                         .build(),
///                     BucketLifecycleRuleNoncurrentVersionTransitionArgs.builder()
///                         .days(60)
///                         .storageClass("IA")
///                         .build())
///                 .build())
///             .build());
///
///         var bucket_versioning_lifecycleBucketAcl = new BucketAcl("bucket-versioning-lifecycleBucketAcl", BucketAclArgs.builder()
///             .bucket(bucket_versioning_lifecycle.bucket())
///             .acl("private")
///             .build());
///
///         var bucket_access_monitor_lifecycle = new Bucket("bucket-access-monitor-lifecycle", BucketArgs.builder()
///             .bucket(StdFunctions.format(FormatArgs.builder()
///                 .input("example-lifecycle6-%s")
///                 .args(default_.result())
///                 .build()).result())
///             .accessMonitor(BucketAccessMonitorArgs.builder()
///                 .status("Enabled")
///                 .build())
///             .lifecycleRules(BucketLifecycleRuleArgs.builder()
///                 .id("rule-days-transition")
///                 .prefix("path/")
///                 .enabled(true)
///                 .transitions(BucketLifecycleRuleTransitionArgs.builder()
///                     .days(30)
///                     .storageClass("IA")
///                     .isAccessTime(true)
///                     .returnToStdWhenVisit(true)
///                     .build())
///                 .build())
///             .build());
///
///         var bucket_access_monitor_lifecycleBucketAcl = new BucketAcl("bucket-access-monitor-lifecycleBucketAcl", BucketAclArgs.builder()
///             .bucket(bucket_access_monitor_lifecycle.bucket())
///             .acl("private")
///             .build());
///
///         var bucket_tag_lifecycle = new Bucket("bucket-tag-lifecycle", BucketArgs.builder()
///             .bucket(StdFunctions.format(FormatArgs.builder()
///                 .input("example-lifecycle7-%s")
///                 .args(default_.result())
///                 .build()).result())
///             .lifecycleRules(BucketLifecycleRuleArgs.builder()
///                 .id("rule-days-transition")
///                 .prefix("path/")
///                 .enabled(true)
///                 .transitions(BucketLifecycleRuleTransitionArgs.builder()
///                     .createdBeforeDate("2022-11-11")
///                     .storageClass("IA")
///                     .build())
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .build());
///
///         var bucket_tag_lifecycleBucketAcl = new BucketAcl("bucket-tag-lifecycleBucketAcl", BucketAclArgs.builder()
///             .bucket(bucket_tag_lifecycle.bucket())
///             .acl("private")
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
///   bucket-lifecycle1:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket: example-lifecycle1-${default.result}
///       lifecycleRules:
///         - id: rule-days
///           prefix: path1/
///           enabled: true
///           expirations:
///             - days: 365
///         - id: rule-date
///           prefix: path2/
///           enabled: true
///           expirations:
///             - date: 2018-01-12
///   bucket-lifecycle1BucketAcl:
///     type: alicloud:oss:BucketAcl
///     name: bucket-lifecycle1
///     properties:
///       bucket: ${["bucket-lifecycle1"].bucket}
///       acl: public-read
///   bucket-lifecycle2:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket: example-lifecycle2-${default.result}
///       lifecycleRules:
///         - id: rule-days-transition
///           prefix: path3/
///           enabled: true
///           transitions:
///             - days: '3'
///               storageClass: IA
///             - days: '30'
///               storageClass: Archive
///   bucket-lifecycle2BucketAcl:
///     type: alicloud:oss:BucketAcl
///     name: bucket-lifecycle2
///     properties:
///       bucket: ${["bucket-lifecycle2"].bucket}
///       acl: public-read
///   bucket-lifecycle3:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket: example-lifecycle3-${default.result}
///       lifecycleRules:
///         - id: rule-days-transition
///           prefix: path3/
///           enabled: true
///           transitions:
///             - createdBeforeDate: 2022-11-11
///               storageClass: IA
///             - createdBeforeDate: 2021-11-11
///               storageClass: Archive
///   bucket-lifecycle3BucketAcl:
///     type: alicloud:oss:BucketAcl
///     name: bucket-lifecycle3
///     properties:
///       bucket: ${["bucket-lifecycle3"].bucket}
///       acl: public-read
///   bucket-lifecycle4:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket: example-lifecycle4-${default.result}
///       lifecycleRules:
///         - id: rule-abort-multipart-upload
///           prefix: path3/
///           enabled: true
///           abortMultipartUploads:
///             - days: 128
///   bucket-lifecycle4BucketAcl:
///     type: alicloud:oss:BucketAcl
///     name: bucket-lifecycle4
///     properties:
///       bucket: ${["bucket-lifecycle4"].bucket}
///       acl: public-read
///   bucket-versioning-lifecycle:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket: example-lifecycle5-${default.result}
///       versioning:
///         status: Enabled
///       lifecycleRules:
///         - id: rule-versioning
///           prefix: path1/
///           enabled: true
///           expirations:
///             - expiredObjectDeleteMarker: true
///           noncurrentVersionExpirations:
///             - days: 240
///           noncurrentVersionTransitions:
///             - days: 180
///               storageClass: Archive
///             - days: 60
///               storageClass: IA
///   bucket-versioning-lifecycleBucketAcl:
///     type: alicloud:oss:BucketAcl
///     name: bucket-versioning-lifecycle
///     properties:
///       bucket: ${["bucket-versioning-lifecycle"].bucket}
///       acl: private
///   bucket-access-monitor-lifecycle:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: example-lifecycle6-%s
///             args:
///               - ${default.result}
///           return: result
///       accessMonitor:
///         status: Enabled
///       lifecycleRules:
///         - id: rule-days-transition
///           prefix: path/
///           enabled: true
///           transitions:
///             - days: 30
///               storageClass: IA
///               isAccessTime: true
///               returnToStdWhenVisit: true
///   bucket-access-monitor-lifecycleBucketAcl:
///     type: alicloud:oss:BucketAcl
///     name: bucket-access-monitor-lifecycle
///     properties:
///       bucket: ${["bucket-access-monitor-lifecycle"].bucket}
///       acl: private
///   bucket-tag-lifecycle:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: example-lifecycle7-%s
///             args:
///               - ${default.result}
///           return: result
///       lifecycleRules:
///         - id: rule-days-transition
///           prefix: path/
///           enabled: true
///           transitions:
///             - createdBeforeDate: 2022-11-11
///               storageClass: IA
///       tags:
///         Created: TF
///         For: example
///   bucket-tag-lifecycleBucketAcl:
///     type: alicloud:oss:BucketAcl
///     name: bucket-tag-lifecycle
///     properties:
///       bucket: ${["bucket-tag-lifecycle"].bucket}
///       acl: private
/// ```
///
///
/// Set bucket policy
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
/// const bucket_policy = new alicloud.oss.Bucket("bucket-policy", {
///     bucket: `example-policy-${_default.result}`,
///     policy: `  {\\"Statement\\":
///       [{\\"Action\\":
///           [\\"oss:PutObject\\", \\"oss:GetObject\\", \\"oss:DeleteBucket\\"],
///         \\"Effect\\":\\"Allow\\",
///         \\"Resource\\":
///             [\\"acs:oss:*:*:*\\"]}],
///    \\"Version\\":\\"1\\"}
/// `,
/// });
/// const defaultBucketAcl = new alicloud.oss.BucketAcl("default", {
///     bucket: bucket_policy.bucket,
///     acl: "private",
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
/// bucket_policy = alicloud.oss.Bucket("bucket-policy",
///     bucket=f"example-policy-{default['result']}",
///     policy="""  {\"Statement\":
///       [{\"Action\":
///           [\"oss:PutObject\", \"oss:GetObject\", \"oss:DeleteBucket\"],
///         \"Effect\":\"Allow\",
///         \"Resource\":
///             [\"acs:oss:*:*:*\"]}],
///    \"Version\":\"1\"}
/// """)
/// default_bucket_acl = alicloud.oss.BucketAcl("default",
///     bucket=bucket_policy.bucket,
///     acl="private")
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
///     var bucket_policy = new AliCloud.Oss.Bucket("bucket-policy", new()
///     {
///         BucketName = $"example-policy-{@default.Result}",
///         Policy = @"  {\""Statement\"":
///       [{\""Action\"":
///           [\""oss:PutObject\"", \""oss:GetObject\"", \""oss:DeleteBucket\""],
///         \""Effect\"":\""Allow\"",
///         \""Resource\"":
///             [\""acs:oss:*:*:*\""]}],
///    \""Version\"":\""1\""}
/// ",
///     });
///
///     var defaultBucketAcl = new AliCloud.Oss.BucketAcl("default", new()
///     {
///         Bucket = bucket_policy.BucketName,
///         Acl = "private",
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
/// 		bucket_policy, err := oss.NewBucket(ctx, "bucket-policy", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("example-policy-%v", _default.Result),
/// 			Policy: pulumi.String(`  {\"Statement\":
///       [{\"Action\":
///           [\"oss:PutObject\", \"oss:GetObject\", \"oss:DeleteBucket\"],
///         \"Effect\":\"Allow\",
///         \"Resource\":
///             [\"acs:oss:*:*:*\"]}],
///    \"Version\":\"1\"}
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketAcl(ctx, "default", &oss.BucketAclArgs{
/// 			Bucket: bucket_policy.Bucket,
/// 			Acl:    pulumi.String("private"),
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
/// import com.pulumi.alicloud.oss.BucketAcl;
/// import com.pulumi.alicloud.oss.BucketAclArgs;
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
///         var bucket_policy = new Bucket("bucket-policy", BucketArgs.builder()
///             .bucket(String.format("example-policy-%s", default_.result()))
///             .policy("""
///   {\"Statement\":
///       [{\"Action\":
///           [\"oss:PutObject\", \"oss:GetObject\", \"oss:DeleteBucket\"],
///         \"Effect\":\"Allow\",
///         \"Resource\":
///             [\"acs:oss:*:*:*\"]}],
///    \"Version\":\"1\"}
///             """)
///             .build());
///
///         var defaultBucketAcl = new BucketAcl("defaultBucketAcl", BucketAclArgs.builder()
///             .bucket(bucket_policy.bucket())
///             .acl("private")
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
///   bucket-policy:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket: example-policy-${default.result}
///       policy: |2
///           {\"Statement\":
///               [{\"Action\":
///                   [\"oss:PutObject\", \"oss:GetObject\", \"oss:DeleteBucket\"],
///                 \"Effect\":\"Allow\",
///                 \"Resource\":
///                     [\"acs:oss:*:*:*\"]}],
///            \"Version\":\"1\"}
///   defaultBucketAcl:
///     type: alicloud:oss:BucketAcl
///     name: default
///     properties:
///       bucket: ${["bucket-policy"].bucket}
///       acl: private
/// ```
///
///
/// IA Bucket
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
/// const defaultBucket = new alicloud.oss.Bucket("default", {
///     bucket: `example-${_default.result}`,
///     storageClass: "IA",
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
/// default_bucket = alicloud.oss.Bucket("default",
///     bucket=f"example-{default['result']}",
///     storage_class="IA")
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
///     var defaultBucket = new AliCloud.Oss.Bucket("default", new()
///     {
///         BucketName = $"example-{@default.Result}",
///         StorageClass = "IA",
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
/// 		_, err = oss.NewBucket(ctx, "default", &oss.BucketArgs{
/// 			Bucket:       pulumi.Sprintf("example-%v", _default.Result),
/// 			StorageClass: pulumi.String("IA"),
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
///         var defaultBucket = new Bucket("defaultBucket", BucketArgs.builder()
///             .bucket(String.format("example-%s", default_.result()))
///             .storageClass("IA")
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
///   defaultBucket:
///     type: alicloud:oss:Bucket
///     name: default
///     properties:
///       bucket: example-${default.result}
///       storageClass: IA
/// ```
///
///
/// Set bucket server-side encryption rule
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
/// const bucket_sserule = new alicloud.oss.Bucket("bucket-sserule", {
///     bucket: `terraform-example-${_default.result}`,
///     serverSideEncryptionRule: {
///         sseAlgorithm: "AES256",
///     },
/// });
/// const bucket_sseruleBucketAcl = new alicloud.oss.BucketAcl("bucket-sserule", {
///     bucket: bucket_sserule.bucket,
///     acl: "private",
/// });
/// const kms = new alicloud.kms.Key("kms", {
///     description: "terraform-example",
///     pendingWindowInDays: 7,
///     status: "Enabled",
/// });
/// const bucket_kms = new alicloud.oss.Bucket("bucket-kms", {
///     bucket: `terraform-example-kms-${_default.result}`,
///     serverSideEncryptionRule: {
///         sseAlgorithm: "KMS",
///         kmsMasterKeyId: kms.id,
///     },
/// });
/// const bucket_kmsBucketAcl = new alicloud.oss.BucketAcl("bucket-kms", {
///     bucket: bucket_kms.bucket,
///     acl: "private",
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
/// bucket_sserule = alicloud.oss.Bucket("bucket-sserule",
///     bucket=f"terraform-example-{default['result']}",
///     server_side_encryption_rule={
///         "sse_algorithm": "AES256",
///     })
/// bucket_sserule_bucket_acl = alicloud.oss.BucketAcl("bucket-sserule",
///     bucket=bucket_sserule.bucket,
///     acl="private")
/// kms = alicloud.kms.Key("kms",
///     description="terraform-example",
///     pending_window_in_days=7,
///     status="Enabled")
/// bucket_kms = alicloud.oss.Bucket("bucket-kms",
///     bucket=f"terraform-example-kms-{default['result']}",
///     server_side_encryption_rule={
///         "sse_algorithm": "KMS",
///         "kms_master_key_id": kms.id,
///     })
/// bucket_kms_bucket_acl = alicloud.oss.BucketAcl("bucket-kms",
///     bucket=bucket_kms.bucket,
///     acl="private")
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
///     var bucket_sserule = new AliCloud.Oss.Bucket("bucket-sserule", new()
///     {
///         BucketName = $"terraform-example-{@default.Result}",
///         ServerSideEncryptionRule = new AliCloud.Oss.Inputs.BucketServerSideEncryptionRuleArgs
///         {
///             SseAlgorithm = "AES256",
///         },
///     });
///
///     var bucket_sseruleBucketAcl = new AliCloud.Oss.BucketAcl("bucket-sserule", new()
///     {
///         Bucket = bucket_sserule.BucketName,
///         Acl = "private",
///     });
///
///     var kms = new AliCloud.Kms.Key("kms", new()
///     {
///         Description = "terraform-example",
///         PendingWindowInDays = 7,
///         Status = "Enabled",
///     });
///
///     var bucket_kms = new AliCloud.Oss.Bucket("bucket-kms", new()
///     {
///         BucketName = $"terraform-example-kms-{@default.Result}",
///         ServerSideEncryptionRule = new AliCloud.Oss.Inputs.BucketServerSideEncryptionRuleArgs
///         {
///             SseAlgorithm = "KMS",
///             KmsMasterKeyId = kms.Id,
///         },
///     });
///
///     var bucket_kmsBucketAcl = new AliCloud.Oss.BucketAcl("bucket-kms", new()
///     {
///         Bucket = bucket_kms.BucketName,
///         Acl = "private",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/kms"
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
/// 		bucket_sserule, err := oss.NewBucket(ctx, "bucket-sserule", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 			ServerSideEncryptionRule: &oss.BucketServerSideEncryptionRuleArgs{
/// 				SseAlgorithm: pulumi.String("AES256"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketAcl(ctx, "bucket-sserule", &oss.BucketAclArgs{
/// 			Bucket: bucket_sserule.Bucket,
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		kms, err := kms.NewKey(ctx, "kms", &kms.KeyArgs{
/// 			Description:         pulumi.String("terraform-example"),
/// 			PendingWindowInDays: pulumi.Int(7),
/// 			Status:              pulumi.String("Enabled"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket_kms, err := oss.NewBucket(ctx, "bucket-kms", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("terraform-example-kms-%v", _default.Result),
/// 			ServerSideEncryptionRule: &oss.BucketServerSideEncryptionRuleArgs{
/// 				SseAlgorithm:   pulumi.String("KMS"),
/// 				KmsMasterKeyId: kms.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketAcl(ctx, "bucket-kms", &oss.BucketAclArgs{
/// 			Bucket: bucket_kms.Bucket,
/// 			Acl:    pulumi.String("private"),
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
/// import com.pulumi.alicloud.oss.inputs.BucketServerSideEncryptionRuleArgs;
/// import com.pulumi.alicloud.oss.BucketAcl;
/// import com.pulumi.alicloud.oss.BucketAclArgs;
/// import com.pulumi.alicloud.kms.Key;
/// import com.pulumi.alicloud.kms.KeyArgs;
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
///         var bucket_sserule = new Bucket("bucket-sserule", BucketArgs.builder()
///             .bucket(String.format("terraform-example-%s", default_.result()))
///             .serverSideEncryptionRule(BucketServerSideEncryptionRuleArgs.builder()
///                 .sseAlgorithm("AES256")
///                 .build())
///             .build());
///
///         var bucket_sseruleBucketAcl = new BucketAcl("bucket-sseruleBucketAcl", BucketAclArgs.builder()
///             .bucket(bucket_sserule.bucket())
///             .acl("private")
///             .build());
///
///         var kms = new Key("kms", KeyArgs.builder()
///             .description("terraform-example")
///             .pendingWindowInDays(7)
///             .status("Enabled")
///             .build());
///
///         var bucket_kms = new Bucket("bucket-kms", BucketArgs.builder()
///             .bucket(String.format("terraform-example-kms-%s", default_.result()))
///             .serverSideEncryptionRule(BucketServerSideEncryptionRuleArgs.builder()
///                 .sseAlgorithm("KMS")
///                 .kmsMasterKeyId(kms.id())
///                 .build())
///             .build());
///
///         var bucket_kmsBucketAcl = new BucketAcl("bucket-kmsBucketAcl", BucketAclArgs.builder()
///             .bucket(bucket_kms.bucket())
///             .acl("private")
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
///   bucket-sserule:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket: terraform-example-${default.result}
///       serverSideEncryptionRule:
///         sseAlgorithm: AES256
///   bucket-sseruleBucketAcl:
///     type: alicloud:oss:BucketAcl
///     name: bucket-sserule
///     properties:
///       bucket: ${["bucket-sserule"].bucket}
///       acl: private
///   kms:
///     type: alicloud:kms:Key
///     properties:
///       description: terraform-example
///       pendingWindowInDays: '7'
///       status: Enabled
///   bucket-kms:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket: terraform-example-kms-${default.result}
///       serverSideEncryptionRule:
///         sseAlgorithm: KMS
///         kmsMasterKeyId: ${kms.id}
///   bucket-kmsBucketAcl:
///     type: alicloud:oss:BucketAcl
///     name: bucket-kms
///     properties:
///       bucket: ${["bucket-kms"].bucket}
///       acl: private
/// ```
///
///
/// Set bucket tags
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
/// const bucket_tags = new alicloud.oss.Bucket("bucket-tags", {
///     bucket: `terraform-example-${_default.result}`,
///     tags: {
///         key1: "value1",
///         key2: "value2",
///     },
/// });
/// const bucket_tagsBucketAcl = new alicloud.oss.BucketAcl("bucket-tags", {
///     bucket: bucket_tags.bucket,
///     acl: "private",
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
/// bucket_tags = alicloud.oss.Bucket("bucket-tags",
///     bucket=f"terraform-example-{default['result']}",
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     })
/// bucket_tags_bucket_acl = alicloud.oss.BucketAcl("bucket-tags",
///     bucket=bucket_tags.bucket,
///     acl="private")
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
///     var bucket_tags = new AliCloud.Oss.Bucket("bucket-tags", new()
///     {
///         BucketName = $"terraform-example-{@default.Result}",
///         Tags =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
///         },
///     });
///
///     var bucket_tagsBucketAcl = new AliCloud.Oss.BucketAcl("bucket-tags", new()
///     {
///         Bucket = bucket_tags.BucketName,
///         Acl = "private",
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
/// 		bucket_tags, err := oss.NewBucket(ctx, "bucket-tags", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketAcl(ctx, "bucket-tags", &oss.BucketAclArgs{
/// 			Bucket: bucket_tags.Bucket,
/// 			Acl:    pulumi.String("private"),
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
/// import com.pulumi.alicloud.oss.BucketAcl;
/// import com.pulumi.alicloud.oss.BucketAclArgs;
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
///         var bucket_tags = new Bucket("bucket-tags", BucketArgs.builder()
///             .bucket(String.format("terraform-example-%s", default_.result()))
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2")
///             ))
///             .build());
///
///         var bucket_tagsBucketAcl = new BucketAcl("bucket-tagsBucketAcl", BucketAclArgs.builder()
///             .bucket(bucket_tags.bucket())
///             .acl("private")
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
///   bucket-tags:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket: terraform-example-${default.result}
///       tags:
///         key1: value1
///         key2: value2
///   bucket-tagsBucketAcl:
///     type: alicloud:oss:BucketAcl
///     name: bucket-tags
///     properties:
///       bucket: ${["bucket-tags"].bucket}
///       acl: private
/// ```
///
///
/// Enable bucket versioning
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
/// const bucket_versioning = new alicloud.oss.Bucket("bucket-versioning", {
///     bucket: `terraform-example-${_default.result}`,
///     versioning: {
///         status: "Enabled",
///     },
/// });
/// const defaultBucketAcl = new alicloud.oss.BucketAcl("default", {
///     bucket: bucket_versioning.bucket,
///     acl: "private",
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
/// bucket_versioning = alicloud.oss.Bucket("bucket-versioning",
///     bucket=f"terraform-example-{default['result']}",
///     versioning={
///         "status": "Enabled",
///     })
/// default_bucket_acl = alicloud.oss.BucketAcl("default",
///     bucket=bucket_versioning.bucket,
///     acl="private")
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
///     var bucket_versioning = new AliCloud.Oss.Bucket("bucket-versioning", new()
///     {
///         BucketName = $"terraform-example-{@default.Result}",
///         Versioning = new AliCloud.Oss.Inputs.BucketVersioningArgs
///         {
///             Status = "Enabled",
///         },
///     });
///
///     var defaultBucketAcl = new AliCloud.Oss.BucketAcl("default", new()
///     {
///         Bucket = bucket_versioning.BucketName,
///         Acl = "private",
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
/// 		bucket_versioning, err := oss.NewBucket(ctx, "bucket-versioning", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 			Versioning: &oss.BucketVersioningTypeArgs{
/// 				Status: pulumi.String("Enabled"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketAcl(ctx, "default", &oss.BucketAclArgs{
/// 			Bucket: bucket_versioning.Bucket,
/// 			Acl:    pulumi.String("private"),
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
/// import com.pulumi.alicloud.oss.inputs.BucketVersioningArgs;
/// import com.pulumi.alicloud.oss.BucketAcl;
/// import com.pulumi.alicloud.oss.BucketAclArgs;
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
///         var bucket_versioning = new Bucket("bucket-versioning", BucketArgs.builder()
///             .bucket(String.format("terraform-example-%s", default_.result()))
///             .versioning(BucketVersioningArgs.builder()
///                 .status("Enabled")
///                 .build())
///             .build());
///
///         var defaultBucketAcl = new BucketAcl("defaultBucketAcl", BucketAclArgs.builder()
///             .bucket(bucket_versioning.bucket())
///             .acl("private")
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
///   bucket-versioning:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket: terraform-example-${default.result}
///       versioning:
///         status: Enabled
///   defaultBucketAcl:
///     type: alicloud:oss:BucketAcl
///     name: default
///     properties:
///       bucket: ${["bucket-versioning"].bucket}
///       acl: private
/// ```
///
///
/// Set bucket redundancy type
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
/// const bucket_redundancytype = new alicloud.oss.Bucket("bucket-redundancytype", {
///     bucket: `terraform-example-${_default.result}`,
///     redundancyType: "ZRS",
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
/// bucket_redundancytype = alicloud.oss.Bucket("bucket-redundancytype",
///     bucket=f"terraform-example-{default['result']}",
///     redundancy_type="ZRS")
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
///     var bucket_redundancytype = new AliCloud.Oss.Bucket("bucket-redundancytype", new()
///     {
///         BucketName = $"terraform-example-{@default.Result}",
///         RedundancyType = "ZRS",
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
/// 		_, err = oss.NewBucket(ctx, "bucket-redundancytype", &oss.BucketArgs{
/// 			Bucket:         pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 			RedundancyType: pulumi.String("ZRS"),
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
///         var bucket_redundancytype = new Bucket("bucket-redundancytype", BucketArgs.builder()
///             .bucket(String.format("terraform-example-%s", default_.result()))
///             .redundancyType("ZRS")
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
///   bucket-redundancytype:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket: terraform-example-${default.result}
///       redundancyType: ZRS
/// ```
///
///
/// Set bucket accelerate configuration
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
/// const bucket_accelerate = new alicloud.oss.Bucket("bucket-accelerate", {
///     bucket: `terraform-example-${_default.result}`,
///     transferAcceleration: {
///         enabled: false,
///     },
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
/// bucket_accelerate = alicloud.oss.Bucket("bucket-accelerate",
///     bucket=f"terraform-example-{default['result']}",
///     transfer_acceleration={
///         "enabled": False,
///     })
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
///     var bucket_accelerate = new AliCloud.Oss.Bucket("bucket-accelerate", new()
///     {
///         BucketName = $"terraform-example-{@default.Result}",
///         TransferAcceleration = new AliCloud.Oss.Inputs.BucketTransferAccelerationArgs
///         {
///             Enabled = false,
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
/// 		_, err = oss.NewBucket(ctx, "bucket-accelerate", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 			TransferAcceleration: &oss.BucketTransferAccelerationTypeArgs{
/// 				Enabled: pulumi.Bool(false),
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
/// import com.pulumi.alicloud.oss.inputs.BucketTransferAccelerationArgs;
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
///         var bucket_accelerate = new Bucket("bucket-accelerate", BucketArgs.builder()
///             .bucket(String.format("terraform-example-%s", default_.result()))
///             .transferAcceleration(BucketTransferAccelerationArgs.builder()
///                 .enabled(false)
///                 .build())
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
///   bucket-accelerate:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket: terraform-example-${default.result}
///       transferAcceleration:
///         enabled: false
/// ```
///
///
/// Set bucket resource group id
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const defaultInteger = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const _default = alicloud.resourcemanager.getResourceGroups({
///     nameRegex: "default",
/// });
/// const bucket_accelerate = new alicloud.oss.Bucket("bucket-accelerate", {
///     bucket: `terraform-example-${defaultInteger.result}`,
///     resourceGroupId: _default.then(_default => _default.groups?.[0]?.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default_integer = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// default = alicloud.resourcemanager.get_resource_groups(name_regex="default")
/// bucket_accelerate = alicloud.oss.Bucket("bucket-accelerate",
///     bucket=f"terraform-example-{default_integer['result']}",
///     resource_group_id=default.groups[0].id)
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
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         NameRegex = "default",
///     });
///
///     var bucket_accelerate = new AliCloud.Oss.Bucket("bucket-accelerate", new()
///     {
///         BucketName = $"terraform-example-{defaultInteger.Result}",
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id)),
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// 			NameRegex: pulumi.StringRef("default"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucket(ctx, "bucket-accelerate", &oss.BucketArgs{
/// 			Bucket:          pulumi.Sprintf("terraform-example-%v", defaultInteger.Result),
/// 			ResourceGroupId: pulumi.String(_default.Groups[0].Id),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
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
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .nameRegex("default")
///             .build());
///
///         var bucket_accelerate = new Bucket("bucket-accelerate", BucketArgs.builder()
///             .bucket(String.format("terraform-example-%s", defaultInteger.result()))
///             .resourceGroupId(default_.groups()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       max: 99999
///       min: 10000
///   bucket-accelerate:
///     type: alicloud:oss:Bucket
///     properties:
///       bucket: terraform-example-${defaultInteger.result}
///       resourceGroupId: ${default.groups[0].id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         nameRegex: default
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// OSS bucket can be imported using the bucket name, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oss/bucket:Bucket bucket bucket-12345678
/// ```
class Bucket extends pulumi.CustomResource {
  /// A access monitor status of a bucket. See `access_monitor` below.
  late final pulumi.Output<BucketAccessMonitor> accessMonitor;
  /// The [canned ACL](https://www.alibabacloud.com/help/doc-detail/31898.htm) to apply. Can be "private", "public-read" and "public-read-write". This property has been deprecated since 1.220.0, please use the resource `alicloud.oss.BucketAcl` instead.
  late final pulumi.Output<String> acl;
  late final pulumi.Output<String> bucket;
  /// A rule of  [Cross-Origin Resource Sharing](https://www.alibabacloud.com/help/doc-detail/31903.htm). The items of core rule are no more than 10 for every OSS bucket. See `cors_rule` below.
  late final pulumi.Output<List<BucketCorsRule>?> corsRules;
  /// The creation date of the bucket.
  late final pulumi.Output<String> creationDate;
  /// The extranet access endpoint of the bucket.
  late final pulumi.Output<String> extranetEndpoint;
  /// A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable. Defaults to "false".
  late final pulumi.Output<bool?> forceDestroy;
  /// The intranet access endpoint of the bucket.
  late final pulumi.Output<String> intranetEndpoint;
  /// A boolean that indicates lifecycle rules allow prefix overlap.
  late final pulumi.Output<bool?> lifecycleRuleAllowSameActionOverlap;
  /// A configuration of [object lifecycle management](https://www.alibabacloud.com/help/doc-detail/31904.htm). See `lifecycle_rule` below.
  late final pulumi.Output<List<BucketLifecycleRule>?> lifecycleRules;
  /// The location of the bucket.
  late final pulumi.Output<String> location;
  /// A Settings of [bucket logging](https://www.alibabacloud.com/help/doc-detail/31900.htm). See `logging` below.
  late final pulumi.Output<BucketLogging?> logging;
  /// The flag of using logging enable container. Defaults true.
  late final pulumi.Output<bool?> loggingIsenable;
  /// The bucket owner.
  late final pulumi.Output<String> owner;
  /// Json format text of bucket policy [bucket policy management](https://www.alibabacloud.com/help/doc-detail/100680.htm). This property has been deprecated since 1.220.0, please use the resource `alicloud.oss.BucketPolicy` instead.
  late final pulumi.Output<String?> policy;
  /// The [redundancy type](https://www.alibabacloud.com/help/doc-detail/90589.htm) to enable. Can be "LRS", and "ZRS". Defaults to "LRS".
  late final pulumi.Output<String?> redundancyType;
  /// The configuration of [referer](https://www.alibabacloud.com/help/doc-detail/31901.htm). This property has been deprecated since 1.220.0, please use the resource `alicloud.oss.BucketReferer` instead. See `referer_config` below.
  late final pulumi.Output<BucketRefererConfig?> refererConfig;
  /// The ID of the resource group to which the bucket belongs.
  late final pulumi.Output<String> resourceGroupId;
  /// A configuration of server-side encryption. See `server_side_encryption_rule` below.
  late final pulumi.Output<BucketServerSideEncryptionRule?> serverSideEncryptionRule;
  /// The [storage class](https://www.alibabacloud.com/help/doc-detail/51374.htm) to apply. Can be "Standard", "IA", "Archive", "ColdArchive" and "DeepColdArchive". Defaults to "Standard". "ColdArchive" is available since 1.203.0. "DeepColdArchive" is available since 1.209.0.
  late final pulumi.Output<String?> storageClass;
  /// A mapping of tags to assign to the bucket. The items are no more than 10 for a bucket.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A transfer acceleration status of a bucket. See `transfer_acceleration` below.
  late final pulumi.Output<BucketTransferAcceleration?> transferAcceleration;
  /// A state of versioning. See `versioning` below.
  late final pulumi.Output<BucketVersioning?> versioning;
  /// A website configuration. See `website` below.
  late final pulumi.Output<BucketWebsite?> website;

  /// Creates a new [Bucket].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Bucket]. {@macro pulumi_oss_bucket_bucket_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Bucket(
    String name, {
    BucketArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucket:Bucket',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessMonitor = registerOutput<BucketAccessMonitor>('accessMonitor');
    this.acl = registerOutput<String>('acl');
    this.bucket = registerOutput<String>('bucket');
    this.corsRules = registerOutput<List<BucketCorsRule>?>('corsRules');
    this.creationDate = registerOutput<String>('creationDate');
    this.extranetEndpoint = registerOutput<String>('extranetEndpoint');
    this.forceDestroy = registerOutput<bool?>('forceDestroy');
    this.intranetEndpoint = registerOutput<String>('intranetEndpoint');
    this.lifecycleRuleAllowSameActionOverlap = registerOutput<bool?>('lifecycleRuleAllowSameActionOverlap');
    this.lifecycleRules = registerOutput<List<BucketLifecycleRule>?>('lifecycleRules');
    this.location = registerOutput<String>('location');
    this.logging = registerOutput<BucketLogging?>('logging');
    this.loggingIsenable = registerOutput<bool?>('loggingIsenable');
    this.owner = registerOutput<String>('owner');
    this.policy = registerOutput<String?>('policy');
    this.redundancyType = registerOutput<String?>('redundancyType');
    this.refererConfig = registerOutput<BucketRefererConfig?>('refererConfig');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.serverSideEncryptionRule = registerOutput<BucketServerSideEncryptionRule?>('serverSideEncryptionRule');
    this.storageClass = registerOutput<String?>('storageClass');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.transferAcceleration = registerOutput<BucketTransferAcceleration?>('transferAcceleration');
    this.versioning = registerOutput<BucketVersioning?>('versioning');
    this.website = registerOutput<BucketWebsite?>('website');
  }
}
