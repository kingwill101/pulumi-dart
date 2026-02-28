import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_lifecycle_configuration_args.dart';
import 'bucket_lifecycle_configuration_rule.dart';
import 'bucket_lifecycle_configuration_timeouts.dart';

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
/// > S3 Buckets only support a single lifecycle configuration. Declaring multiple `aws.s3.BucketLifecycleConfiguration` resources to the same S3 Bucket will cause a perpetual difference in configuration.
///
/// > Lifecycle configurations may take some time to fully propagate to all AWS S3 systems.
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
///     bucket: bucket.id,
///     rules: [{
///         id: "rule-1",
///         status: "Enabled",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketLifecycleConfiguration("example",
///     bucket=bucket["id"],
///     rules=[{
///         "id": "rule-1",
///         "status": "Enabled",
///     }])
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
///         Bucket = bucket.Id,
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Id = "rule-1",
///                 Status = "Enabled",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewBucketLifecycleConfiguration(ctx, "example", &s3.BucketLifecycleConfigurationArgs{
/// 			Bucket: pulumi.Any(bucket.Id),
/// 			Rules: s3.BucketLifecycleConfigurationRuleArray{
/// 				&s3.BucketLifecycleConfigurationRuleArgs{
/// 					Id:     pulumi.String("rule-1"),
/// 					Status: pulumi.String("Enabled"),
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
/// import com.pulumi.aws.s3.BucketLifecycleConfiguration;
/// import com.pulumi.aws.s3.BucketLifecycleConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleArgs;
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
///         var example = new BucketLifecycleConfiguration("example", BucketLifecycleConfigurationArgs.builder()
///             .bucket(bucket.id())
///             .rules(BucketLifecycleConfigurationRuleArgs.builder()
///                 .id("rule-1")
///                 .status("Enabled")
///                 .build())
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
///       bucket: ${bucket.id}
///       rules:
///         - id: rule-1
///           status: Enabled
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
///     bucket: bucket.id,
///     rules: [{
///         id: "rule-1",
///         filter: {},
///         status: "Enabled",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketLifecycleConfiguration("example",
///     bucket=bucket["id"],
///     rules=[{
///         "id": "rule-1",
///         "filter": {},
///         "status": "Enabled",
///     }])
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
///         Bucket = bucket.Id,
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Id = "rule-1",
///                 Filter = null,
///                 Status = "Enabled",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewBucketLifecycleConfiguration(ctx, "example", &s3.BucketLifecycleConfigurationArgs{
/// 			Bucket: pulumi.Any(bucket.Id),
/// 			Rules: s3.BucketLifecycleConfigurationRuleArray{
/// 				&s3.BucketLifecycleConfigurationRuleArgs{
/// 					Id:     pulumi.String("rule-1"),
/// 					Filter: &s3.BucketLifecycleConfigurationRuleFilterArgs{},
/// 					Status: pulumi.String("Enabled"),
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
/// import com.pulumi.aws.s3.BucketLifecycleConfiguration;
/// import com.pulumi.aws.s3.BucketLifecycleConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleFilterArgs;
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
///         var example = new BucketLifecycleConfiguration("example", BucketLifecycleConfigurationArgs.builder()
///             .bucket(bucket.id())
///             .rules(BucketLifecycleConfigurationRuleArgs.builder()
///                 .id("rule-1")
///                 .filter(BucketLifecycleConfigurationRuleFilterArgs.builder()
///                     .build())
///                 .status("Enabled")
///                 .build())
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
///       bucket: ${bucket.id}
///       rules:
///         - id: rule-1
///           filter: {}
///           status: Enabled
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
///     bucket: bucket.id,
///     rules: [{
///         id: "rule-1",
///         filter: {
///             prefix: "logs/",
///         },
///         status: "Enabled",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketLifecycleConfiguration("example",
///     bucket=bucket["id"],
///     rules=[{
///         "id": "rule-1",
///         "filter": {
///             "prefix": "logs/",
///         },
///         "status": "Enabled",
///     }])
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
///         Bucket = bucket.Id,
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Id = "rule-1",
///                 Filter = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleFilterArgs
///                 {
///                     Prefix = "logs/",
///                 },
///                 Status = "Enabled",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewBucketLifecycleConfiguration(ctx, "example", &s3.BucketLifecycleConfigurationArgs{
/// 			Bucket: pulumi.Any(bucket.Id),
/// 			Rules: s3.BucketLifecycleConfigurationRuleArray{
/// 				&s3.BucketLifecycleConfigurationRuleArgs{
/// 					Id: pulumi.String("rule-1"),
/// 					Filter: &s3.BucketLifecycleConfigurationRuleFilterArgs{
/// 						Prefix: pulumi.String("logs/"),
/// 					},
/// 					Status: pulumi.String("Enabled"),
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
/// import com.pulumi.aws.s3.BucketLifecycleConfiguration;
/// import com.pulumi.aws.s3.BucketLifecycleConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleFilterArgs;
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
///         var example = new BucketLifecycleConfiguration("example", BucketLifecycleConfigurationArgs.builder()
///             .bucket(bucket.id())
///             .rules(BucketLifecycleConfigurationRuleArgs.builder()
///                 .id("rule-1")
///                 .filter(BucketLifecycleConfigurationRuleFilterArgs.builder()
///                     .prefix("logs/")
///                     .build())
///                 .status("Enabled")
///                 .build())
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
///       bucket: ${bucket.id}
///       rules:
///         - id: rule-1
///           filter:
///             prefix: logs/
///           status: Enabled
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
///     bucket: bucket.id,
///     rules: [
///         {
///             id: "rule-1",
///             filter: {
///                 prefix: "logs/",
///             },
///             status: "Enabled",
///         },
///         {
///             id: "rule-2",
///             filter: {
///                 prefix: "tmp/",
///             },
///             status: "Enabled",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketLifecycleConfiguration("example",
///     bucket=bucket["id"],
///     rules=[
///         {
///             "id": "rule-1",
///             "filter": {
///                 "prefix": "logs/",
///             },
///             "status": "Enabled",
///         },
///         {
///             "id": "rule-2",
///             "filter": {
///                 "prefix": "tmp/",
///             },
///             "status": "Enabled",
///         },
///     ])
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
///         Bucket = bucket.Id,
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Id = "rule-1",
///                 Filter = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleFilterArgs
///                 {
///                     Prefix = "logs/",
///                 },
///                 Status = "Enabled",
///             },
///             new Aws.S3.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Id = "rule-2",
///                 Filter = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleFilterArgs
///                 {
///                     Prefix = "tmp/",
///                 },
///                 Status = "Enabled",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewBucketLifecycleConfiguration(ctx, "example", &s3.BucketLifecycleConfigurationArgs{
/// 			Bucket: pulumi.Any(bucket.Id),
/// 			Rules: s3.BucketLifecycleConfigurationRuleArray{
/// 				&s3.BucketLifecycleConfigurationRuleArgs{
/// 					Id: pulumi.String("rule-1"),
/// 					Filter: &s3.BucketLifecycleConfigurationRuleFilterArgs{
/// 						Prefix: pulumi.String("logs/"),
/// 					},
/// 					Status: pulumi.String("Enabled"),
/// 				},
/// 				&s3.BucketLifecycleConfigurationRuleArgs{
/// 					Id: pulumi.String("rule-2"),
/// 					Filter: &s3.BucketLifecycleConfigurationRuleFilterArgs{
/// 						Prefix: pulumi.String("tmp/"),
/// 					},
/// 					Status: pulumi.String("Enabled"),
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
/// import com.pulumi.aws.s3.BucketLifecycleConfiguration;
/// import com.pulumi.aws.s3.BucketLifecycleConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleFilterArgs;
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
///         var example = new BucketLifecycleConfiguration("example", BucketLifecycleConfigurationArgs.builder()
///             .bucket(bucket.id())
///             .rules(
///                 BucketLifecycleConfigurationRuleArgs.builder()
///                     .id("rule-1")
///                     .filter(BucketLifecycleConfigurationRuleFilterArgs.builder()
///                         .prefix("logs/")
///                         .build())
///                     .status("Enabled")
///                     .build(),
///                 BucketLifecycleConfigurationRuleArgs.builder()
///                     .id("rule-2")
///                     .filter(BucketLifecycleConfigurationRuleFilterArgs.builder()
///                         .prefix("tmp/")
///                         .build())
///                     .status("Enabled")
///                     .build())
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
///       bucket: ${bucket.id}
///       rules:
///         - id: rule-1
///           filter:
///             prefix: logs/
///           status: Enabled
///         - id: rule-2
///           filter:
///             prefix: tmp/
///           status: Enabled
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
///     bucket: bucket.id,
///     rules: [{
///         id: "rule-1",
///         filter: {
///             tag: {
///                 key: "Name",
///                 value: "Staging",
///             },
///         },
///         status: "Enabled",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketLifecycleConfiguration("example",
///     bucket=bucket["id"],
///     rules=[{
///         "id": "rule-1",
///         "filter": {
///             "tag": {
///                 "key": "Name",
///                 "value": "Staging",
///             },
///         },
///         "status": "Enabled",
///     }])
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
///         Bucket = bucket.Id,
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Id = "rule-1",
///                 Filter = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleFilterArgs
///                 {
///                     Tag = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleFilterTagArgs
///                     {
///                         Key = "Name",
///                         Value = "Staging",
///                     },
///                 },
///                 Status = "Enabled",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewBucketLifecycleConfiguration(ctx, "example", &s3.BucketLifecycleConfigurationArgs{
/// 			Bucket: pulumi.Any(bucket.Id),
/// 			Rules: s3.BucketLifecycleConfigurationRuleArray{
/// 				&s3.BucketLifecycleConfigurationRuleArgs{
/// 					Id: pulumi.String("rule-1"),
/// 					Filter: &s3.BucketLifecycleConfigurationRuleFilterArgs{
/// 						Tag: &s3.BucketLifecycleConfigurationRuleFilterTagArgs{
/// 							Key:   pulumi.String("Name"),
/// 							Value: pulumi.String("Staging"),
/// 						},
/// 					},
/// 					Status: pulumi.String("Enabled"),
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
/// import com.pulumi.aws.s3.BucketLifecycleConfiguration;
/// import com.pulumi.aws.s3.BucketLifecycleConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleFilterArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleFilterTagArgs;
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
///         var example = new BucketLifecycleConfiguration("example", BucketLifecycleConfigurationArgs.builder()
///             .bucket(bucket.id())
///             .rules(BucketLifecycleConfigurationRuleArgs.builder()
///                 .id("rule-1")
///                 .filter(BucketLifecycleConfigurationRuleFilterArgs.builder()
///                     .tag(BucketLifecycleConfigurationRuleFilterTagArgs.builder()
///                         .key("Name")
///                         .value("Staging")
///                         .build())
///                     .build())
///                 .status("Enabled")
///                 .build())
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
///       bucket: ${bucket.id}
///       rules:
///         - id: rule-1
///           filter:
///             tag:
///               key: Name
///               value: Staging
///           status: Enabled
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
///     bucket: bucket.id,
///     rules: [{
///         id: "rule-1",
///         filter: {
///             and: {
///                 tags: {
///                     Key1: "Value1",
///                     Key2: "Value2",
///                 },
///             },
///         },
///         status: "Enabled",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketLifecycleConfiguration("example",
///     bucket=bucket["id"],
///     rules=[{
///         "id": "rule-1",
///         "filter": {
///             "and_": {
///                 "tags": {
///                     "Key1": "Value1",
///                     "Key2": "Value2",
///                 },
///             },
///         },
///         "status": "Enabled",
///     }])
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
///         Bucket = bucket.Id,
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Id = "rule-1",
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
///                 Status = "Enabled",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewBucketLifecycleConfiguration(ctx, "example", &s3.BucketLifecycleConfigurationArgs{
/// 			Bucket: pulumi.Any(bucket.Id),
/// 			Rules: s3.BucketLifecycleConfigurationRuleArray{
/// 				&s3.BucketLifecycleConfigurationRuleArgs{
/// 					Id: pulumi.String("rule-1"),
/// 					Filter: &s3.BucketLifecycleConfigurationRuleFilterArgs{
/// 						And: &s3.BucketLifecycleConfigurationRuleFilterAndArgs{
/// 							Tags: pulumi.StringMap{
/// 								"Key1": pulumi.String("Value1"),
/// 								"Key2": pulumi.String("Value2"),
/// 							},
/// 						},
/// 					},
/// 					Status: pulumi.String("Enabled"),
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
/// import com.pulumi.aws.s3.BucketLifecycleConfiguration;
/// import com.pulumi.aws.s3.BucketLifecycleConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleFilterArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleFilterAndArgs;
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
///         var example = new BucketLifecycleConfiguration("example", BucketLifecycleConfigurationArgs.builder()
///             .bucket(bucket.id())
///             .rules(BucketLifecycleConfigurationRuleArgs.builder()
///                 .id("rule-1")
///                 .filter(BucketLifecycleConfigurationRuleFilterArgs.builder()
///                     .and(BucketLifecycleConfigurationRuleFilterAndArgs.builder()
///                         .tags(Map.ofEntries(
///                             Map.entry("Key1", "Value1"),
///                             Map.entry("Key2", "Value2")
///                         ))
///                         .build())
///                     .build())
///                 .status("Enabled")
///                 .build())
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
///       bucket: ${bucket.id}
///       rules:
///         - id: rule-1
///           filter:
///             and:
///               tags:
///                 Key1: Value1
///                 Key2: Value2
///           status: Enabled
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
///     bucket: bucket.id,
///     rules: [{
///         id: "rule-1",
///         filter: {
///             and: {
///                 prefix: "logs/",
///                 tags: {
///                     Key1: "Value1",
///                     Key2: "Value2",
///                 },
///             },
///         },
///         status: "Enabled",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketLifecycleConfiguration("example",
///     bucket=bucket["id"],
///     rules=[{
///         "id": "rule-1",
///         "filter": {
///             "and_": {
///                 "prefix": "logs/",
///                 "tags": {
///                     "Key1": "Value1",
///                     "Key2": "Value2",
///                 },
///             },
///         },
///         "status": "Enabled",
///     }])
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
///         Bucket = bucket.Id,
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Id = "rule-1",
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
///                 Status = "Enabled",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewBucketLifecycleConfiguration(ctx, "example", &s3.BucketLifecycleConfigurationArgs{
/// 			Bucket: pulumi.Any(bucket.Id),
/// 			Rules: s3.BucketLifecycleConfigurationRuleArray{
/// 				&s3.BucketLifecycleConfigurationRuleArgs{
/// 					Id: pulumi.String("rule-1"),
/// 					Filter: &s3.BucketLifecycleConfigurationRuleFilterArgs{
/// 						And: &s3.BucketLifecycleConfigurationRuleFilterAndArgs{
/// 							Prefix: pulumi.String("logs/"),
/// 							Tags: pulumi.StringMap{
/// 								"Key1": pulumi.String("Value1"),
/// 								"Key2": pulumi.String("Value2"),
/// 							},
/// 						},
/// 					},
/// 					Status: pulumi.String("Enabled"),
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
/// import com.pulumi.aws.s3.BucketLifecycleConfiguration;
/// import com.pulumi.aws.s3.BucketLifecycleConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleFilterArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleFilterAndArgs;
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
///         var example = new BucketLifecycleConfiguration("example", BucketLifecycleConfigurationArgs.builder()
///             .bucket(bucket.id())
///             .rules(BucketLifecycleConfigurationRuleArgs.builder()
///                 .id("rule-1")
///                 .filter(BucketLifecycleConfigurationRuleFilterArgs.builder()
///                     .and(BucketLifecycleConfigurationRuleFilterAndArgs.builder()
///                         .prefix("logs/")
///                         .tags(Map.ofEntries(
///                             Map.entry("Key1", "Value1"),
///                             Map.entry("Key2", "Value2")
///                         ))
///                         .build())
///                     .build())
///                 .status("Enabled")
///                 .build())
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
///       bucket: ${bucket.id}
///       rules:
///         - id: rule-1
///           filter:
///             and:
///               prefix: logs/
///               tags:
///                 Key1: Value1
///                 Key2: Value2
///           status: Enabled
/// ```
///
///
/// ### Specifying a filter based on object size
///
/// Object size values are in bytes. Maximum filter size is 5TB. Amazon S3 applies a default behavior to your Lifecycle configuration that prevents objects smaller than 128 KB from being transitioned to any storage class. You can allow smaller objects to transition by adding a minimum size (`object_size_greater_than`) or a maximum size (`object_size_less_than`) filter that specifies a smaller size to the configuration. This example allows any object smaller than 128 KB to transition to the S3 Glacier Instant Retrieval storage class:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.BucketLifecycleConfiguration("example", {
///     bucket: bucket.id,
///     rules: [{
///         id: "Allow small object transitions",
///         filter: {
///             objectSizeGreaterThan: 1,
///         },
///         status: "Enabled",
///         transitions: [{
///             days: 365,
///             storageClass: "GLACIER_IR",
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketLifecycleConfiguration("example",
///     bucket=bucket["id"],
///     rules=[{
///         "id": "Allow small object transitions",
///         "filter": {
///             "object_size_greater_than": 1,
///         },
///         "status": "Enabled",
///         "transitions": [{
///             "days": 365,
///             "storage_class": "GLACIER_IR",
///         }],
///     }])
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
///         Bucket = bucket.Id,
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Id = "Allow small object transitions",
///                 Filter = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleFilterArgs
///                 {
///                     ObjectSizeGreaterThan = 1,
///                 },
///                 Status = "Enabled",
///                 Transitions = new[]
///                 {
///                     new Aws.S3.Inputs.BucketLifecycleConfigurationRuleTransitionArgs
///                     {
///                         Days = 365,
///                         StorageClass = "GLACIER_IR",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewBucketLifecycleConfiguration(ctx, "example", &s3.BucketLifecycleConfigurationArgs{
/// 			Bucket: pulumi.Any(bucket.Id),
/// 			Rules: s3.BucketLifecycleConfigurationRuleArray{
/// 				&s3.BucketLifecycleConfigurationRuleArgs{
/// 					Id: pulumi.String("Allow small object transitions"),
/// 					Filter: &s3.BucketLifecycleConfigurationRuleFilterArgs{
/// 						ObjectSizeGreaterThan: pulumi.Int(1),
/// 					},
/// 					Status: pulumi.String("Enabled"),
/// 					Transitions: s3.BucketLifecycleConfigurationRuleTransitionArray{
/// 						&s3.BucketLifecycleConfigurationRuleTransitionArgs{
/// 							Days:         pulumi.Int(365),
/// 							StorageClass: pulumi.String("GLACIER_IR"),
/// 						},
/// 					},
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
/// import com.pulumi.aws.s3.BucketLifecycleConfiguration;
/// import com.pulumi.aws.s3.BucketLifecycleConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleFilterArgs;
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
///         var example = new BucketLifecycleConfiguration("example", BucketLifecycleConfigurationArgs.builder()
///             .bucket(bucket.id())
///             .rules(BucketLifecycleConfigurationRuleArgs.builder()
///                 .id("Allow small object transitions")
///                 .filter(BucketLifecycleConfigurationRuleFilterArgs.builder()
///                     .objectSizeGreaterThan(1)
///                     .build())
///                 .status("Enabled")
///                 .transitions(BucketLifecycleConfigurationRuleTransitionArgs.builder()
///                     .days(365)
///                     .storageClass("GLACIER_IR")
///                     .build())
///                 .build())
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
///       bucket: ${bucket.id}
///       rules:
///         - id: Allow small object transitions
///           filter:
///             objectSizeGreaterThan: 1
///           status: Enabled
///           transitions:
///             - days: 365
///               storageClass: GLACIER_IR
/// ```
///
///
/// ### Specifying a filter based on object size range and prefix
///
/// The `object_size_greater_than` must be less than the `object_size_less_than`. Notice both the object size range and prefix are wrapped in the `and` configuration block.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.BucketLifecycleConfiguration("example", {
///     bucket: bucket.id,
///     rules: [{
///         id: "rule-1",
///         filter: {
///             and: {
///                 prefix: "logs/",
///                 objectSizeGreaterThan: 500,
///                 objectSizeLessThan: 64000,
///             },
///         },
///         status: "Enabled",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.BucketLifecycleConfiguration("example",
///     bucket=bucket["id"],
///     rules=[{
///         "id": "rule-1",
///         "filter": {
///             "and_": {
///                 "prefix": "logs/",
///                 "object_size_greater_than": 500,
///                 "object_size_less_than": 64000,
///             },
///         },
///         "status": "Enabled",
///     }])
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
///         Bucket = bucket.Id,
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Id = "rule-1",
///                 Filter = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleFilterArgs
///                 {
///                     And = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleFilterAndArgs
///                     {
///                         Prefix = "logs/",
///                         ObjectSizeGreaterThan = 500,
///                         ObjectSizeLessThan = 64000,
///                     },
///                 },
///                 Status = "Enabled",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3.NewBucketLifecycleConfiguration(ctx, "example", &s3.BucketLifecycleConfigurationArgs{
/// 			Bucket: pulumi.Any(bucket.Id),
/// 			Rules: s3.BucketLifecycleConfigurationRuleArray{
/// 				&s3.BucketLifecycleConfigurationRuleArgs{
/// 					Id: pulumi.String("rule-1"),
/// 					Filter: &s3.BucketLifecycleConfigurationRuleFilterArgs{
/// 						And: &s3.BucketLifecycleConfigurationRuleFilterAndArgs{
/// 							Prefix:                pulumi.String("logs/"),
/// 							ObjectSizeGreaterThan: pulumi.Int(500),
/// 							ObjectSizeLessThan:    pulumi.Int(64000),
/// 						},
/// 					},
/// 					Status: pulumi.String("Enabled"),
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
/// import com.pulumi.aws.s3.BucketLifecycleConfiguration;
/// import com.pulumi.aws.s3.BucketLifecycleConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleFilterArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleFilterAndArgs;
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
///         var example = new BucketLifecycleConfiguration("example", BucketLifecycleConfigurationArgs.builder()
///             .bucket(bucket.id())
///             .rules(BucketLifecycleConfigurationRuleArgs.builder()
///                 .id("rule-1")
///                 .filter(BucketLifecycleConfigurationRuleFilterArgs.builder()
///                     .and(BucketLifecycleConfigurationRuleFilterAndArgs.builder()
///                         .prefix("logs/")
///                         .objectSizeGreaterThan(500)
///                         .objectSizeLessThan(64000)
///                         .build())
///                     .build())
///                 .status("Enabled")
///                 .build())
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
///       bucket: ${bucket.id}
///       rules:
///         - id: rule-1
///           filter:
///             and:
///               prefix: logs/
///               objectSizeGreaterThan: 500
///               objectSizeLessThan: 64000
///           status: Enabled
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
///     bucket: bucket.id,
///     acl: "private",
/// });
/// const bucket_config = new aws.s3.BucketLifecycleConfiguration("bucket-config", {
///     bucket: bucket.id,
///     rules: [
///         {
///             id: "log",
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
///             status: "Enabled",
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
///         },
///         {
///             id: "tmp",
///             filter: {
///                 prefix: "tmp/",
///             },
///             expiration: {
///                 date: "2023-01-13T00:00:00Z",
///             },
///             status: "Enabled",
///         },
///     ],
/// });
/// const versioningBucket = new aws.s3.Bucket("versioning_bucket", {bucket: "my-versioning-bucket"});
/// const versioningBucketAcl = new aws.s3.BucketAcl("versioning_bucket_acl", {
///     bucket: versioningBucket.id,
///     acl: "private",
/// });
/// const versioning = new aws.s3.BucketVersioning("versioning", {
///     bucket: versioningBucket.id,
///     versioningConfiguration: {
///         status: "Enabled",
///     },
/// });
/// const versioning_bucket_config = new aws.s3.BucketLifecycleConfiguration("versioning-bucket-config", {
///     bucket: versioningBucket.id,
///     rules: [{
///         id: "config",
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
///         status: "Enabled",
///     }],
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
///     bucket=bucket.id,
///     acl="private")
/// bucket_config = aws.s3.BucketLifecycleConfiguration("bucket-config",
///     bucket=bucket.id,
///     rules=[
///         {
///             "id": "log",
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
///             "status": "Enabled",
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
///         },
///         {
///             "id": "tmp",
///             "filter": {
///                 "prefix": "tmp/",
///             },
///             "expiration": {
///                 "date": "2023-01-13T00:00:00Z",
///             },
///             "status": "Enabled",
///         },
///     ])
/// versioning_bucket = aws.s3.Bucket("versioning_bucket", bucket="my-versioning-bucket")
/// versioning_bucket_acl = aws.s3.BucketAcl("versioning_bucket_acl",
///     bucket=versioning_bucket.id,
///     acl="private")
/// versioning = aws.s3.BucketVersioning("versioning",
///     bucket=versioning_bucket.id,
///     versioning_configuration={
///         "status": "Enabled",
///     })
/// versioning_bucket_config = aws.s3.BucketLifecycleConfiguration("versioning-bucket-config",
///     bucket=versioning_bucket.id,
///     rules=[{
///         "id": "config",
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
///         "status": "Enabled",
///     }],
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
///         Bucket = bucket.Id,
///         Acl = "private",
///     });
///
///     var bucket_config = new Aws.S3.BucketLifecycleConfiguration("bucket-config", new()
///     {
///         Bucket = bucket.Id,
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Id = "log",
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
///                 Status = "Enabled",
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
///             },
///             new Aws.S3.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Id = "tmp",
///                 Filter = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleFilterArgs
///                 {
///                     Prefix = "tmp/",
///                 },
///                 Expiration = new Aws.S3.Inputs.BucketLifecycleConfigurationRuleExpirationArgs
///                 {
///                     Date = "2023-01-13T00:00:00Z",
///                 },
///                 Status = "Enabled",
///             },
///         },
///     });
///
///     var versioningBucket = new Aws.S3.Bucket("versioning_bucket", new()
///     {
///         BucketName = "my-versioning-bucket",
///     });
///
///     var versioningBucketAcl = new Aws.S3.BucketAcl("versioning_bucket_acl", new()
///     {
///         Bucket = versioningBucket.Id,
///         Acl = "private",
///     });
///
///     var versioning = new Aws.S3.BucketVersioning("versioning", new()
///     {
///         Bucket = versioningBucket.Id,
///         VersioningConfiguration = new Aws.S3.Inputs.BucketVersioningVersioningConfigurationArgs
///         {
///             Status = "Enabled",
///         },
///     });
///
///     var versioning_bucket_config = new Aws.S3.BucketLifecycleConfiguration("versioning-bucket-config", new()
///     {
///         Bucket = versioningBucket.Id,
///         Rules = new[]
///         {
///             new Aws.S3.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Id = "config",
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
///                 Status = "Enabled",
///             },
///         },
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
/// 			Bucket: bucket.ID(),
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketLifecycleConfiguration(ctx, "bucket-config", &s3.BucketLifecycleConfigurationArgs{
/// 			Bucket: bucket.ID(),
/// 			Rules: s3.BucketLifecycleConfigurationRuleArray{
/// 				&s3.BucketLifecycleConfigurationRuleArgs{
/// 					Id: pulumi.String("log"),
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
/// 					Status: pulumi.String("Enabled"),
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
/// 				},
/// 				&s3.BucketLifecycleConfigurationRuleArgs{
/// 					Id: pulumi.String("tmp"),
/// 					Filter: &s3.BucketLifecycleConfigurationRuleFilterArgs{
/// 						Prefix: pulumi.String("tmp/"),
/// 					},
/// 					Expiration: &s3.BucketLifecycleConfigurationRuleExpirationArgs{
/// 						Date: pulumi.String("2023-01-13T00:00:00Z"),
/// 					},
/// 					Status: pulumi.String("Enabled"),
/// 				},
/// 			},
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
/// 			Bucket: versioningBucket.ID(),
/// 			Acl:    pulumi.String("private"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		versioning, err := s3.NewBucketVersioning(ctx, "versioning", &s3.BucketVersioningArgs{
/// 			Bucket: versioningBucket.ID(),
/// 			VersioningConfiguration: &s3.BucketVersioningVersioningConfigurationArgs{
/// 				Status: pulumi.String("Enabled"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3.NewBucketLifecycleConfiguration(ctx, "versioning-bucket-config", &s3.BucketLifecycleConfigurationArgs{
/// 			Bucket: versioningBucket.ID(),
/// 			Rules: s3.BucketLifecycleConfigurationRuleArray{
/// 				&s3.BucketLifecycleConfigurationRuleArgs{
/// 					Id: pulumi.String("config"),
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
/// 					Status: pulumi.String("Enabled"),
/// 				},
/// 			},
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
/// import com.pulumi.aws.s3.BucketVersioning;
/// import com.pulumi.aws.s3.BucketVersioningArgs;
/// import com.pulumi.aws.s3.inputs.BucketVersioningVersioningConfigurationArgs;
/// import com.pulumi.aws.s3.inputs.BucketLifecycleConfigurationRuleNoncurrentVersionExpirationArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .bucket("my-bucket")
///             .build());
///
///         var bucketAcl = new BucketAcl("bucketAcl", BucketAclArgs.builder()
///             .bucket(bucket.id())
///             .acl("private")
///             .build());
///
///         var bucket_config = new BucketLifecycleConfiguration("bucket-config", BucketLifecycleConfigurationArgs.builder()
///             .bucket(bucket.id())
///             .rules(
///                 BucketLifecycleConfigurationRuleArgs.builder()
///                     .id("log")
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
///                     .status("Enabled")
///                     .transitions(
///                         BucketLifecycleConfigurationRuleTransitionArgs.builder()
///                             .days(30)
///                             .storageClass("STANDARD_IA")
///                             .build(),
///                         BucketLifecycleConfigurationRuleTransitionArgs.builder()
///                             .days(60)
///                             .storageClass("GLACIER")
///                             .build())
///                     .build(),
///                 BucketLifecycleConfigurationRuleArgs.builder()
///                     .id("tmp")
///                     .filter(BucketLifecycleConfigurationRuleFilterArgs.builder()
///                         .prefix("tmp/")
///                         .build())
///                     .expiration(BucketLifecycleConfigurationRuleExpirationArgs.builder()
///                         .date("2023-01-13T00:00:00Z")
///                         .build())
///                     .status("Enabled")
///                     .build())
///             .build());
///
///         var versioningBucket = new Bucket("versioningBucket", BucketArgs.builder()
///             .bucket("my-versioning-bucket")
///             .build());
///
///         var versioningBucketAcl = new BucketAcl("versioningBucketAcl", BucketAclArgs.builder()
///             .bucket(versioningBucket.id())
///             .acl("private")
///             .build());
///
///         var versioning = new BucketVersioning("versioning", BucketVersioningArgs.builder()
///             .bucket(versioningBucket.id())
///             .versioningConfiguration(BucketVersioningVersioningConfigurationArgs.builder()
///                 .status("Enabled")
///                 .build())
///             .build());
///
///         var versioning_bucket_config = new BucketLifecycleConfiguration("versioning-bucket-config", BucketLifecycleConfigurationArgs.builder()
///             .bucket(versioningBucket.id())
///             .rules(BucketLifecycleConfigurationRuleArgs.builder()
///                 .id("config")
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
///                 .status("Enabled")
///                 .build())
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
///       bucket: ${bucket.id}
///       acl: private
///   bucket-config:
///     type: aws:s3:BucketLifecycleConfiguration
///     properties:
///       bucket: ${bucket.id}
///       rules:
///         - id: log
///           expiration:
///             days: 90
///           filter:
///             and:
///               prefix: log/
///               tags:
///                 rule: log
///                 autoclean: 'true'
///           status: Enabled
///           transitions:
///             - days: 30
///               storageClass: STANDARD_IA
///             - days: 60
///               storageClass: GLACIER
///         - id: tmp
///           filter:
///             prefix: tmp/
///           expiration:
///             date: 2023-01-13T00:00:00Z
///           status: Enabled
///   versioningBucket:
///     type: aws:s3:Bucket
///     name: versioning_bucket
///     properties:
///       bucket: my-versioning-bucket
///   versioningBucketAcl:
///     type: aws:s3:BucketAcl
///     name: versioning_bucket_acl
///     properties:
///       bucket: ${versioningBucket.id}
///       acl: private
///   versioning:
///     type: aws:s3:BucketVersioning
///     properties:
///       bucket: ${versioningBucket.id}
///       versioningConfiguration:
///         status: Enabled
///   versioning-bucket-config:
///     type: aws:s3:BucketLifecycleConfiguration
///     properties:
///       bucket: ${versioningBucket.id}
///       rules:
///         - id: config
///           filter:
///             prefix: config/
///           noncurrentVersionExpiration:
///             noncurrentDays: 90
///           noncurrentVersionTransitions:
///             - noncurrentDays: 30
///               storageClass: STANDARD_IA
///             - noncurrentDays: 60
///               storageClass: GLACIER
///           status: Enabled
///     options:
///       dependsOn:
///         - ${versioning}
/// ```
///
///
/// ## Import
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expected_bucket_owner` separated by a comma (`,`):
///
///
/// Using `pulumi import`, import an S3 bucket lifecycle configuration using the `bucket` or the `bucket` and `expected_bucket_owner` separated by a comma (`,`). For example:
///
/// If the owner (account ID) of the source bucket is the same account used to configure the AWS Provider, import using the `bucket`:
///
/// ```sh
/// $ pulumi import aws:s3/bucketLifecycleConfiguration:BucketLifecycleConfiguration example bucket-name
/// ```
///
/// If the owner (account ID) of the source bucket differs from the account used to configure the AWS Provider, import using the `bucket` and `expected_bucket_owner` separated by a comma (`,`):
///
/// ```sh
/// $ pulumi import aws:s3/bucketLifecycleConfiguration:BucketLifecycleConfiguration example bucket-name,123456789012
/// ```
class BucketLifecycleConfiguration extends pulumi.CustomResource {
  /// Name of the source S3 bucket you want Amazon S3 to monitor.
  late final pulumi.Output<String> bucket;

  /// Account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error.
  late final pulumi.Output<String> expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// List of configuration blocks describing the rules managing the replication. See below.
  late final pulumi.Output<List<BucketLifecycleConfigurationRule>?> rules;
  late final pulumi.Output<BucketLifecycleConfigurationTimeouts?> timeouts;

  /// The default minimum object size behavior applied to the lifecycle configuration. Valid values: `all_storage_classes_128K` (default), `varies_by_storage_class`. To customize the minimum object size for any transition you can add a `filter` that specifies a custom `object_size_greater_than` or `object_size_less_than` value. Custom filters always take precedence over the default transition behavior.
  late final pulumi.Output<String> transitionDefaultMinimumObjectSize;

  /// Creates a new [BucketLifecycleConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketLifecycleConfiguration]. {@macro pulumi_s3_bucket_lifecycle_configuration_bucket_lifecycle_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketLifecycleConfiguration(
    String name, {
    BucketLifecycleConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3/bucketLifecycleConfiguration:BucketLifecycleConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.expectedBucketOwner = registerOutput<String>('expectedBucketOwner');
    this.region = registerOutput<String>('region');
    this.rules =
        registerOutput<List<BucketLifecycleConfigurationRule>?>('rules');
    this.timeouts =
        registerOutput<BucketLifecycleConfigurationTimeouts?>('timeouts');
    this.transitionDefaultMinimumObjectSize =
        registerOutput<String>('transitionDefaultMinimumObjectSize');
  }
}
