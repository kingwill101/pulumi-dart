import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_lifecycle_configuration_v2_args.dart';
import 'bucket_lifecycle_configuration_v2_rule.dart';
import 'bucket_lifecycle_configuration_v2_state.dart';
import 'bucket_lifecycle_configuration_v2_timeouts.dart';

/// Provides an independent configuration resource for S3 bucket [lifecycle configuration](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html).
///
/// An S3 Lifecycle configuration consists of one or more Lifecycle rules. Each rule consists of the following:
///
/// * Rule metadata (`id` and `status`)
/// * Filter identifying objects to which the rule applies
/// * One or more transition or expiration actions
///
/// For more information see the Amazon S3 User Guide on [`Lifecycle Configuration Elements`](https://docs.aws.amazon.com/AmazonS3/latest/userguide/intro-lifecycle-rules.html).
///
/// &gt; S3 Buckets only support a single lifecycle configuration. Declaring multiple `aws.s3.BucketLifecycleConfiguration` resources to the same S3 Bucket will cause a perpetual difference in configuration.
///
/// &gt; Lifecycle configurations may take some time to fully propagate to all AWS S3 systems.
/// Running Pulumi operations shortly after creating a lifecycle configuration may result in changes that affect configuration idempotence.
/// See the Amazon S3 User Guide on [setting lifecycle configuration on a bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/how-to-set-lifecycle-configuration-intro.html).
///
/// ## Example Usage
///
/// ### With neither a filter nor prefix specified
///
/// When you don't specify a filter or prefix, the lifecycle rule applies to all objects in the bucket. This has the same effect as setting an empty `filter` element.
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.BucketLifecycleConfiguration("example", {
///     rules: [{
///         id: "rule-1",
///         status: "Enabled",
///     }],
///     bucket: bucket.bucket,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketLifecycleConfiguration("example",
///     rules=[{
///         "id": "rule-1",
///         "status": "Enabled",
///     }],
///     bucket=bucket["bucket"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.BucketLifecycleConfiguration("example", new()
///     {
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Id = "rule-1",
///                 Status = "Enabled",
///             },
///         },
///         Bucket = bucket.Bucket,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewBucketLifecycleConfiguration(ctx, "example", &s3.BucketLifecycleConfigurationArgs{
/// 			Rules: s3.BucketLifecycleConfigurationRuleArray{
/// 				&s3.BucketLifecycleConfigurationRuleArgs{
/// 					Id:     pulumi.String("rule-1"),
/// 					Status: pulumi.String("Enabled"),
/// 				},
/// 			},
/// 			Bucket: pulumi.Any(bucket.Bucket),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_s3_bucketlifecycleconfiguration" "example" {
///   rules {
///     id     = "rule-1"
///     status = "Enabled"
///   }
///   # ... other transition/expiration actions ...
///   bucket = bucket.bucket
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.BucketLifecycleConfiguration;
/// import com.pulumi.aws.s3.BucketLifecycleConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new BucketLifecycleConfiguration("example", BucketLifecycleConfigurationArgs.builder()
///             .rules(BucketLifecycleConfigurationRuleArgs.builder()
///                 .id("rule-1")
///                 .status("Enabled")
///                 .build())
///             .bucket(bucket.bucket())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:BucketLifecycleConfiguration
///     properties:
///       rules:
///         - id: rule-1
///           status: Enabled
///       bucket: ${bucket.bucket}
/// ```
///
///
/// ### Specifying an empty filter
///
/// The Lifecycle rule applies to all objects in the bucket.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.BucketLifecycleConfiguration("example", {
///     rules: [{
///         filter: {},
///         id: "rule-1",
///         status: "Enabled",
///     }],
///     bucket: bucket.bucket,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketLifecycleConfiguration("example",
///     rules=[{
///         "filter": {},
///         "id": "rule-1",
///         "status": "Enabled",
///     }],
///     bucket=bucket["bucket"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.BucketLifecycleConfiguration("example", new()
///     {
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Filter = null,
///                 Id = "rule-1",
///                 Status = "Enabled",
///             },
///         },
///         Bucket = bucket.Bucket,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewBucketLifecycleConfiguration(ctx, "example", &s3.BucketLifecycleConfigurationArgs{
/// 			Rules: s3.BucketLifecycleConfigurationRuleArray{
/// 				&s3.BucketLifecycleConfigurationRuleArgs{
/// 					Filter: &s3.BucketLifecycleConfigurationRuleFilterArgs{},
/// 					Id:     pulumi.String("rule-1"),
/// 					Status: pulumi.String("Enabled"),
/// 				},
/// 			},
/// 			Bucket: pulumi.Any(bucket.Bucket),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_s3_bucketlifecycleconfiguration" "example" {
///   rules {
///     filter = {}
///     id     = "rule-1"
///     status = "Enabled"
///   }
///   # ... other transition/expiration actions ...
///   bucket = bucket.bucket
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.BucketLifecycleConfiguration;
/// import com.pulumi.aws.s3.BucketLifecycleConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleFilterArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new BucketLifecycleConfiguration("example", BucketLifecycleConfigurationArgs.builder()
///             .rules(BucketLifecycleConfigurationRuleArgs.builder()
///                 .filter(BucketLifecycleConfigurationRuleFilterArgs.builder()
///                     .build())
///                 .id("rule-1")
///                 .status("Enabled")
///                 .build())
///             .bucket(bucket.bucket())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:BucketLifecycleConfiguration
///     properties:
///       rules:
///         - filter: {}
///           id: rule-1
///           status: Enabled
///       bucket: ${bucket.bucket}
/// ```
///
///
/// ### Specifying a filter using key prefixes
///
/// The Lifecycle rule applies to a subset of objects based on the key name prefix (`logs/`).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.BucketLifecycleConfiguration("example", {
///     rules: [{
///         filter: {
///             prefix: "logs/",
///         },
///         id: "rule-1",
///         status: "Enabled",
///     }],
///     bucket: bucket.bucket,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketLifecycleConfiguration("example",
///     rules=[{
///         "filter": {
///             "prefix": "logs/",
///         },
///         "id": "rule-1",
///         "status": "Enabled",
///     }],
///     bucket=bucket["bucket"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.BucketLifecycleConfiguration("example", new()
///     {
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Filter = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleFilterArgs
///                 {
///                     Prefix = "logs/",
///                 },
///                 Id = "rule-1",
///                 Status = "Enabled",
///             },
///         },
///         Bucket = bucket.Bucket,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewBucketLifecycleConfiguration(ctx, "example", &s3.BucketLifecycleConfigurationArgs{
/// 			Rules: s3.BucketLifecycleConfigurationRuleArray{
/// 				&s3.BucketLifecycleConfigurationRuleArgs{
/// 					Filter: &s3.BucketLifecycleConfigurationRuleFilterArgs{
/// 						Prefix: pulumi.String("logs/"),
/// 					},
/// 					Id:     pulumi.String("rule-1"),
/// 					Status: pulumi.String("Enabled"),
/// 				},
/// 			},
/// 			Bucket: pulumi.Any(bucket.Bucket),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_s3_bucketlifecycleconfiguration" "example" {
///   rules {
///     filter = {
///       prefix = "logs/"
///     }
///     id     = "rule-1"
///     status = "Enabled"
///   }
///   # ... other transition/expiration actions ...
///   bucket = bucket.bucket
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.BucketLifecycleConfiguration;
/// import com.pulumi.aws.s3.BucketLifecycleConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleFilterArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new BucketLifecycleConfiguration("example", BucketLifecycleConfigurationArgs.builder()
///             .rules(BucketLifecycleConfigurationRuleArgs.builder()
///                 .filter(BucketLifecycleConfigurationRuleFilterArgs.builder()
///                     .prefix("logs/")
///                     .build())
///                 .id("rule-1")
///                 .status("Enabled")
///                 .build())
///             .bucket(bucket.bucket())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:BucketLifecycleConfiguration
///     properties:
///       rules:
///         - filter:
///             prefix: logs/
///           id: rule-1
///           status: Enabled
///       bucket: ${bucket.bucket}
/// ```
///
///
/// If you want to apply a Lifecycle action to a subset of objects based on different key name prefixes, specify separate rules.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.BucketLifecycleConfiguration("example", {
///     rules: [
///         {
///             filter: {
///                 prefix: "logs/",
///             },
///             id: "rule-1",
///             status: "Enabled",
///         },
///         {
///             filter: {
///                 prefix: "tmp/",
///             },
///             id: "rule-2",
///             status: "Enabled",
///         },
///     ],
///     bucket: bucket.bucket,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketLifecycleConfiguration("example",
///     rules=[
///         {
///             "filter": {
///                 "prefix": "logs/",
///             },
///             "id": "rule-1",
///             "status": "Enabled",
///         },
///         {
///             "filter": {
///                 "prefix": "tmp/",
///             },
///             "id": "rule-2",
///             "status": "Enabled",
///         },
///     ],
///     bucket=bucket["bucket"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.BucketLifecycleConfiguration("example", new()
///     {
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Filter = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleFilterArgs
///                 {
///                     Prefix = "logs/",
///                 },
///                 Id = "rule-1",
///                 Status = "Enabled",
///             },
///             new Aws.S3.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Filter = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleFilterArgs
///                 {
///                     Prefix = "tmp/",
///                 },
///                 Id = "rule-2",
///                 Status = "Enabled",
///             },
///         },
///         Bucket = bucket.Bucket,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewBucketLifecycleConfiguration(ctx, "example", &s3.BucketLifecycleConfigurationArgs{
/// 			Rules: s3.BucketLifecycleConfigurationRuleArray{
/// 				&s3.BucketLifecycleConfigurationRuleArgs{
/// 					Filter: &s3.BucketLifecycleConfigurationRuleFilterArgs{
/// 						Prefix: pulumi.String("logs/"),
/// 					},
/// 					Id:     pulumi.String("rule-1"),
/// 					Status: pulumi.String("Enabled"),
/// 				},
/// 				&s3.BucketLifecycleConfigurationRuleArgs{
/// 					Filter: &s3.BucketLifecycleConfigurationRuleFilterArgs{
/// 						Prefix: pulumi.String("tmp/"),
/// 					},
/// 					Id:     pulumi.String("rule-2"),
/// 					Status: pulumi.String("Enabled"),
/// 				},
/// 			},
/// 			Bucket: pulumi.Any(bucket.Bucket),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_s3_bucketlifecycleconfiguration" "example" {
///   rules {
///     filter = {
///       prefix = "logs/"
///     }
///     id     = "rule-1"
///     status = "Enabled"
///   }
///   rules {
///     filter = {
///       prefix = "tmp/"
///     }
///     id     = "rule-2"
///     status = "Enabled"
///   }
///   # ... other transition/expiration actions ...
///   # ... other transition/expiration actions ...
///   bucket = bucket.bucket
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.BucketLifecycleConfiguration;
/// import com.pulumi.aws.s3.BucketLifecycleConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleFilterArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new BucketLifecycleConfiguration("example", BucketLifecycleConfigurationArgs.builder()
///             .rules(
///                 BucketLifecycleConfigurationRuleArgs.builder()
///                     .filter(BucketLifecycleConfigurationRuleFilterArgs.builder()
///                         .prefix("logs/")
///                         .build())
///                     .id("rule-1")
///                     .status("Enabled")
///                     .build(),
///                 BucketLifecycleConfigurationRuleArgs.builder()
///                     .filter(BucketLifecycleConfigurationRuleFilterArgs.builder()
///                         .prefix("tmp/")
///                         .build())
///                     .id("rule-2")
///                     .status("Enabled")
///                     .build())
///             .bucket(bucket.bucket())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:BucketLifecycleConfiguration
///     properties:
///       rules:
///         - filter:
///             prefix: logs/
///           id: rule-1
///           status: Enabled
///         - filter:
///             prefix: tmp/
///           id: rule-2
///           status: Enabled
///       bucket: ${bucket.bucket}
/// ```
///
///
/// ### Specifying a filter based on an object tag
///
/// The Lifecycle rule specifies a filter based on a tag key and value. The rule then applies only to a subset of objects with the specific tag.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.BucketLifecycleConfiguration("example", {
///     rules: [{
///         filter: {
///             tag: {
///                 key: "Name",
///                 value: "Staging",
///             },
///         },
///         id: "rule-1",
///         status: "Enabled",
///     }],
///     bucket: bucket.bucket,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketLifecycleConfiguration("example",
///     rules=[{
///         "filter": {
///             "tag": {
///                 "key": "Name",
///                 "value": "Staging",
///             },
///         },
///         "id": "rule-1",
///         "status": "Enabled",
///     }],
///     bucket=bucket["bucket"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.BucketLifecycleConfiguration("example", new()
///     {
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Filter = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleFilterArgs
///                 {
///                     Tag = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleFilterTagArgs
///                     {
///                         Key = "Name",
///                         Value = "Staging",
///                     },
///                 },
///                 Id = "rule-1",
///                 Status = "Enabled",
///             },
///         },
///         Bucket = bucket.Bucket,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewBucketLifecycleConfiguration(ctx, "example", &s3.BucketLifecycleConfigurationArgs{
/// 			Rules: s3.BucketLifecycleConfigurationRuleArray{
/// 				&s3.BucketLifecycleConfigurationRuleArgs{
/// 					Filter: &s3.BucketLifecycleConfigurationRuleFilterArgs{
/// 						Tag: &s3.BucketLifecycleConfigurationRuleFilterTagArgs{
/// 							Key:   pulumi.String("Name"),
/// 							Value: pulumi.String("Staging"),
/// 						},
/// 					},
/// 					Id:     pulumi.String("rule-1"),
/// 					Status: pulumi.String("Enabled"),
/// 				},
/// 			},
/// 			Bucket: pulumi.Any(bucket.Bucket),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_s3_bucketlifecycleconfiguration" "example" {
///   rules {
///     filter = {
///       tag = {
///         key   = "Name"
///         value = "Staging"
///       }
///     }
///     id     = "rule-1"
///     status = "Enabled"
///   }
///   # ... other transition/expiration actions ...
///   bucket = bucket.bucket
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.BucketLifecycleConfiguration;
/// import com.pulumi.aws.s3.BucketLifecycleConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleFilterArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleFilterTagArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new BucketLifecycleConfiguration("example", BucketLifecycleConfigurationArgs.builder()
///             .rules(BucketLifecycleConfigurationRuleArgs.builder()
///                 .filter(BucketLifecycleConfigurationRuleFilterArgs.builder()
///                     .tag(BucketLifecycleConfigurationRuleFilterTagArgs.builder()
///                         .key("Name")
///                         .value("Staging")
///                         .build())
///                     .build())
///                 .id("rule-1")
///                 .status("Enabled")
///                 .build())
///             .bucket(bucket.bucket())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:BucketLifecycleConfiguration
///     properties:
///       rules:
///         - filter:
///             tag:
///               key: Name
///               value: Staging
///           id: rule-1
///           status: Enabled
///       bucket: ${bucket.bucket}
/// ```
///
///
/// ### Specifying a filter based on multiple tags
///
/// The Lifecycle rule directs Amazon S3 to perform lifecycle actions on objects with two tags (with the specific tag keys and values). Notice `tags` is wrapped in the `and` configuration block.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.BucketLifecycleConfiguration("example", {
///     rules: [{
///         filter: {
///             and: {
///                 tags: {
///                     Key1: "Value1",
///                     Key2: "Value2",
///                 },
///             },
///         },
///         id: "rule-1",
///         status: "Enabled",
///     }],
///     bucket: bucket.bucket,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketLifecycleConfiguration("example",
///     rules=[{
///         "filter": {
///             "and_": {
///                 "tags": {
///                     "Key1": "Value1",
///                     "Key2": "Value2",
///                 },
///             },
///         },
///         "id": "rule-1",
///         "status": "Enabled",
///     }],
///     bucket=bucket["bucket"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.BucketLifecycleConfiguration("example", new()
///     {
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Filter = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleFilterArgs
///                 {
///                     And = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleFilterAndArgs
///                     {
///                         Tags =
///                         {
///                             { "Key1", "Value1" },
///                             { "Key2", "Value2" },
///                         },
///                     },
///                 },
///                 Id = "rule-1",
///                 Status = "Enabled",
///             },
///         },
///         Bucket = bucket.Bucket,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewBucketLifecycleConfiguration(ctx, "example", &s3.BucketLifecycleConfigurationArgs{
/// 			Rules: s3.BucketLifecycleConfigurationRuleArray{
/// 				&s3.BucketLifecycleConfigurationRuleArgs{
/// 					Filter: &s3.BucketLifecycleConfigurationRuleFilterArgs{
/// 						And: &s3.BucketLifecycleConfigurationRuleFilterAndArgs{
/// 							Tags: pulumi.StringMap{
/// 								"Key1": pulumi.String("Value1"),
/// 								"Key2": pulumi.String("Value2"),
/// 							},
/// 						},
/// 					},
/// 					Id:     pulumi.String("rule-1"),
/// 					Status: pulumi.String("Enabled"),
/// 				},
/// 			},
/// 			Bucket: pulumi.Any(bucket.Bucket),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_s3_bucketlifecycleconfiguration" "example" {
///   rules {
///     filter = {
///       and = {
///         tags = {
///           "Key1" = "Value1"
///           "Key2" = "Value2"
///         }
///       }
///     }
///     id     = "rule-1"
///     status = "Enabled"
///   }
///   # ... other transition/expiration actions ...
///   bucket = bucket.bucket
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.BucketLifecycleConfiguration;
/// import com.pulumi.aws.s3.BucketLifecycleConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleFilterArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleFilterAndArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new BucketLifecycleConfiguration("example", BucketLifecycleConfigurationArgs.builder()
///             .rules(BucketLifecycleConfigurationRuleArgs.builder()
///                 .filter(BucketLifecycleConfigurationRuleFilterArgs.builder()
///                     .and(BucketLifecycleConfigurationRuleFilterAndArgs.builder()
///                         .tags(Map.ofEntries(
///                             Map.entry("Key1", "Value1"),
///                             Map.entry("Key2", "Value2")
///                         ))
///                         .build())
///                     .build())
///                 .id("rule-1")
///                 .status("Enabled")
///                 .build())
///             .bucket(bucket.bucket())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:BucketLifecycleConfiguration
///     properties:
///       rules:
///         - filter:
///             and:
///               tags:
///                 Key1: Value1
///                 Key2: Value2
///           id: rule-1
///           status: Enabled
///       bucket: ${bucket.bucket}
/// ```
///
///
/// ### Specifying a filter based on both prefix and one or more tags
///
/// The Lifecycle rule directs Amazon S3 to perform lifecycle actions on objects with the specified prefix and two tags (with the specific tag keys and values). Notice both `prefix` and `tags` are wrapped in the `and` configuration block.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.BucketLifecycleConfiguration("example", {
///     rules: [{
///         filter: {
///             and: {
///                 prefix: "logs/",
///                 tags: {
///                     Key1: "Value1",
///                     Key2: "Value2",
///                 },
///             },
///         },
///         id: "rule-1",
///         status: "Enabled",
///     }],
///     bucket: bucket.bucket,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketLifecycleConfiguration("example",
///     rules=[{
///         "filter": {
///             "and_": {
///                 "prefix": "logs/",
///                 "tags": {
///                     "Key1": "Value1",
///                     "Key2": "Value2",
///                 },
///             },
///         },
///         "id": "rule-1",
///         "status": "Enabled",
///     }],
///     bucket=bucket["bucket"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.BucketLifecycleConfiguration("example", new()
///     {
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Filter = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleFilterArgs
///                 {
///                     And = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleFilterAndArgs
///                     {
///                         Prefix = "logs/",
///                         Tags =
///                         {
///                             { "Key1", "Value1" },
///                             { "Key2", "Value2" },
///                         },
///                     },
///                 },
///                 Id = "rule-1",
///                 Status = "Enabled",
///             },
///         },
///         Bucket = bucket.Bucket,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewBucketLifecycleConfiguration(ctx, "example", &s3.BucketLifecycleConfigurationArgs{
/// 			Rules: s3.BucketLifecycleConfigurationRuleArray{
/// 				&s3.BucketLifecycleConfigurationRuleArgs{
/// 					Filter: &s3.BucketLifecycleConfigurationRuleFilterArgs{
/// 						And: &s3.BucketLifecycleConfigurationRuleFilterAndArgs{
/// 							Prefix: pulumi.String("logs/"),
/// 							Tags: pulumi.StringMap{
/// 								"Key1": pulumi.String("Value1"),
/// 								"Key2": pulumi.String("Value2"),
/// 							},
/// 						},
/// 					},
/// 					Id:     pulumi.String("rule-1"),
/// 					Status: pulumi.String("Enabled"),
/// 				},
/// 			},
/// 			Bucket: pulumi.Any(bucket.Bucket),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_s3_bucketlifecycleconfiguration" "example" {
///   rules {
///     filter = {
///       and = {
///         prefix = "logs/"
///         tags = {
///           "Key1" = "Value1"
///           "Key2" = "Value2"
///         }
///       }
///     }
///     id     = "rule-1"
///     status = "Enabled"
///   }
///   # ... other transition/expiration actions ...
///   bucket = bucket.bucket
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.BucketLifecycleConfiguration;
/// import com.pulumi.aws.s3.BucketLifecycleConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleFilterArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleFilterAndArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new BucketLifecycleConfiguration("example", BucketLifecycleConfigurationArgs.builder()
///             .rules(BucketLifecycleConfigurationRuleArgs.builder()
///                 .filter(BucketLifecycleConfigurationRuleFilterArgs.builder()
///                     .and(BucketLifecycleConfigurationRuleFilterAndArgs.builder()
///                         .prefix("logs/")
///                         .tags(Map.ofEntries(
///                             Map.entry("Key1", "Value1"),
///                             Map.entry("Key2", "Value2")
///                         ))
///                         .build())
///                     .build())
///                 .id("rule-1")
///                 .status("Enabled")
///                 .build())
///             .bucket(bucket.bucket())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:BucketLifecycleConfiguration
///     properties:
///       rules:
///         - filter:
///             and:
///               prefix: logs/
///               tags:
///                 Key1: Value1
///                 Key2: Value2
///           id: rule-1
///           status: Enabled
///       bucket: ${bucket.bucket}
/// ```
///
///
/// ### Specifying a filter based on object size
///
/// Object size values are in bytes. Maximum filter size is 5TB. Amazon S3 applies a default behavior to your Lifecycle configuration that prevents objects smaller than 128 KB from being transitioned to any storage class. You can allow smaller objects to transition by adding a minimum size (`objectSizeGreaterThan`) or a maximum size (`objectSizeLessThan`) filter that specifies a smaller size to the configuration. This example allows any object smaller than 128 KB to transition to the S3 Glacier Instant Retrieval storage class:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.BucketLifecycleConfiguration("example", {
///     rules: [{
///         filter: {
///             objectSizeGreaterThan: 1,
///         },
///         transitions: [{
///             days: 365,
///             storageClass: "GLACIER_IR",
///         }],
///         id: "Allow small object transitions",
///         status: "Enabled",
///     }],
///     bucket: bucket.bucket,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketLifecycleConfiguration("example",
///     rules=[{
///         "filter": {
///             "object_size_greater_than": 1,
///         },
///         "transitions": [{
///             "days": 365,
///             "storage_class": "GLACIER_IR",
///         }],
///         "id": "Allow small object transitions",
///         "status": "Enabled",
///     }],
///     bucket=bucket["bucket"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.BucketLifecycleConfiguration("example", new()
///     {
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Filter = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleFilterArgs
///                 {
///                     ObjectSizeGreaterThan = 1,
///                 },
///                 Transitions = new[]
///                 {
///                     new Aws.S3.Inputs.BucketLifecycleConfigurationRuleTransitionArgs
///                     {
///                         Days = 365,
///                         StorageClass = "GLACIER_IR",
///                     },
///                 },
///                 Id = "Allow small object transitions",
///                 Status = "Enabled",
///             },
///         },
///         Bucket = bucket.Bucket,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewBucketLifecycleConfiguration(ctx, "example", &s3.BucketLifecycleConfigurationArgs{
/// 			Rules: s3.BucketLifecycleConfigurationRuleArray{
/// 				&s3.BucketLifecycleConfigurationRuleArgs{
/// 					Filter: &s3.BucketLifecycleConfigurationRuleFilterArgs{
/// 						ObjectSizeGreaterThan: pulumi.Int(1),
/// 					},
/// 					Transitions: s3.BucketLifecycleConfigurationRuleTransitionArray{
/// 						&s3.BucketLifecycleConfigurationRuleTransitionArgs{
/// 							Days:         pulumi.Int(365),
/// 							StorageClass: pulumi.String("GLACIER_IR"),
/// 						},
/// 					},
/// 					Id:     pulumi.String("Allow small object transitions"),
/// 					Status: pulumi.String("Enabled"),
/// 				},
/// 			},
/// 			Bucket: pulumi.Any(bucket.Bucket),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_s3_bucketlifecycleconfiguration" "example" {
///   rules {
///     filter = {
///       object_size_greater_than = 1
///     }
///     transitions {
///       days          = 365
///       storage_class = "GLACIER_IR"
///     }
///     id     = "Allow small object transitions"
///     status = "Enabled"
///   }
///   bucket = bucket.bucket
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.BucketLifecycleConfiguration;
/// import com.pulumi.aws.s3.BucketLifecycleConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleFilterArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleTransitionArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new BucketLifecycleConfiguration("example", BucketLifecycleConfigurationArgs.builder()
///             .rules(BucketLifecycleConfigurationRuleArgs.builder()
///                 .filter(BucketLifecycleConfigurationRuleFilterArgs.builder()
///                     .objectSizeGreaterThan(1)
///                     .build())
///                 .transitions(BucketLifecycleConfigurationRuleTransitionArgs.builder()
///                     .days(365)
///                     .storageClass("GLACIER_IR")
///                     .build())
///                 .id("Allow small object transitions")
///                 .status("Enabled")
///                 .build())
///             .bucket(bucket.bucket())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:BucketLifecycleConfiguration
///     properties:
///       rules:
///         - filter:
///             objectSizeGreaterThan: 1
///           transitions:
///             - days: 365
///               storageClass: GLACIER_IR
///           id: Allow small object transitions
///           status: Enabled
///       bucket: ${bucket.bucket}
/// ```
///
///
/// ### Specifying a filter based on object size range and prefix
///
/// The `objectSizeGreaterThan` must be less than the `objectSizeLessThan`. Notice both the object size range and prefix are wrapped in the `and` configuration block.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.BucketLifecycleConfiguration("example", {
///     rules: [{
///         filter: {
///             and: {
///                 prefix: "logs/",
///                 objectSizeGreaterThan: 500,
///                 objectSizeLessThan: 64000,
///             },
///         },
///         id: "rule-1",
///         status: "Enabled",
///     }],
///     bucket: bucket.bucket,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketLifecycleConfiguration("example",
///     rules=[{
///         "filter": {
///             "and_": {
///                 "prefix": "logs/",
///                 "object_size_greater_than": 500,
///                 "object_size_less_than": 64000,
///             },
///         },
///         "id": "rule-1",
///         "status": "Enabled",
///     }],
///     bucket=bucket["bucket"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.BucketLifecycleConfiguration("example", new()
///     {
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Filter = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleFilterArgs
///                 {
///                     And = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleFilterAndArgs
///                     {
///                         Prefix = "logs/",
///                         ObjectSizeGreaterThan = 500,
///                         ObjectSizeLessThan = 64000,
///                     },
///                 },
///                 Id = "rule-1",
///                 Status = "Enabled",
///             },
///         },
///         Bucket = bucket.Bucket,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewBucketLifecycleConfiguration(ctx, "example", &s3.BucketLifecycleConfigurationArgs{
/// 			Rules: s3.BucketLifecycleConfigurationRuleArray{
/// 				&s3.BucketLifecycleConfigurationRuleArgs{
/// 					Filter: &s3.BucketLifecycleConfigurationRuleFilterArgs{
/// 						And: &s3.BucketLifecycleConfigurationRuleFilterAndArgs{
/// 							Prefix:                pulumi.String("logs/"),
/// 							ObjectSizeGreaterThan: pulumi.Int(500),
/// 							ObjectSizeLessThan:    pulumi.Int(64000),
/// 						},
/// 					},
/// 					Id:     pulumi.String("rule-1"),
/// 					Status: pulumi.String("Enabled"),
/// 				},
/// 			},
/// 			Bucket: pulumi.Any(bucket.Bucket),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_s3_bucketlifecycleconfiguration" "example" {
///   rules {
///     filter = {
///       and = {
///         prefix                   = "logs/"
///         object_size_greater_than = 500
///         object_size_less_than    = 64000
///       }
///     }
///     id     = "rule-1"
///     status = "Enabled"
///   }
///   # ... other transition/expiration actions ...
///   bucket = bucket.bucket
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.BucketLifecycleConfiguration;
/// import com.pulumi.aws.s3.BucketLifecycleConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleFilterArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleFilterAndArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new BucketLifecycleConfiguration("example", BucketLifecycleConfigurationArgs.builder()
///             .rules(BucketLifecycleConfigurationRuleArgs.builder()
///                 .filter(BucketLifecycleConfigurationRuleFilterArgs.builder()
///                     .and(BucketLifecycleConfigurationRuleFilterAndArgs.builder()
///                         .prefix("logs/")
///                         .objectSizeGreaterThan(500)
///                         .objectSizeLessThan(64000)
///                         .build())
///                     .build())
///                 .id("rule-1")
///                 .status("Enabled")
///                 .build())
///             .bucket(bucket.bucket())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:BucketLifecycleConfiguration
///     properties:
///       rules:
///         - filter:
///             and:
///               prefix: logs/
///               objectSizeGreaterThan: 500
///               objectSizeLessThan: 64000
///           id: rule-1
///           status: Enabled
///       bucket: ${bucket.bucket}
/// ```
///
///
/// ### Creating a Lifecycle Configuration for a bucket with versioning
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bucket = new aws.s3.Bucket("bucket", {bucket: "my-bucket"});
/// const bucketAcl = new aws.s3.BucketAcl("bucket_acl", {
///     bucket: bucket.bucket,
///     acl: "private",
/// });
/// const bucket_config = new aws.s3.BucketLifecycleConfiguration("bucket-config", {
///     rules: [
///         {
///             expiration: {
///                 days: 90,
///             },
///             filter: {
///                 and: {
///                     prefix: "log/",
///                     tags: {
///                         rule: "log",
///                         autoclean: "true",
///                     },
///                 },
///             },
///             transitions: [
///                 {
///                     days: 30,
///                     storageClass: "STANDARD_IA",
///                 },
///                 {
///                     days: 60,
///                     storageClass: "GLACIER",
///                 },
///             ],
///             id: "log",
///             status: "Enabled",
///         },
///         {
///             filter: {
///                 prefix: "tmp/",
///             },
///             expiration: {
///                 date: "2023-01-13T00:00:00Z",
///             },
///             id: "tmp",
///             status: "Enabled",
///         },
///     ],
///     bucket: bucket.bucket,
/// });
/// const versioningBucket = new aws.s3.Bucket("versioning_bucket", {bucket: "my-versioning-bucket"});
/// const versioningBucketAcl = new aws.s3.BucketAcl("versioning_bucket_acl", {
///     bucket: versioningBucket.bucket,
///     acl: "private",
/// });
/// const versioning = new aws.s3.BucketVersioning("versioning", {
///     versioningConfiguration: {
///         status: "Enabled",
///     },
///     bucket: versioningBucket.bucket,
/// });
/// const versioning_bucket_config = new aws.s3.BucketLifecycleConfiguration("versioning-bucket-config", {
///     rules: [{
///         filter: {
///             prefix: "config/",
///         },
///         noncurrentVersionExpiration: {
///             noncurrentDays: 90,
///         },
///         noncurrentVersionTransitions: [
///             {
///                 noncurrentDays: 30,
///                 storageClass: "STANDARD_IA",
///             },
///             {
///                 noncurrentDays: 60,
///                 storageClass: "GLACIER",
///             },
///         ],
///         id: "config",
///         status: "Enabled",
///     }],
///     bucket: versioningBucket.bucket,
/// }, {
///     dependsOn: [versioning],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bucket = aws.s3.Bucket("bucket", bucket="my-bucket")
/// bucket_acl = aws.s3.BucketAcl("bucket_acl",
///     bucket=bucket.bucket,
///     acl="private")
/// bucket_config = aws.s3.BucketLifecycleConfiguration("bucket-config",
///     rules=[
///         {
///             "expiration": {
///                 "days": 90,
///             },
///             "filter": {
///                 "and_": {
///                     "prefix": "log/",
///                     "tags": {
///                         "rule": "log",
///                         "autoclean": "true",
///                     },
///                 },
///             },
///             "transitions": [
///                 {
///                     "days": 30,
///                     "storage_class": "STANDARD_IA",
///                 },
///                 {
///                     "days": 60,
///                     "storage_class": "GLACIER",
///                 },
///             ],
///             "id": "log",
///             "status": "Enabled",
///         },
///         {
///             "filter": {
///                 "prefix": "tmp/",
///             },
///             "expiration": {
///                 "date": "2023-01-13T00:00:00Z",
///             },
///             "id": "tmp",
///             "status": "Enabled",
///         },
///     ],
///     bucket=bucket.bucket)
/// versioning_bucket = aws.s3.Bucket("versioning_bucket", bucket="my-versioning-bucket")
/// versioning_bucket_acl = aws.s3.BucketAcl("versioning_bucket_acl",
///     bucket=versioning_bucket.bucket,
///     acl="private")
/// versioning = aws.s3.BucketVersioning("versioning",
///     versioning_configuration={
///         "status": "Enabled",
///     },
///     bucket=versioning_bucket.bucket)
/// versioning_bucket_config = aws.s3.BucketLifecycleConfiguration("versioning-bucket-config",
///     rules=[{
///         "filter": {
///             "prefix": "config/",
///         },
///         "noncurrent_version_expiration": {
///             "noncurrent_days": 90,
///         },
///         "noncurrent_version_transitions": [
///             {
///                 "noncurrent_days": 30,
///                 "storage_class": "STANDARD_IA",
///             },
///             {
///                 "noncurrent_days": 60,
///                 "storage_class": "GLACIER",
///             },
///         ],
///         "id": "config",
///         "status": "Enabled",
///     }],
///     bucket=versioning_bucket.bucket,
///     opts = pulumi.ResourceOptions(depends_on=[versioning]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bucket = new Aws.S3.Bucket("bucket", new()
///     {
///         BucketName = "my-bucket",
///     });
///
///     var bucketAcl = new Aws.S3.BucketAcl("bucket_acl", new()
///     {
///         Bucket = bucket.BucketName,
///         Acl = "private",
///     });
///
///     var bucket_config = new Aws.S3.BucketLifecycleConfiguration("bucket-config", new()
///     {
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Expiration = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleExpirationArgs
///                 {
///                     Days = 90,
///                 },
///                 Filter = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleFilterArgs
///                 {
///                     And = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleFilterAndArgs
///                     {
///                         Prefix = "log/",
///                         Tags =
///                         {
///                             { "rule", "log" },
///                             { "autoclean", "true" },
///                         },
///                     },
///                 },
///                 Transitions = new[]
///                 {
///                     new Aws.S3.Inputs.BucketLifecycleConfigurationRuleTransitionArgs
///                     {
///                         Days = 30,
///                         StorageClass = "STANDARD_IA",
///                     },
///                     new Aws.S3.Inputs.BucketLifecycleConfigurationRuleTransitionArgs
///                     {
///                         Days = 60,
///                         StorageClass = "GLACIER",
///                     },
///                 },
///                 Id = "log",
///                 Status = "Enabled",
///             },
///             new Aws.S3.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Filter = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleFilterArgs
///                 {
///                     Prefix = "tmp/",
///                 },
///                 Expiration = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleExpirationArgs
///                 {
///                     Date = "2023-01-13T00:00:00Z",
///                 },
///                 Id = "tmp",
///                 Status = "Enabled",
///             },
///         },
///         Bucket = bucket.BucketName,
///     });
///
///     var versioningBucket = new Aws.S3.Bucket("versioning_bucket", new()
///     {
///         BucketName = "my-versioning-bucket",
///     });
///
///     var versioningBucketAcl = new Aws.S3.BucketAcl("versioning_bucket_acl", new()
///     {
///         Bucket = versioningBucket.BucketName,
///         Acl = "private",
///     });
///
///     var versioning = new Aws.S3.BucketVersioning("versioning", new()
///     {
///         VersioningConfiguration = new Aws.S3.Inputs.BucketVersioningVersioningConfigurationArgs
///         {
///             Status = "Enabled",
///         },
///         Bucket = versioningBucket.BucketName,
///     });
///
///     var versioning_bucket_config = new Aws.S3.BucketLifecycleConfiguration("versioning-bucket-config", new()
///     {
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Filter = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleFilterArgs
///                 {
///                     Prefix = "config/",
///                 },
///                 NoncurrentVersionExpiration = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleNoncurrentVersionExpirationArgs
///                 {
///                     NoncurrentDays = 90,
///                 },
///                 NoncurrentVersionTransitions = new[]
///                 {
///                     new Aws.S3.Inputs.BucketLifecycleConfigurationRuleNoncurrentVersionTransitionArgs
///                     {
///                         NoncurrentDays = 30,
///                         StorageClass = "STANDARD_IA",
///                     },
///                     new Aws.S3.Inputs.BucketLifecycleConfigurationRuleNoncurrentVersionTransitionArgs
///                     {
///                         NoncurrentDays = 60,
///                         StorageClass = "GLACIER",
///                     },
///                 },
///                 Id = "config",
///                 Status = "Enabled",
///             },
///         },
///         Bucket = versioningBucket.BucketName,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             versioning,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bucket, err := s3.NewBucket(ctx, "bucket", &s3.BucketArgs{
/// 			Bucket: pulumi.String("my-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAcl(ctx, "bucket_acl", &s3.BucketAclArgs{
/// 			Bucket: bucket.Bucket,
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketLifecycleConfiguration(ctx, "bucket-config", &s3.BucketLifecycleConfigurationArgs{
/// 			Rules: s3.BucketLifecycleConfigurationRuleArray{
/// 				&s3.BucketLifecycleConfigurationRuleArgs{
/// 					Expiration: &s3.BucketLifecycleConfigurationRuleExpirationArgs{
/// 						Days: pulumi.Int(90),
/// 					},
/// 					Filter: &s3.BucketLifecycleConfigurationRuleFilterArgs{
/// 						And: &s3.BucketLifecycleConfigurationRuleFilterAndArgs{
/// 							Prefix: pulumi.String("log/"),
/// 							Tags: pulumi.StringMap{
/// 								"rule":      pulumi.String("log"),
/// 								"autoclean": pulumi.String("true"),
/// 							},
/// 						},
/// 					},
/// 					Transitions: s3.BucketLifecycleConfigurationRuleTransitionArray{
/// 						&s3.BucketLifecycleConfigurationRuleTransitionArgs{
/// 							Days:         pulumi.Int(30),
/// 							StorageClass: pulumi.String("STANDARD_IA"),
/// 						},
/// 						&s3.BucketLifecycleConfigurationRuleTransitionArgs{
/// 							Days:         pulumi.Int(60),
/// 							StorageClass: pulumi.String("GLACIER"),
/// 						},
/// 					},
/// 					Id:     pulumi.String("log"),
/// 					Status: pulumi.String("Enabled"),
/// 				},
/// 				&s3.BucketLifecycleConfigurationRuleArgs{
/// 					Filter: &s3.BucketLifecycleConfigurationRuleFilterArgs{
/// 						Prefix: pulumi.String("tmp/"),
/// 					},
/// 					Expiration: &s3.BucketLifecycleConfigurationRuleExpirationArgs{
/// 						Date: pulumi.String("2023-01-13T00:00:00Z"),
/// 					},
/// 					Id:     pulumi.String("tmp"),
/// 					Status: pulumi.String("Enabled"),
/// 				},
/// 			},
/// 			Bucket: bucket.Bucket,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		versioningBucket, err := s3.NewBucket(ctx, "versioning_bucket", &s3.BucketArgs{
/// 			Bucket: pulumi.String("my-versioning-bucket"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketAcl(ctx, "versioning_bucket_acl", &s3.BucketAclArgs{
/// 			Bucket: versioningBucket.Bucket,
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		versioning, err := s3.NewBucketVersioning(ctx, "versioning", &s3.BucketVersioningArgs{
/// 			VersioningConfiguration: &s3.BucketVersioningVersioningConfigurationArgs{
/// 				Status: pulumi.String("Enabled"),
/// 			},
/// 			Bucket: versioningBucket.Bucket,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketLifecycleConfiguration(ctx, "versioning-bucket-config", &s3.BucketLifecycleConfigurationArgs{
/// 			Rules: s3.BucketLifecycleConfigurationRuleArray{
/// 				&s3.BucketLifecycleConfigurationRuleArgs{
/// 					Filter: &s3.BucketLifecycleConfigurationRuleFilterArgs{
/// 						Prefix: pulumi.String("config/"),
/// 					},
/// 					NoncurrentVersionExpiration: &s3.BucketLifecycleConfigurationRuleNoncurrentVersionExpirationArgs{
/// 						NoncurrentDays: pulumi.Int(90),
/// 					},
/// 					NoncurrentVersionTransitions: s3.BucketLifecycleConfigurationRuleNoncurrentVersionTransitionArray{
/// 						&s3.BucketLifecycleConfigurationRuleNoncurrentVersionTransitionArgs{
/// 							NoncurrentDays: pulumi.Int(30),
/// 							StorageClass:   pulumi.String("STANDARD_IA"),
/// 						},
/// 						&s3.BucketLifecycleConfigurationRuleNoncurrentVersionTransitionArgs{
/// 							NoncurrentDays: pulumi.Int(60),
/// 							StorageClass:   pulumi.String("GLACIER"),
/// 						},
/// 					},
/// 					Id:     pulumi.String("config"),
/// 					Status: pulumi.String("Enabled"),
/// 				},
/// 			},
/// 			Bucket: versioningBucket.Bucket,
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			versioning,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_s3_bucket" "bucket" {
///   bucket = "my-bucket"
/// }
/// resource "aws_s3_bucketacl" "bucket_acl" {
///   bucket = aws_s3_bucket.bucket.bucket
///   acl    = "private"
/// }
/// resource "aws_s3_bucketlifecycleconfiguration" "bucket-config" {
///   rules {
///     expiration = {
///       days = 90
///     }
///     filter = {
///       and = {
///         prefix = "log/"
///         tags = {
///           "rule"      = "log"
///           "autoclean" = "true"
///         }
///       }
///     }
///     transitions {
///       days          = 30
///       storage_class = "STANDARD_IA"
///     }
///     transitions {
///       days          = 60
///       storage_class = "GLACIER"
///     }
///     id     = "log"
///     status = "Enabled"
///   }
///   rules {
///     filter = {
///       prefix = "tmp/"
///     }
///     expiration = {
///       date = "2023-01-13T00:00:00Z"
///     }
///     id     = "tmp"
///     status = "Enabled"
///   }
///   bucket = aws_s3_bucket.bucket.bucket
/// }
/// resource "aws_s3_bucket" "versioning_bucket" {
///   bucket = "my-versioning-bucket"
/// }
/// resource "aws_s3_bucketacl" "versioning_bucket_acl" {
///   bucket = aws_s3_bucket.versioning_bucket.bucket
///   acl    = "private"
/// }
/// resource "aws_s3_bucketversioning" "versioning" {
///   versioning_configuration = {
///     status = "Enabled"
///   }
///   bucket = aws_s3_bucket.versioning_bucket.bucket
/// }
/// resource "aws_s3_bucketlifecycleconfiguration" "versioning-bucket-config" {
///   depends_on = [aws_s3_bucketversioning.versioning]
///   rules {
///     filter = {
///       prefix = "config/"
///     }
///     noncurrent_version_expiration = {
///       noncurrent_days = 90
///     }
///     noncurrent_version_transitions {
///       noncurrent_days = 30
///       storage_class   = "STANDARD_IA"
///     }
///     noncurrent_version_transitions {
///       noncurrent_days = 60
///       storage_class   = "GLACIER"
///     }
///     id     = "config"
///     status = "Enabled"
///   }
///   bucket = aws_s3_bucket.versioning_bucket.bucket
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.BucketAcl;
/// import com.pulumi.aws.s3.BucketAclArgs;
/// import com.pulumi.aws.s3.BucketLifecycleConfiguration;
/// import com.pulumi.aws.s3.BucketLifecycleConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleExpirationArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleFilterArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleFilterAndArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleTransitionArgs;
/// import com.pulumi.aws.s3.BucketVersioning;
/// import com.pulumi.aws.s3.BucketVersioningArgs;
/// import com.pulumi.aws.s3.inputs.BucketVersioningVersioningConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleNoncurrentVersionExpirationArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleNoncurrentVersionTransitionArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .bucket("my-bucket")
///             .build());
///
///         var bucketAcl = new BucketAcl("bucketAcl", BucketAclArgs.builder()
///             .bucket(bucket.bucket())
///             .acl("private")
///             .build());
///
///         var bucket_config = new BucketLifecycleConfiguration("bucket-config", BucketLifecycleConfigurationArgs.builder()
///             .rules(
///                 BucketLifecycleConfigurationRuleArgs.builder()
///                     .expiration(BucketLifecycleConfigurationRuleExpirationArgs.builder()
///                         .days(90)
///                         .build())
///                     .filter(BucketLifecycleConfigurationRuleFilterArgs.builder()
///                         .and(BucketLifecycleConfigurationRuleFilterAndArgs.builder()
///                             .prefix("log/")
///                             .tags(Map.ofEntries(
///                                 Map.entry("rule", "log"),
///                                 Map.entry("autoclean", "true")
///                             ))
///                             .build())
///                         .build())
///                     .transitions(
///                         BucketLifecycleConfigurationRuleTransitionArgs.builder()
///                             .days(30)
///                             .storageClass("STANDARD_IA")
///                             .build(),
///                         BucketLifecycleConfigurationRuleTransitionArgs.builder()
///                             .days(60)
///                             .storageClass("GLACIER")
///                             .build())
///                     .id("log")
///                     .status("Enabled")
///                     .build(),
///                 BucketLifecycleConfigurationRuleArgs.builder()
///                     .filter(BucketLifecycleConfigurationRuleFilterArgs.builder()
///                         .prefix("tmp/")
///                         .build())
///                     .expiration(BucketLifecycleConfigurationRuleExpirationArgs.builder()
///                         .date("2023-01-13T00:00:00Z")
///                         .build())
///                     .id("tmp")
///                     .status("Enabled")
///                     .build())
///             .bucket(bucket.bucket())
///             .build());
///
///         var versioningBucket = new Bucket("versioningBucket", BucketArgs.builder()
///             .bucket("my-versioning-bucket")
///             .build());
///
///         var versioningBucketAcl = new BucketAcl("versioningBucketAcl", BucketAclArgs.builder()
///             .bucket(versioningBucket.bucket())
///             .acl("private")
///             .build());
///
///         var versioning = new BucketVersioning("versioning", BucketVersioningArgs.builder()
///             .versioningConfiguration(BucketVersioningVersioningConfigurationArgs.builder()
///                 .status("Enabled")
///                 .build())
///             .bucket(versioningBucket.bucket())
///             .build());
///
///         var versioning_bucket_config = new BucketLifecycleConfiguration("versioning-bucket-config", BucketLifecycleConfigurationArgs.builder()
///             .rules(BucketLifecycleConfigurationRuleArgs.builder()
///                 .filter(BucketLifecycleConfigurationRuleFilterArgs.builder()
///                     .prefix("config/")
///                     .build())
///                 .noncurrentVersionExpiration(BucketLifecycleConfigurationRuleNoncurrentVersionExpirationArgs.builder()
///                     .noncurrentDays(90)
///                     .build())
///                 .noncurrentVersionTransitions(
///                     BucketLifecycleConfigurationRuleNoncurrentVersionTransitionArgs.builder()
///                         .noncurrentDays(30)
///                         .storageClass("STANDARD_IA")
///                         .build(),
///                     BucketLifecycleConfigurationRuleNoncurrentVersionTransitionArgs.builder()
///                         .noncurrentDays(60)
///                         .storageClass("GLACIER")
///                         .build())
///                 .id("config")
///                 .status("Enabled")
///                 .build())
///             .bucket(versioningBucket.bucket())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(versioning)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bucket:
///     type: aws:s3:Bucket
///     properties:
///       bucket: my-bucket
///   bucketAcl:
///     type: aws:s3:BucketAcl
///     name: bucket_acl
///     properties:
///       bucket: ${bucket.bucket}
///       acl: private
///   bucket-config:
///     type: aws:s3:BucketLifecycleConfiguration
///     properties:
///       rules:
///         - expiration:
///             days: 90
///           filter:
///             and:
///               prefix: log/
///               tags:
///                 rule: log
///                 autoclean: 'true'
///           transitions:
///             - days: 30
///               storageClass: STANDARD_IA
///             - days: 60
///               storageClass: GLACIER
///           id: log
///           status: Enabled
///         - filter:
///             prefix: tmp/
///           expiration:
///             date: 2023-01-13T00:00:00Z
///           id: tmp
///           status: Enabled
///       bucket: ${bucket.bucket}
///   versioningBucket:
///     type: aws:s3:Bucket
///     name: versioning_bucket
///     properties:
///       bucket: my-versioning-bucket
///   versioningBucketAcl:
///     type: aws:s3:BucketAcl
///     name: versioning_bucket_acl
///     properties:
///       bucket: ${versioningBucket.bucket}
///       acl: private
///   versioning:
///     type: aws:s3:BucketVersioning
///     properties:
///       versioningConfiguration:
///         status: Enabled
///       bucket: ${versioningBucket.bucket}
///   versioning-bucket-config:
///     type: aws:s3:BucketLifecycleConfiguration
///     properties:
///       rules:
///         - filter:
///             prefix: config/
///           noncurrentVersionExpiration:
///             noncurrentDays: 90
///           noncurrentVersionTransitions:
///             - noncurrentDays: 30
///               storageClass: STANDARD_IA
///             - noncurrentDays: 60
///               storageClass: GLACIER
///           id: config
///           status: Enabled
///       bucket: ${versioningBucket.bucket}
///     options:
///       dependsOn:
///         - ${versioning}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `bucket` (String) S3 bucket name.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expectedBucketOwner` separated by a comma (`,`):
///
///
/// Using `pulumi import`, import an S3 bucket lifecycle configuration using the `bucket` or the `bucket` and `expectedBucketOwner` separated by a comma (`,`). For example:
///
/// If the owner (account ID) of the source bucket is the same account used to configure the AWS Provider, import using the `bucket`:
///
/// ```sh
/// $ pulumi import aws:s3/bucketLifecycleConfigurationV2:BucketLifecycleConfigurationV2 example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expectedBucketOwner` separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketLifecycleConfigurationV2:BucketLifecycleConfigurationV2 example bucket-name,123456789012
/// ```
class BucketLifecycleConfigurationV2 extends pulumi.CustomResource {
  /// Name of the source S3 bucket you want Amazon S3 to monitor.
  late final pulumi.Output<String> bucket;
  /// Account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error.
  late final pulumi.Output<String> expectedBucketOwner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// List of configuration blocks describing the rules managing the replication. See below.
  late final pulumi.Output<List<BucketLifecycleConfigurationV2Rule>?> rules;
  late final pulumi.Output<BucketLifecycleConfigurationV2Timeouts?> timeouts;
  /// Default minimum object size behavior applied to the lifecycle configuration. Valid values: `all_storage_classes_128K` (default), `variesByStorageClass`. To customize the minimum object size for any transition you can add a `filter` that specifies a custom `objectSizeGreaterThan` or `objectSizeLessThan` value. Custom filters always take precedence over the default transition behavior.
  late final pulumi.Output<String> transitionDefaultMinimumObjectSize;

  /// Creates a new [BucketLifecycleConfigurationV2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketLifecycleConfigurationV2]. {@macro pulumi_s3_bucket_lifecycle_configuration_v2_bucket_lifecycle_configuration_v2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketLifecycleConfigurationV2(
    String name, {
    BucketLifecycleConfigurationV2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketLifecycleConfigurationV2:BucketLifecycleConfigurationV2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    bucket = registerOutput<String>('bucket');
    expectedBucketOwner = registerOutput<String>('expectedBucketOwner');
    region = registerOutput<String>('region');
    rules = registerOutput<List<BucketLifecycleConfigurationV2Rule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketLifecycleConfigurationV2Rule>(guardedValue, (value) => BucketLifecycleConfigurationV2Rule.fromMap((value as Map).cast<String, dynamic>())); });
    timeouts = registerOutput<BucketLifecycleConfigurationV2Timeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketLifecycleConfigurationV2Timeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    transitionDefaultMinimumObjectSize = registerOutput<String>('transitionDefaultMinimumObjectSize');
  }

  /// Gets an existing [BucketLifecycleConfigurationV2] resource's state with the given [name] and [id].
  static BucketLifecycleConfigurationV2 get(
    String name,
    pulumi.Input<String> id, {
    BucketLifecycleConfigurationV2State? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BucketLifecycleConfigurationV2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BucketLifecycleConfigurationV2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketLifecycleConfigurationV2:BucketLifecycleConfigurationV2',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    expectedBucketOwner = registerOutput<String>('expectedBucketOwner');
    region = registerOutput<String>('region');
    rules = registerOutput<List<BucketLifecycleConfigurationV2Rule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketLifecycleConfigurationV2Rule>(guardedValue, (value) => BucketLifecycleConfigurationV2Rule.fromMap((value as Map).cast<String, dynamic>())); });
    timeouts = registerOutput<BucketLifecycleConfigurationV2Timeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketLifecycleConfigurationV2Timeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    transitionDefaultMinimumObjectSize = registerOutput<String>('transitionDefaultMinimumObjectSize');
  }

  /// Creates a typed reference to an existing [BucketLifecycleConfigurationV2] resource.
  BucketLifecycleConfigurationV2.reference(String urn)
    : super(
        'aws:s3/bucketLifecycleConfigurationV2:BucketLifecycleConfigurationV2',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bucket = registerOutput<String>('bucket');
    expectedBucketOwner = registerOutput<String>('expectedBucketOwner');
    region = registerOutput<String>('region');
    rules = registerOutput<List<BucketLifecycleConfigurationV2Rule>?>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketLifecycleConfigurationV2Rule>(guardedValue, (value) => BucketLifecycleConfigurationV2Rule.fromMap((value as Map).cast<String, dynamic>())); });
    timeouts = registerOutput<BucketLifecycleConfigurationV2Timeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketLifecycleConfigurationV2Timeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    transitionDefaultMinimumObjectSize = registerOutput<String>('transitionDefaultMinimumObjectSize');
  }
}
