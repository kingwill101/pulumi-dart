import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_args.dart';
import 'data_source_configuration.dart';
import 'data_source_custom_document_enrichment_configuration.dart';
import 'data_source_state.dart';

/// Resource for managing an AWS Kendra Data Source.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
///     indexId: exampleAwsKendraIndex.id,
///     name: "example",
///     description: "example",
///     languageCode: "en",
///     type: "CUSTOM",
///     tags: {
///         hello: "world",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
///     index_id=example_aws_kendra_index["id"],
///     name="example",
///     description="example",
///     language_code="en",
///     type="CUSTOM",
///     tags={
///         "hello": "world",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kendra.DataSource("example", new()
///     {
///         IndexId = exampleAwsKendraIndex.Id,
///         Name = "example",
///         Description = "example",
///         LanguageCode = "en",
///         Type = "CUSTOM",
///         Tags =
///         {
///             { "hello", "world" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// 			IndexId:      pulumi.Any(exampleAwsKendraIndex.Id),
/// 			Name:         pulumi.String("example"),
/// 			Description:  pulumi.String("example"),
/// 			LanguageCode: pulumi.String("en"),
/// 			Type:         pulumi.String("CUSTOM"),
/// 			Tags: pulumi.StringMap{
/// 				"hello": pulumi.String("world"),
/// 			},
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
/// resource "aws_kendra_datasource" "example" {
///   index_id      = exampleAwsKendraIndex.id
///   name          = "example"
///   description   = "example"
///   language_code = "en"
///   type          = "CUSTOM"
///   tags = {
///     "hello" = "world"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
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
///         var example = new DataSource("example", DataSourceArgs.builder()
///             .indexId(exampleAwsKendraIndex.id())
///             .name("example")
///             .description("example")
///             .languageCode("en")
///             .type("CUSTOM")
///             .tags(Map.of("hello", "world"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:DataSource
///     properties:
///       indexId: ${exampleAwsKendraIndex.id}
///       name: example
///       description: example
///       languageCode: en
///       type: CUSTOM
///       tags:
///         hello: world
/// ```
///
///
/// ### S3 Connector
///
/// ### With Schedule
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
///     configuration: {
///         s3Configuration: {
///             bucketName: exampleAwsS3Bucket.id,
///         },
///     },
///     indexId: exampleAwsKendraIndex.id,
///     name: "example",
///     type: "S3",
///     roleArn: exampleAwsIamRole.arn,
///     schedule: "cron(9 10 1 * ? *)",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
///     configuration={
///         "s3_configuration": {
///             "bucket_name": example_aws_s3_bucket["id"],
///         },
///     },
///     index_id=example_aws_kendra_index["id"],
///     name="example",
///     type="S3",
///     role_arn=example_aws_iam_role["arn"],
///     schedule="cron(9 10 1 * ? *)")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kendra.DataSource("example", new()
///     {
///         Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationArgs
///         {
///             S3Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationS3ConfigurationArgs
///             {
///                 BucketName = exampleAwsS3Bucket.Id,
///             },
///         },
///         IndexId = exampleAwsKendraIndex.Id,
///         Name = "example",
///         Type = "S3",
///         RoleArn = exampleAwsIamRole.Arn,
///         Schedule = "cron(9 10 1 * ? *)",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// 			Configuration: &kendra.DataSourceConfigurationArgs{
/// 				S3Configuration: &kendra.DataSourceConfigurationS3ConfigurationArgs{
/// 					BucketName: pulumi.Any(exampleAwsS3Bucket.Id),
/// 				},
/// 			},
/// 			IndexId:  pulumi.Any(exampleAwsKendraIndex.Id),
/// 			Name:     pulumi.String("example"),
/// 			Type:     pulumi.String("S3"),
/// 			RoleArn:  pulumi.Any(exampleAwsIamRole.Arn),
/// 			Schedule: pulumi.String("cron(9 10 1 * ? *)"),
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
/// resource "aws_kendra_datasource" "example" {
///   configuration = {
///     s3_configuration = {
///       bucket_name = exampleAwsS3Bucket.id
///     }
///   }
///   index_id = exampleAwsKendraIndex.id
///   name     = "example"
///   type     = "S3"
///   role_arn = exampleAwsIamRole.arn
///   schedule = "cron(9 10 1 * ? *)"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationS3ConfigurationArgs;
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
///         var example = new DataSource("example", DataSourceArgs.builder()
///             .configuration(DataSourceConfigurationArgs.builder()
///                 .s3Configuration(DataSourceConfigurationS3ConfigurationArgs.builder()
///                     .bucketName(exampleAwsS3Bucket.id())
///                     .build())
///                 .build())
///             .indexId(exampleAwsKendraIndex.id())
///             .name("example")
///             .type("S3")
///             .roleArn(exampleAwsIamRole.arn())
///             .schedule("cron(9 10 1 * ? *)")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:DataSource
///     properties:
///       configuration:
///         s3Configuration:
///           bucketName: ${exampleAwsS3Bucket.id}
///       indexId: ${exampleAwsKendraIndex.id}
///       name: example
///       type: S3
///       roleArn: ${exampleAwsIamRole.arn}
///       schedule: cron(9 10 1 * ? *)
/// ```
///
///
/// ### With Access Control List
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
///     configuration: {
///         s3Configuration: {
///             accessControlListConfiguration: {
///                 keyPath: `s3://${exampleAwsS3Bucket.id}/path-1`,
///             },
///             bucketName: exampleAwsS3Bucket.id,
///         },
///     },
///     indexId: exampleAwsKendraIndex.id,
///     name: "example",
///     type: "S3",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
///     configuration={
///         "s3_configuration": {
///             "access_control_list_configuration": {
///                 "key_path": f"s3://{example_aws_s3_bucket['id']}/path-1",
///             },
///             "bucket_name": example_aws_s3_bucket["id"],
///         },
///     },
///     index_id=example_aws_kendra_index["id"],
///     name="example",
///     type="S3",
///     role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kendra.DataSource("example", new()
///     {
///         Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationArgs
///         {
///             S3Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationS3ConfigurationArgs
///             {
///                 AccessControlListConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationS3ConfigurationAccessControlListConfigurationArgs
///                 {
///                     KeyPath = $"s3://{exampleAwsS3Bucket.Id}/path-1",
///                 },
///                 BucketName = exampleAwsS3Bucket.Id,
///             },
///         },
///         IndexId = exampleAwsKendraIndex.Id,
///         Name = "example",
///         Type = "S3",
///         RoleArn = exampleAwsIamRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// 			Configuration: &kendra.DataSourceConfigurationArgs{
/// 				S3Configuration: &kendra.DataSourceConfigurationS3ConfigurationArgs{
/// 					AccessControlListConfiguration: &kendra.DataSourceConfigurationS3ConfigurationAccessControlListConfigurationArgs{
/// 						KeyPath: pulumi.Sprintf("s3://%v/path-1", exampleAwsS3Bucket.Id),
/// 					},
/// 					BucketName: pulumi.Any(exampleAwsS3Bucket.Id),
/// 				},
/// 			},
/// 			IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// 			Name:    pulumi.String("example"),
/// 			Type:    pulumi.String("S3"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_kendra_datasource" "example" {
///   configuration = {
///     s3_configuration = {
///       access_control_list_configuration = {
///         key_path ="s3://${exampleAwsS3Bucket.id}/path-1"
///       }
///       bucket_name = exampleAwsS3Bucket.id
///     }
///   }
///   index_id = exampleAwsKendraIndex.id
///   name     = "example"
///   type     = "S3"
///   role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationS3ConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationS3ConfigurationAccessControlListConfigurationArgs;
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
///         var example = new DataSource("example", DataSourceArgs.builder()
///             .configuration(DataSourceConfigurationArgs.builder()
///                 .s3Configuration(DataSourceConfigurationS3ConfigurationArgs.builder()
///                     .accessControlListConfiguration(DataSourceConfigurationS3ConfigurationAccessControlListConfigurationArgs.builder()
///                         .keyPath(String.format("s3://%s/path-1", exampleAwsS3Bucket.id()))
///                         .build())
///                     .bucketName(exampleAwsS3Bucket.id())
///                     .build())
///                 .build())
///             .indexId(exampleAwsKendraIndex.id())
///             .name("example")
///             .type("S3")
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:DataSource
///     properties:
///       configuration:
///         s3Configuration:
///           accessControlListConfiguration:
///             keyPath: s3://${exampleAwsS3Bucket.id}/path-1
///           bucketName: ${exampleAwsS3Bucket.id}
///       indexId: ${exampleAwsKendraIndex.id}
///       name: example
///       type: S3
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ### With Documents Metadata Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
///     configuration: {
///         s3Configuration: {
///             documentsMetadataConfiguration: {
///                 s3Prefix: "example",
///             },
///             bucketName: exampleAwsS3Bucket.id,
///             exclusionPatterns: ["example"],
///             inclusionPatterns: ["hello"],
///             inclusionPrefixes: ["world"],
///         },
///     },
///     indexId: exampleAwsKendraIndex.id,
///     name: "example",
///     type: "S3",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
///     configuration={
///         "s3_configuration": {
///             "documents_metadata_configuration": {
///                 "s3_prefix": "example",
///             },
///             "bucket_name": example_aws_s3_bucket["id"],
///             "exclusion_patterns": ["example"],
///             "inclusion_patterns": ["hello"],
///             "inclusion_prefixes": ["world"],
///         },
///     },
///     index_id=example_aws_kendra_index["id"],
///     name="example",
///     type="S3",
///     role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kendra.DataSource("example", new()
///     {
///         Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationArgs
///         {
///             S3Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationS3ConfigurationArgs
///             {
///                 DocumentsMetadataConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationS3ConfigurationDocumentsMetadataConfigurationArgs
///                 {
///                     S3Prefix = "example",
///                 },
///                 BucketName = exampleAwsS3Bucket.Id,
///                 ExclusionPatterns = new[]
///                 {
///                     "example",
///                 },
///                 InclusionPatterns = new[]
///                 {
///                     "hello",
///                 },
///                 InclusionPrefixes = new[]
///                 {
///                     "world",
///                 },
///             },
///         },
///         IndexId = exampleAwsKendraIndex.Id,
///         Name = "example",
///         Type = "S3",
///         RoleArn = exampleAwsIamRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// 			Configuration: &kendra.DataSourceConfigurationArgs{
/// 				S3Configuration: &kendra.DataSourceConfigurationS3ConfigurationArgs{
/// 					DocumentsMetadataConfiguration: &kendra.DataSourceConfigurationS3ConfigurationDocumentsMetadataConfigurationArgs{
/// 						S3Prefix: pulumi.String("example"),
/// 					},
/// 					BucketName: pulumi.Any(exampleAwsS3Bucket.Id),
/// 					ExclusionPatterns: pulumi.StringArray{
/// 						pulumi.String("example"),
/// 					},
/// 					InclusionPatterns: pulumi.StringArray{
/// 						pulumi.String("hello"),
/// 					},
/// 					InclusionPrefixes: pulumi.StringArray{
/// 						pulumi.String("world"),
/// 					},
/// 				},
/// 			},
/// 			IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// 			Name:    pulumi.String("example"),
/// 			Type:    pulumi.String("S3"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_kendra_datasource" "example" {
///   configuration = {
///     s3_configuration = {
///       documents_metadata_configuration = {
///         s3_prefix = "example"
///       }
///       bucket_name        = exampleAwsS3Bucket.id
///       exclusion_patterns = ["example"]
///       inclusion_patterns = ["hello"]
///       inclusion_prefixes = ["world"]
///     }
///   }
///   index_id = exampleAwsKendraIndex.id
///   name     = "example"
///   type     = "S3"
///   role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationS3ConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationS3ConfigurationDocumentsMetadataConfigurationArgs;
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
///         var example = new DataSource("example", DataSourceArgs.builder()
///             .configuration(DataSourceConfigurationArgs.builder()
///                 .s3Configuration(DataSourceConfigurationS3ConfigurationArgs.builder()
///                     .documentsMetadataConfiguration(DataSourceConfigurationS3ConfigurationDocumentsMetadataConfigurationArgs.builder()
///                         .s3Prefix("example")
///                         .build())
///                     .bucketName(exampleAwsS3Bucket.id())
///                     .exclusionPatterns("example")
///                     .inclusionPatterns("hello")
///                     .inclusionPrefixes("world")
///                     .build())
///                 .build())
///             .indexId(exampleAwsKendraIndex.id())
///             .name("example")
///             .type("S3")
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:DataSource
///     properties:
///       configuration:
///         s3Configuration:
///           documentsMetadataConfiguration:
///             s3Prefix: example
///           bucketName: ${exampleAwsS3Bucket.id}
///           exclusionPatterns:
///             - example
///           inclusionPatterns:
///             - hello
///           inclusionPrefixes:
///             - world
///       indexId: ${exampleAwsKendraIndex.id}
///       name: example
///       type: S3
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ### Web Crawler Connector
///
/// ### With Seed URLs
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
///     configuration: {
///         webCrawlerConfiguration: {
///             urls: {
///                 seedUrlConfiguration: {
///                     seedUrls: ["REPLACE_WITH_YOUR_URL"],
///                 },
///             },
///         },
///     },
///     indexId: exampleAwsKendraIndex.id,
///     name: "example",
///     type: "WEBCRAWLER",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
///     configuration={
///         "web_crawler_configuration": {
///             "urls": {
///                 "seed_url_configuration": {
///                     "seed_urls": ["REPLACE_WITH_YOUR_URL"],
///                 },
///             },
///         },
///     },
///     index_id=example_aws_kendra_index["id"],
///     name="example",
///     type="WEBCRAWLER",
///     role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kendra.DataSource("example", new()
///     {
///         Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationArgs
///         {
///             WebCrawlerConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationArgs
///             {
///                 Urls = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs
///                 {
///                     SeedUrlConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs
///                     {
///                         SeedUrls = new[]
///                         {
///                             "REPLACE_WITH_YOUR_URL",
///                         },
///                     },
///                 },
///             },
///         },
///         IndexId = exampleAwsKendraIndex.Id,
///         Name = "example",
///         Type = "WEBCRAWLER",
///         RoleArn = exampleAwsIamRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// 			Configuration: &kendra.DataSourceConfigurationArgs{
/// 				WebCrawlerConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationArgs{
/// 					Urls: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs{
/// 						SeedUrlConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs{
/// 							SeedUrls: pulumi.StringArray{
/// 								pulumi.String("REPLACE_WITH_YOUR_URL"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// 			Name:    pulumi.String("example"),
/// 			Type:    pulumi.String("WEBCRAWLER"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_kendra_datasource" "example" {
///   configuration = {
///     web_crawler_configuration = {
///       urls = {
///         seed_url_configuration = {
///           seed_urls = ["REPLACE_WITH_YOUR_URL"]
///         }
///       }
///     }
///   }
///   index_id = exampleAwsKendraIndex.id
///   name     = "example"
///   type     = "WEBCRAWLER"
///   role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs;
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
///         var example = new DataSource("example", DataSourceArgs.builder()
///             .configuration(DataSourceConfigurationArgs.builder()
///                 .webCrawlerConfiguration(DataSourceConfigurationWebCrawlerConfigurationArgs.builder()
///                     .urls(DataSourceConfigurationWebCrawlerConfigurationUrlsArgs.builder()
///                         .seedUrlConfiguration(DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs.builder()
///                             .seedUrls("REPLACE_WITH_YOUR_URL")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .indexId(exampleAwsKendraIndex.id())
///             .name("example")
///             .type("WEBCRAWLER")
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:DataSource
///     properties:
///       configuration:
///         webCrawlerConfiguration:
///           urls:
///             seedUrlConfiguration:
///               seedUrls:
///                 - REPLACE_WITH_YOUR_URL
///       indexId: ${exampleAwsKendraIndex.id}
///       name: example
///       type: WEBCRAWLER
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ### With Site Maps
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
///     configuration: {
///         webCrawlerConfiguration: {
///             urls: {
///                 siteMapsConfiguration: {
///                     siteMaps: ["REPLACE_WITH_YOUR_URL"],
///                 },
///             },
///         },
///     },
///     indexId: exampleAwsKendraIndex.id,
///     name: "example",
///     type: "WEBCRAWLER",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
///     configuration={
///         "web_crawler_configuration": {
///             "urls": {
///                 "site_maps_configuration": {
///                     "site_maps": ["REPLACE_WITH_YOUR_URL"],
///                 },
///             },
///         },
///     },
///     index_id=example_aws_kendra_index["id"],
///     name="example",
///     type="WEBCRAWLER",
///     role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kendra.DataSource("example", new()
///     {
///         Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationArgs
///         {
///             WebCrawlerConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationArgs
///             {
///                 Urls = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs
///                 {
///                     SiteMapsConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSiteMapsConfigurationArgs
///                     {
///                         SiteMaps = new[]
///                         {
///                             "REPLACE_WITH_YOUR_URL",
///                         },
///                     },
///                 },
///             },
///         },
///         IndexId = exampleAwsKendraIndex.Id,
///         Name = "example",
///         Type = "WEBCRAWLER",
///         RoleArn = exampleAwsIamRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// 			Configuration: &kendra.DataSourceConfigurationArgs{
/// 				WebCrawlerConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationArgs{
/// 					Urls: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs{
/// 						SiteMapsConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsSiteMapsConfigurationArgs{
/// 							SiteMaps: pulumi.StringArray{
/// 								pulumi.String("REPLACE_WITH_YOUR_URL"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// 			Name:    pulumi.String("example"),
/// 			Type:    pulumi.String("WEBCRAWLER"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_kendra_datasource" "example" {
///   configuration = {
///     web_crawler_configuration = {
///       urls = {
///         site_maps_configuration = {
///           site_maps = ["REPLACE_WITH_YOUR_URL"]
///         }
///       }
///     }
///   }
///   index_id = exampleAwsKendraIndex.id
///   name     = "example"
///   type     = "WEBCRAWLER"
///   role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSiteMapsConfigurationArgs;
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
///         var example = new DataSource("example", DataSourceArgs.builder()
///             .configuration(DataSourceConfigurationArgs.builder()
///                 .webCrawlerConfiguration(DataSourceConfigurationWebCrawlerConfigurationArgs.builder()
///                     .urls(DataSourceConfigurationWebCrawlerConfigurationUrlsArgs.builder()
///                         .siteMapsConfiguration(DataSourceConfigurationWebCrawlerConfigurationUrlsSiteMapsConfigurationArgs.builder()
///                             .siteMaps("REPLACE_WITH_YOUR_URL")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .indexId(exampleAwsKendraIndex.id())
///             .name("example")
///             .type("WEBCRAWLER")
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:DataSource
///     properties:
///       configuration:
///         webCrawlerConfiguration:
///           urls:
///             siteMapsConfiguration:
///               siteMaps:
///                 - REPLACE_WITH_YOUR_URL
///       indexId: ${exampleAwsKendraIndex.id}
///       name: example
///       type: WEBCRAWLER
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ### With Web Crawler Mode
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
///     configuration: {
///         webCrawlerConfiguration: {
///             urls: {
///                 seedUrlConfiguration: {
///                     webCrawlerMode: "SUBDOMAINS",
///                     seedUrls: ["REPLACE_WITH_YOUR_URL"],
///                 },
///             },
///         },
///     },
///     indexId: exampleAwsKendraIndex.id,
///     name: "example",
///     type: "WEBCRAWLER",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
///     configuration={
///         "web_crawler_configuration": {
///             "urls": {
///                 "seed_url_configuration": {
///                     "web_crawler_mode": "SUBDOMAINS",
///                     "seed_urls": ["REPLACE_WITH_YOUR_URL"],
///                 },
///             },
///         },
///     },
///     index_id=example_aws_kendra_index["id"],
///     name="example",
///     type="WEBCRAWLER",
///     role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kendra.DataSource("example", new()
///     {
///         Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationArgs
///         {
///             WebCrawlerConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationArgs
///             {
///                 Urls = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs
///                 {
///                     SeedUrlConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs
///                     {
///                         WebCrawlerMode = "SUBDOMAINS",
///                         SeedUrls = new[]
///                         {
///                             "REPLACE_WITH_YOUR_URL",
///                         },
///                     },
///                 },
///             },
///         },
///         IndexId = exampleAwsKendraIndex.Id,
///         Name = "example",
///         Type = "WEBCRAWLER",
///         RoleArn = exampleAwsIamRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// 			Configuration: &kendra.DataSourceConfigurationArgs{
/// 				WebCrawlerConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationArgs{
/// 					Urls: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs{
/// 						SeedUrlConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs{
/// 							WebCrawlerMode: pulumi.String("SUBDOMAINS"),
/// 							SeedUrls: pulumi.StringArray{
/// 								pulumi.String("REPLACE_WITH_YOUR_URL"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// 			Name:    pulumi.String("example"),
/// 			Type:    pulumi.String("WEBCRAWLER"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_kendra_datasource" "example" {
///   configuration = {
///     web_crawler_configuration = {
///       urls = {
///         seed_url_configuration = {
///           web_crawler_mode = "SUBDOMAINS"
///           seed_urls        = ["REPLACE_WITH_YOUR_URL"]
///         }
///       }
///     }
///   }
///   index_id = exampleAwsKendraIndex.id
///   name     = "example"
///   type     = "WEBCRAWLER"
///   role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs;
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
///         var example = new DataSource("example", DataSourceArgs.builder()
///             .configuration(DataSourceConfigurationArgs.builder()
///                 .webCrawlerConfiguration(DataSourceConfigurationWebCrawlerConfigurationArgs.builder()
///                     .urls(DataSourceConfigurationWebCrawlerConfigurationUrlsArgs.builder()
///                         .seedUrlConfiguration(DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs.builder()
///                             .webCrawlerMode("SUBDOMAINS")
///                             .seedUrls("REPLACE_WITH_YOUR_URL")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .indexId(exampleAwsKendraIndex.id())
///             .name("example")
///             .type("WEBCRAWLER")
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:DataSource
///     properties:
///       configuration:
///         webCrawlerConfiguration:
///           urls:
///             seedUrlConfiguration:
///               webCrawlerMode: SUBDOMAINS
///               seedUrls:
///                 - REPLACE_WITH_YOUR_URL
///       indexId: ${exampleAwsKendraIndex.id}
///       name: example
///       type: WEBCRAWLER
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ### With Authentication Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
///     configuration: {
///         webCrawlerConfiguration: {
///             authenticationConfiguration: {
///                 basicAuthentications: [{
///                     credentials: exampleAwsSecretsmanagerSecret.arn,
///                     host: "a.example.com",
///                     port: 443,
///                 }],
///             },
///             urls: {
///                 seedUrlConfiguration: {
///                     seedUrls: ["REPLACE_WITH_YOUR_URL"],
///                 },
///             },
///         },
///     },
///     indexId: exampleAwsKendraIndex.id,
///     name: "example",
///     type: "WEBCRAWLER",
///     roleArn: exampleAwsIamRole.arn,
/// }, {
///     dependsOn: [exampleAwsSecretsmanagerSecretVersion],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
///     configuration={
///         "web_crawler_configuration": {
///             "authentication_configuration": {
///                 "basic_authentications": [{
///                     "credentials": example_aws_secretsmanager_secret["arn"],
///                     "host": "a.example.com",
///                     "port": 443,
///                 }],
///             },
///             "urls": {
///                 "seed_url_configuration": {
///                     "seed_urls": ["REPLACE_WITH_YOUR_URL"],
///                 },
///             },
///         },
///     },
///     index_id=example_aws_kendra_index["id"],
///     name="example",
///     type="WEBCRAWLER",
///     role_arn=example_aws_iam_role["arn"],
///     opts = pulumi.ResourceOptions(depends_on=[example_aws_secretsmanager_secret_version]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kendra.DataSource("example", new()
///     {
///         Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationArgs
///         {
///             WebCrawlerConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationArgs
///             {
///                 AuthenticationConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationArgs
///                 {
///                     BasicAuthentications = new[]
///                     {
///                         new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthenticationArgs
///                         {
///                             Credentials = exampleAwsSecretsmanagerSecret.Arn,
///                             Host = "a.example.com",
///                             Port = 443,
///                         },
///                     },
///                 },
///                 Urls = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs
///                 {
///                     SeedUrlConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs
///                     {
///                         SeedUrls = new[]
///                         {
///                             "REPLACE_WITH_YOUR_URL",
///                         },
///                     },
///                 },
///             },
///         },
///         IndexId = exampleAwsKendraIndex.Id,
///         Name = "example",
///         Type = "WEBCRAWLER",
///         RoleArn = exampleAwsIamRole.Arn,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAwsSecretsmanagerSecretVersion,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// 			Configuration: &kendra.DataSourceConfigurationArgs{
/// 				WebCrawlerConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationArgs{
/// 					AuthenticationConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationArgs{
/// 						BasicAuthentications: kendra.DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthenticationArray{
/// 							&kendra.DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthenticationArgs{
/// 								Credentials: pulumi.Any(exampleAwsSecretsmanagerSecret.Arn),
/// 								Host:        pulumi.String("a.example.com"),
/// 								Port:        pulumi.Int(443),
/// 							},
/// 						},
/// 					},
/// 					Urls: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs{
/// 						SeedUrlConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs{
/// 							SeedUrls: pulumi.StringArray{
/// 								pulumi.String("REPLACE_WITH_YOUR_URL"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// 			Name:    pulumi.String("example"),
/// 			Type:    pulumi.String("WEBCRAWLER"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAwsSecretsmanagerSecretVersion,
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
/// resource "aws_kendra_datasource" "example" {
///   depends_on = [exampleAwsSecretsmanagerSecretVersion]
///   configuration = {
///     web_crawler_configuration = {
///       authentication_configuration = {
///         basic_authentications = [{
///           "credentials" = exampleAwsSecretsmanagerSecret.arn
///           "host"        = "a.example.com"
///           "port"        = "443"
///         }]
///       }
///       urls = {
///         seed_url_configuration = {
///           seed_urls = ["REPLACE_WITH_YOUR_URL"]
///         }
///       }
///     }
///   }
///   index_id = exampleAwsKendraIndex.id
///   name     = "example"
///   type     = "WEBCRAWLER"
///   role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthenticationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs;
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
///         var example = new DataSource("example", DataSourceArgs.builder()
///             .configuration(DataSourceConfigurationArgs.builder()
///                 .webCrawlerConfiguration(DataSourceConfigurationWebCrawlerConfigurationArgs.builder()
///                     .authenticationConfiguration(DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationArgs.builder()
///                         .basicAuthentications(DataSourceConfigurationWebCrawlerConfigurationAuthenticationConfigurationBasicAuthenticationArgs.builder()
///                             .credentials(exampleAwsSecretsmanagerSecret.arn())
///                             .host("a.example.com")
///                             .port(443)
///                             .build())
///                         .build())
///                     .urls(DataSourceConfigurationWebCrawlerConfigurationUrlsArgs.builder()
///                         .seedUrlConfiguration(DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs.builder()
///                             .seedUrls("REPLACE_WITH_YOUR_URL")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .indexId(exampleAwsKendraIndex.id())
///             .name("example")
///             .type("WEBCRAWLER")
///             .roleArn(exampleAwsIamRole.arn())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAwsSecretsmanagerSecretVersion)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:DataSource
///     properties:
///       configuration:
///         webCrawlerConfiguration:
///           authenticationConfiguration:
///             basicAuthentications:
///               - credentials: ${exampleAwsSecretsmanagerSecret.arn}
///                 host: a.example.com
///                 port: '443'
///           urls:
///             seedUrlConfiguration:
///               seedUrls:
///                 - REPLACE_WITH_YOUR_URL
///       indexId: ${exampleAwsKendraIndex.id}
///       name: example
///       type: WEBCRAWLER
///       roleArn: ${exampleAwsIamRole.arn}
///     options:
///       dependsOn:
///         - ${exampleAwsSecretsmanagerSecretVersion}
/// ```
///
///
/// ### With Crawl Depth
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
///     configuration: {
///         webCrawlerConfiguration: {
///             urls: {
///                 seedUrlConfiguration: {
///                     seedUrls: ["REPLACE_WITH_YOUR_URL"],
///                 },
///             },
///             crawlDepth: 3,
///         },
///     },
///     indexId: exampleAwsKendraIndex.id,
///     name: "example",
///     type: "WEBCRAWLER",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
///     configuration={
///         "web_crawler_configuration": {
///             "urls": {
///                 "seed_url_configuration": {
///                     "seed_urls": ["REPLACE_WITH_YOUR_URL"],
///                 },
///             },
///             "crawl_depth": 3,
///         },
///     },
///     index_id=example_aws_kendra_index["id"],
///     name="example",
///     type="WEBCRAWLER",
///     role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kendra.DataSource("example", new()
///     {
///         Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationArgs
///         {
///             WebCrawlerConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationArgs
///             {
///                 Urls = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs
///                 {
///                     SeedUrlConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs
///                     {
///                         SeedUrls = new[]
///                         {
///                             "REPLACE_WITH_YOUR_URL",
///                         },
///                     },
///                 },
///                 CrawlDepth = 3,
///             },
///         },
///         IndexId = exampleAwsKendraIndex.Id,
///         Name = "example",
///         Type = "WEBCRAWLER",
///         RoleArn = exampleAwsIamRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// 			Configuration: &kendra.DataSourceConfigurationArgs{
/// 				WebCrawlerConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationArgs{
/// 					Urls: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs{
/// 						SeedUrlConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs{
/// 							SeedUrls: pulumi.StringArray{
/// 								pulumi.String("REPLACE_WITH_YOUR_URL"),
/// 							},
/// 						},
/// 					},
/// 					CrawlDepth: pulumi.Int(3),
/// 				},
/// 			},
/// 			IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// 			Name:    pulumi.String("example"),
/// 			Type:    pulumi.String("WEBCRAWLER"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_kendra_datasource" "example" {
///   configuration = {
///     web_crawler_configuration = {
///       urls = {
///         seed_url_configuration = {
///           seed_urls = ["REPLACE_WITH_YOUR_URL"]
///         }
///       }
///       crawl_depth = 3
///     }
///   }
///   index_id = exampleAwsKendraIndex.id
///   name     = "example"
///   type     = "WEBCRAWLER"
///   role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs;
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
///         var example = new DataSource("example", DataSourceArgs.builder()
///             .configuration(DataSourceConfigurationArgs.builder()
///                 .webCrawlerConfiguration(DataSourceConfigurationWebCrawlerConfigurationArgs.builder()
///                     .urls(DataSourceConfigurationWebCrawlerConfigurationUrlsArgs.builder()
///                         .seedUrlConfiguration(DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs.builder()
///                             .seedUrls("REPLACE_WITH_YOUR_URL")
///                             .build())
///                         .build())
///                     .crawlDepth(3)
///                     .build())
///                 .build())
///             .indexId(exampleAwsKendraIndex.id())
///             .name("example")
///             .type("WEBCRAWLER")
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:DataSource
///     properties:
///       configuration:
///         webCrawlerConfiguration:
///           urls:
///             seedUrlConfiguration:
///               seedUrls:
///                 - REPLACE_WITH_YOUR_URL
///           crawlDepth: 3
///       indexId: ${exampleAwsKendraIndex.id}
///       name: example
///       type: WEBCRAWLER
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ### With Max Links Per Page
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
///     configuration: {
///         webCrawlerConfiguration: {
///             urls: {
///                 seedUrlConfiguration: {
///                     seedUrls: ["REPLACE_WITH_YOUR_URL"],
///                 },
///             },
///             maxLinksPerPage: 100,
///         },
///     },
///     indexId: exampleAwsKendraIndex.id,
///     name: "example",
///     type: "WEBCRAWLER",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
///     configuration={
///         "web_crawler_configuration": {
///             "urls": {
///                 "seed_url_configuration": {
///                     "seed_urls": ["REPLACE_WITH_YOUR_URL"],
///                 },
///             },
///             "max_links_per_page": 100,
///         },
///     },
///     index_id=example_aws_kendra_index["id"],
///     name="example",
///     type="WEBCRAWLER",
///     role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kendra.DataSource("example", new()
///     {
///         Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationArgs
///         {
///             WebCrawlerConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationArgs
///             {
///                 Urls = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs
///                 {
///                     SeedUrlConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs
///                     {
///                         SeedUrls = new[]
///                         {
///                             "REPLACE_WITH_YOUR_URL",
///                         },
///                     },
///                 },
///                 MaxLinksPerPage = 100,
///             },
///         },
///         IndexId = exampleAwsKendraIndex.Id,
///         Name = "example",
///         Type = "WEBCRAWLER",
///         RoleArn = exampleAwsIamRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// 			Configuration: &kendra.DataSourceConfigurationArgs{
/// 				WebCrawlerConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationArgs{
/// 					Urls: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs{
/// 						SeedUrlConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs{
/// 							SeedUrls: pulumi.StringArray{
/// 								pulumi.String("REPLACE_WITH_YOUR_URL"),
/// 							},
/// 						},
/// 					},
/// 					MaxLinksPerPage: pulumi.Int(100),
/// 				},
/// 			},
/// 			IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// 			Name:    pulumi.String("example"),
/// 			Type:    pulumi.String("WEBCRAWLER"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_kendra_datasource" "example" {
///   configuration = {
///     web_crawler_configuration = {
///       urls = {
///         seed_url_configuration = {
///           seed_urls = ["REPLACE_WITH_YOUR_URL"]
///         }
///       }
///       max_links_per_page = 100
///     }
///   }
///   index_id = exampleAwsKendraIndex.id
///   name     = "example"
///   type     = "WEBCRAWLER"
///   role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs;
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
///         var example = new DataSource("example", DataSourceArgs.builder()
///             .configuration(DataSourceConfigurationArgs.builder()
///                 .webCrawlerConfiguration(DataSourceConfigurationWebCrawlerConfigurationArgs.builder()
///                     .urls(DataSourceConfigurationWebCrawlerConfigurationUrlsArgs.builder()
///                         .seedUrlConfiguration(DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs.builder()
///                             .seedUrls("REPLACE_WITH_YOUR_URL")
///                             .build())
///                         .build())
///                     .maxLinksPerPage(100)
///                     .build())
///                 .build())
///             .indexId(exampleAwsKendraIndex.id())
///             .name("example")
///             .type("WEBCRAWLER")
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:DataSource
///     properties:
///       configuration:
///         webCrawlerConfiguration:
///           urls:
///             seedUrlConfiguration:
///               seedUrls:
///                 - REPLACE_WITH_YOUR_URL
///           maxLinksPerPage: 100
///       indexId: ${exampleAwsKendraIndex.id}
///       name: example
///       type: WEBCRAWLER
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ### With Max Urls Per Minute Crawl Rate
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
///     configuration: {
///         webCrawlerConfiguration: {
///             urls: {
///                 seedUrlConfiguration: {
///                     seedUrls: ["REPLACE_WITH_YOUR_URL"],
///                 },
///             },
///             maxUrlsPerMinuteCrawlRate: 300,
///         },
///     },
///     indexId: exampleAwsKendraIndex.id,
///     name: "example",
///     type: "WEBCRAWLER",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
///     configuration={
///         "web_crawler_configuration": {
///             "urls": {
///                 "seed_url_configuration": {
///                     "seed_urls": ["REPLACE_WITH_YOUR_URL"],
///                 },
///             },
///             "max_urls_per_minute_crawl_rate": 300,
///         },
///     },
///     index_id=example_aws_kendra_index["id"],
///     name="example",
///     type="WEBCRAWLER",
///     role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kendra.DataSource("example", new()
///     {
///         Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationArgs
///         {
///             WebCrawlerConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationArgs
///             {
///                 Urls = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs
///                 {
///                     SeedUrlConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs
///                     {
///                         SeedUrls = new[]
///                         {
///                             "REPLACE_WITH_YOUR_URL",
///                         },
///                     },
///                 },
///                 MaxUrlsPerMinuteCrawlRate = 300,
///             },
///         },
///         IndexId = exampleAwsKendraIndex.Id,
///         Name = "example",
///         Type = "WEBCRAWLER",
///         RoleArn = exampleAwsIamRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// 			Configuration: &kendra.DataSourceConfigurationArgs{
/// 				WebCrawlerConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationArgs{
/// 					Urls: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs{
/// 						SeedUrlConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs{
/// 							SeedUrls: pulumi.StringArray{
/// 								pulumi.String("REPLACE_WITH_YOUR_URL"),
/// 							},
/// 						},
/// 					},
/// 					MaxUrlsPerMinuteCrawlRate: pulumi.Int(300),
/// 				},
/// 			},
/// 			IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// 			Name:    pulumi.String("example"),
/// 			Type:    pulumi.String("WEBCRAWLER"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_kendra_datasource" "example" {
///   configuration = {
///     web_crawler_configuration = {
///       urls = {
///         seed_url_configuration = {
///           seed_urls = ["REPLACE_WITH_YOUR_URL"]
///         }
///       }
///       max_urls_per_minute_crawl_rate = 300
///     }
///   }
///   index_id = exampleAwsKendraIndex.id
///   name     = "example"
///   type     = "WEBCRAWLER"
///   role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs;
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
///         var example = new DataSource("example", DataSourceArgs.builder()
///             .configuration(DataSourceConfigurationArgs.builder()
///                 .webCrawlerConfiguration(DataSourceConfigurationWebCrawlerConfigurationArgs.builder()
///                     .urls(DataSourceConfigurationWebCrawlerConfigurationUrlsArgs.builder()
///                         .seedUrlConfiguration(DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs.builder()
///                             .seedUrls("REPLACE_WITH_YOUR_URL")
///                             .build())
///                         .build())
///                     .maxUrlsPerMinuteCrawlRate(300)
///                     .build())
///                 .build())
///             .indexId(exampleAwsKendraIndex.id())
///             .name("example")
///             .type("WEBCRAWLER")
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:DataSource
///     properties:
///       configuration:
///         webCrawlerConfiguration:
///           urls:
///             seedUrlConfiguration:
///               seedUrls:
///                 - REPLACE_WITH_YOUR_URL
///           maxUrlsPerMinuteCrawlRate: 300
///       indexId: ${exampleAwsKendraIndex.id}
///       name: example
///       type: WEBCRAWLER
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ### With Proxy Configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
///     configuration: {
///         webCrawlerConfiguration: {
///             proxyConfiguration: {
///                 credentials: exampleAwsSecretsmanagerSecret.arn,
///                 host: "a.example.com",
///                 port: 443,
///             },
///             urls: {
///                 seedUrlConfiguration: {
///                     seedUrls: ["REPLACE_WITH_YOUR_URL"],
///                 },
///             },
///         },
///     },
///     indexId: exampleAwsKendraIndex.id,
///     name: "example",
///     type: "WEBCRAWLER",
///     roleArn: exampleAwsIamRole.arn,
/// }, {
///     dependsOn: [exampleAwsSecretsmanagerSecretVersion],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
///     configuration={
///         "web_crawler_configuration": {
///             "proxy_configuration": {
///                 "credentials": example_aws_secretsmanager_secret["arn"],
///                 "host": "a.example.com",
///                 "port": 443,
///             },
///             "urls": {
///                 "seed_url_configuration": {
///                     "seed_urls": ["REPLACE_WITH_YOUR_URL"],
///                 },
///             },
///         },
///     },
///     index_id=example_aws_kendra_index["id"],
///     name="example",
///     type="WEBCRAWLER",
///     role_arn=example_aws_iam_role["arn"],
///     opts = pulumi.ResourceOptions(depends_on=[example_aws_secretsmanager_secret_version]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kendra.DataSource("example", new()
///     {
///         Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationArgs
///         {
///             WebCrawlerConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationArgs
///             {
///                 ProxyConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationProxyConfigurationArgs
///                 {
///                     Credentials = exampleAwsSecretsmanagerSecret.Arn,
///                     Host = "a.example.com",
///                     Port = 443,
///                 },
///                 Urls = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs
///                 {
///                     SeedUrlConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs
///                     {
///                         SeedUrls = new[]
///                         {
///                             "REPLACE_WITH_YOUR_URL",
///                         },
///                     },
///                 },
///             },
///         },
///         IndexId = exampleAwsKendraIndex.Id,
///         Name = "example",
///         Type = "WEBCRAWLER",
///         RoleArn = exampleAwsIamRole.Arn,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAwsSecretsmanagerSecretVersion,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// 			Configuration: &kendra.DataSourceConfigurationArgs{
/// 				WebCrawlerConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationArgs{
/// 					ProxyConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationProxyConfigurationArgs{
/// 						Credentials: pulumi.Any(exampleAwsSecretsmanagerSecret.Arn),
/// 						Host:        pulumi.String("a.example.com"),
/// 						Port:        pulumi.Int(443),
/// 					},
/// 					Urls: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs{
/// 						SeedUrlConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs{
/// 							SeedUrls: pulumi.StringArray{
/// 								pulumi.String("REPLACE_WITH_YOUR_URL"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// 			Name:    pulumi.String("example"),
/// 			Type:    pulumi.String("WEBCRAWLER"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAwsSecretsmanagerSecretVersion,
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
/// resource "aws_kendra_datasource" "example" {
///   depends_on = [exampleAwsSecretsmanagerSecretVersion]
///   configuration = {
///     web_crawler_configuration = {
///       proxy_configuration = {
///         credentials = exampleAwsSecretsmanagerSecret.arn
///         host        = "a.example.com"
///         port        = "443"
///       }
///       urls = {
///         seed_url_configuration = {
///           seed_urls = ["REPLACE_WITH_YOUR_URL"]
///         }
///       }
///     }
///   }
///   index_id = exampleAwsKendraIndex.id
///   name     = "example"
///   type     = "WEBCRAWLER"
///   role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationProxyConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs;
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
///         var example = new DataSource("example", DataSourceArgs.builder()
///             .configuration(DataSourceConfigurationArgs.builder()
///                 .webCrawlerConfiguration(DataSourceConfigurationWebCrawlerConfigurationArgs.builder()
///                     .proxyConfiguration(DataSourceConfigurationWebCrawlerConfigurationProxyConfigurationArgs.builder()
///                         .credentials(exampleAwsSecretsmanagerSecret.arn())
///                         .host("a.example.com")
///                         .port(443)
///                         .build())
///                     .urls(DataSourceConfigurationWebCrawlerConfigurationUrlsArgs.builder()
///                         .seedUrlConfiguration(DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs.builder()
///                             .seedUrls("REPLACE_WITH_YOUR_URL")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .indexId(exampleAwsKendraIndex.id())
///             .name("example")
///             .type("WEBCRAWLER")
///             .roleArn(exampleAwsIamRole.arn())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAwsSecretsmanagerSecretVersion)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:DataSource
///     properties:
///       configuration:
///         webCrawlerConfiguration:
///           proxyConfiguration:
///             credentials: ${exampleAwsSecretsmanagerSecret.arn}
///             host: a.example.com
///             port: '443'
///           urls:
///             seedUrlConfiguration:
///               seedUrls:
///                 - REPLACE_WITH_YOUR_URL
///       indexId: ${exampleAwsKendraIndex.id}
///       name: example
///       type: WEBCRAWLER
///       roleArn: ${exampleAwsIamRole.arn}
///     options:
///       dependsOn:
///         - ${exampleAwsSecretsmanagerSecretVersion}
/// ```
///
///
/// ### With URL Exclusion and Inclusion Patterns
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
///     configuration: {
///         webCrawlerConfiguration: {
///             urls: {
///                 seedUrlConfiguration: {
///                     seedUrls: ["REPLACE_WITH_YOUR_URL"],
///                 },
///             },
///             urlExclusionPatterns: ["example"],
///             urlInclusionPatterns: ["hello"],
///         },
///     },
///     indexId: exampleAwsKendraIndex.id,
///     name: "example",
///     type: "WEBCRAWLER",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
///     configuration={
///         "web_crawler_configuration": {
///             "urls": {
///                 "seed_url_configuration": {
///                     "seed_urls": ["REPLACE_WITH_YOUR_URL"],
///                 },
///             },
///             "url_exclusion_patterns": ["example"],
///             "url_inclusion_patterns": ["hello"],
///         },
///     },
///     index_id=example_aws_kendra_index["id"],
///     name="example",
///     type="WEBCRAWLER",
///     role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kendra.DataSource("example", new()
///     {
///         Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationArgs
///         {
///             WebCrawlerConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationArgs
///             {
///                 Urls = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs
///                 {
///                     SeedUrlConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs
///                     {
///                         SeedUrls = new[]
///                         {
///                             "REPLACE_WITH_YOUR_URL",
///                         },
///                     },
///                 },
///                 UrlExclusionPatterns = new[]
///                 {
///                     "example",
///                 },
///                 UrlInclusionPatterns = new[]
///                 {
///                     "hello",
///                 },
///             },
///         },
///         IndexId = exampleAwsKendraIndex.Id,
///         Name = "example",
///         Type = "WEBCRAWLER",
///         RoleArn = exampleAwsIamRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// 			Configuration: &kendra.DataSourceConfigurationArgs{
/// 				WebCrawlerConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationArgs{
/// 					Urls: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs{
/// 						SeedUrlConfiguration: &kendra.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs{
/// 							SeedUrls: pulumi.StringArray{
/// 								pulumi.String("REPLACE_WITH_YOUR_URL"),
/// 							},
/// 						},
/// 					},
/// 					UrlExclusionPatterns: pulumi.StringArray{
/// 						pulumi.String("example"),
/// 					},
/// 					UrlInclusionPatterns: pulumi.StringArray{
/// 						pulumi.String("hello"),
/// 					},
/// 				},
/// 			},
/// 			IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// 			Name:    pulumi.String("example"),
/// 			Type:    pulumi.String("WEBCRAWLER"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_kendra_datasource" "example" {
///   configuration = {
///     web_crawler_configuration = {
///       urls = {
///         seed_url_configuration = {
///           seed_urls = ["REPLACE_WITH_YOUR_URL"]
///         }
///       }
///       url_exclusion_patterns = ["example"]
///       url_inclusion_patterns = ["hello"]
///     }
///   }
///   index_id = exampleAwsKendraIndex.id
///   name     = "example"
///   type     = "WEBCRAWLER"
///   role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs;
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
///         var example = new DataSource("example", DataSourceArgs.builder()
///             .configuration(DataSourceConfigurationArgs.builder()
///                 .webCrawlerConfiguration(DataSourceConfigurationWebCrawlerConfigurationArgs.builder()
///                     .urls(DataSourceConfigurationWebCrawlerConfigurationUrlsArgs.builder()
///                         .seedUrlConfiguration(DataSourceConfigurationWebCrawlerConfigurationUrlsSeedUrlConfigurationArgs.builder()
///                             .seedUrls("REPLACE_WITH_YOUR_URL")
///                             .build())
///                         .build())
///                     .urlExclusionPatterns("example")
///                     .urlInclusionPatterns("hello")
///                     .build())
///                 .build())
///             .indexId(exampleAwsKendraIndex.id())
///             .name("example")
///             .type("WEBCRAWLER")
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:DataSource
///     properties:
///       configuration:
///         webCrawlerConfiguration:
///           urls:
///             seedUrlConfiguration:
///               seedUrls:
///                 - REPLACE_WITH_YOUR_URL
///           urlExclusionPatterns:
///             - example
///           urlInclusionPatterns:
///             - hello
///       indexId: ${exampleAwsKendraIndex.id}
///       name: example
///       type: WEBCRAWLER
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ### With `WEBCRAWLERV2` Template
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kendra.DataSource("example", {
///     configuration: {
///         templateConfiguration: {
///             template: JSON.stringify({
///                 connectionConfiguration: {
///                     repositoryEndpointMetadata: {
///                         seedUrlConnections: [{
///                             seedUrl: "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kendra_index",
///                         }],
///                     },
///                 },
///                 additionalProperties: {
///                     inclusionURLIndexPatterns: ["https:\\/\\/registry[.]terraform[.]io\\/providers\\/hashicorp\\/aws\\/latest\\/docs\\/resources\\/kendra_index"],
///                 },
///                 version: "1.0.0",
///                 syncMode: "FULL_CRAWL",
///                 type: "WEBCRAWLERV2",
///             }),
///         },
///     },
///     indexId: exampleAwsKendraIndex.id,
///     name: "example",
///     type: "TEMPLATE",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.kendra.DataSource("example",
///     configuration={
///         "template_configuration": {
///             "template": json.dumps({
///                 "connectionConfiguration": {
///                     "repositoryEndpointMetadata": {
///                         "seedUrlConnections": [{
///                             "seedUrl": "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kendra_index",
///                         }],
///                     },
///                 },
///                 "additionalProperties": {
///                     "inclusionURLIndexPatterns": ["https:\\/\\/registry[.]terraform[.]io\\/providers\\/hashicorp\\/aws\\/latest\\/docs\\/resources\\/kendra_index"],
///                 },
///                 "version": "1.0.0",
///                 "syncMode": "FULL_CRAWL",
///                 "type": "WEBCRAWLERV2",
///             }),
///         },
///     },
///     index_id=example_aws_kendra_index["id"],
///     name="example",
///     type="TEMPLATE",
///     role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kendra.DataSource("example", new()
///     {
///         Configuration = new Aws.Kendra.Inputs.DataSourceConfigurationArgs
///         {
///             TemplateConfiguration = new Aws.Kendra.Inputs.DataSourceConfigurationTemplateConfigurationArgs
///             {
///                 Template = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["connectionConfiguration"] = new Dictionary<string, object?>
///                     {
///                         ["repositoryEndpointMetadata"] = new Dictionary<string, object?>
///                         {
///                             ["seedUrlConnections"] = new[]
///                             {
///                                 new Dictionary<string, object?>
///                                 {
///                                     ["seedUrl"] = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kendra_index",
///                                 },
///                             },
///                         },
///                     },
///                     ["additionalProperties"] = new Dictionary<string, object?>
///                     {
///                         ["inclusionURLIndexPatterns"] = new[]
///                         {
///                             "https:\\/\\/registry[.]terraform[.]io\\/providers\\/hashicorp\\/aws\\/latest\\/docs\\/resources\\/kendra_index",
///                         },
///                     },
///                     ["version"] = "1.0.0",
///                     ["syncMode"] = "FULL_CRAWL",
///                     ["type"] = "WEBCRAWLERV2",
///                 }),
///             },
///         },
///         IndexId = exampleAwsKendraIndex.Id,
///         Name = "example",
///         Type = "TEMPLATE",
///         RoleArn = exampleAwsIamRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kendra"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"connectionConfiguration": map[string]map[string][]map[string]string{
/// 				"repositoryEndpointMetadata": map[string][]map[string]string{
/// 					"seedUrlConnections": []map[string]string{
/// 						{
/// 							"seedUrl": "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kendra_index",
/// 						},
/// 					},
/// 				},
/// 			},
/// 			"additionalProperties": map[string][]string{
/// 				"inclusionURLIndexPatterns": []string{
/// 					"https:\\/\\/registry[.]terraform[.]io\\/providers\\/hashicorp\\/aws\\/latest\\/docs\\/resources\\/kendra_index",
/// 				},
/// 			},
/// 			"version":  "1.0.0",
/// 			"syncMode": "FULL_CRAWL",
/// 			"type":     "WEBCRAWLERV2",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = kendra.NewDataSource(ctx, "example", &kendra.DataSourceArgs{
/// 			Configuration: &kendra.DataSourceConfigurationArgs{
/// 				TemplateConfiguration: &kendra.DataSourceConfigurationTemplateConfigurationArgs{
/// 					Template: pulumi.String(json0),
/// 				},
/// 			},
/// 			IndexId: pulumi.Any(exampleAwsKendraIndex.Id),
/// 			Name:    pulumi.String("example"),
/// 			Type:    pulumi.String("TEMPLATE"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_kendra_datasource" "example" {
///   configuration = {
///     template_configuration = {
///       template = jsonencode({
///         "connectionConfiguration" = {
///           "repositoryEndpointMetadata" = {
///             "seedUrlConnections" = [{
///               "seedUrl" = "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kendra_index"
///             }]
///           }
///         }
///         "additionalProperties" = {
///           "inclusionURLIndexPatterns" = ["https:\\/\\/registry[.]terraform[.]io\\/providers\\/hashicorp\\/aws\\/latest\\/docs\\/resources\\/kendra_index"]
///         }
///         "version"  = "1.0.0"
///         "syncMode" = "FULL_CRAWL"
///         "type"     = "WEBCRAWLERV2"
///       })
///     }
///   }
///   index_id = exampleAwsKendraIndex.id
///   name     = "example"
///   type     = "TEMPLATE"
///   role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kendra.DataSource;
/// import com.pulumi.aws.kendra.DataSourceArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationArgs;
/// import com.pulumi.aws.kendra.inputs.DataSourceConfigurationTemplateConfigurationArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new DataSource("example", DataSourceArgs.builder()
///             .configuration(DataSourceConfigurationArgs.builder()
///                 .templateConfiguration(DataSourceConfigurationTemplateConfigurationArgs.builder()
///                     .template(serializeJson(
///                         jsonObject(
///                             jsonProperty("connectionConfiguration", jsonObject(
///                                 jsonProperty("repositoryEndpointMetadata", jsonObject(
///                                     jsonProperty("seedUrlConnections", jsonArray(jsonObject(
///                                         jsonProperty("seedUrl", "https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kendra_index")
///                                     )))
///                                 ))
///                             )),
///                             jsonProperty("additionalProperties", jsonObject(
///                                 jsonProperty("inclusionURLIndexPatterns", jsonArray("https:\\/\\/registry[.]terraform[.]io\\/providers\\/hashicorp\\/aws\\/latest\\/docs\\/resources\\/kendra_index"))
///                             )),
///                             jsonProperty("version", "1.0.0"),
///                             jsonProperty("syncMode", "FULL_CRAWL"),
///                             jsonProperty("type", "WEBCRAWLERV2")
///                         )))
///                     .build())
///                 .build())
///             .indexId(exampleAwsKendraIndex.id())
///             .name("example")
///             .type("TEMPLATE")
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kendra:DataSource
///     properties:
///       configuration:
///         templateConfiguration:
///           template:
///             fn::toJSON:
///               connectionConfiguration:
///                 repositoryEndpointMetadata:
///                   seedUrlConnections:
///                     - seedUrl: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kendra_index
///               additionalProperties:
///                 inclusionURLIndexPatterns:
///                   - https:\/\/registry[.]terraform[.]io\/providers\/hashicorp\/aws\/latest\/docs\/resources\/kendra_index
///               version: 1.0.0
///               syncMode: FULL_CRAWL
///               type: WEBCRAWLERV2
///       indexId: ${exampleAwsKendraIndex.id}
///       name: example
///       type: TEMPLATE
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Kendra Data Source using the unique identifiers of the dataSource and index separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:kendra/dataSource:DataSource example 1045d08d-66ef-4882-b3ed-dfb7df183e90/b34dfdf7-1f2b-4704-9581-79e00296845f
/// ```
class DataSource extends pulumi.CustomResource {
  /// ARN of the Data Source.
  late final pulumi.Output<String> arn;
  /// A block with the configuration information to connect to your Data Source repository. You can't specify the `configuration` block when the `type` parameter is set to `CUSTOM`. Detailed below.
  late final pulumi.Output<DataSourceConfiguration?> configuration;
  /// The Unix time stamp of when the Data Source was created.
  late final pulumi.Output<String> createdAt;
  /// A block with the configuration information for altering document metadata and content during the document ingestion process. For more information on how to create, modify and delete document metadata, or make other content alterations when you ingest documents into Amazon Kendra, see [Customizing document metadata during the ingestion process](https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html). Detailed below.
  late final pulumi.Output<DataSourceCustomDocumentEnrichmentConfiguration?> customDocumentEnrichmentConfiguration;
  /// The unique identifiers of the Data Source.
  late final pulumi.Output<String> dataSourceId;
  /// A description for the Data Source connector.
  late final pulumi.Output<String?> description;
  /// When the Status field value is `FAILED`, contains a description of the error that caused the Data Source to fail.
  late final pulumi.Output<String> errorMessage;
  /// The identifier of the index for your Amazon Kendra data source.
  late final pulumi.Output<String> indexId;
  /// The code for a language. This allows you to support a language for all documents when creating the Data Source connector. English is supported by default. For more information on supported languages, including their codes, see [Adding documents in languages other than English](https://docs.aws.amazon.com/kendra/latest/dg/in-adding-languages.html).
  late final pulumi.Output<String> languageCode;
  /// A name for your data source connector.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of a role with permission to access the data source connector. For more information, see [IAM roles for Amazon Kendra](https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html). You can't specify the `roleArn` parameter when the `type` parameter is set to `CUSTOM`. The `roleArn` parameter is required for all other data sources.
  late final pulumi.Output<String?> roleArn;
  /// Sets the frequency for Amazon Kendra to check the documents in your Data Source repository and update the index. If you don't set a schedule Amazon Kendra will not periodically update the index. You can call the `StartDataSourceSyncJob` API to update the index.
  late final pulumi.Output<String?> schedule;
  /// The current status of the Data Source. When the status is `ACTIVE` the Data Source is ready to use. When the status is `FAILED`, the `errorMessage` field contains the reason that the Data Source failed.
  late final pulumi.Output<String> status;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The type of data source repository. For an updated list of values, refer to [Valid Values for Type](https://docs.aws.amazon.com/kendra/latest/dg/API_CreateDataSource.html#Kendra-CreateDataSource-request-Type).
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;
  /// The Unix time stamp of when the Data Source was last updated.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [DataSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataSource]. {@macro pulumi_kendra_data_source_data_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataSource(
    String name, {
    DataSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kendra/dataSource:DataSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    configuration = registerOutput<DataSourceConfiguration?>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    customDocumentEnrichmentConfiguration = registerOutput<DataSourceCustomDocumentEnrichmentConfiguration?>('customDocumentEnrichmentConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataSourceCustomDocumentEnrichmentConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataSourceId = registerOutput<String>('dataSourceId');
    description = registerOutput<String?>('description');
    errorMessage = registerOutput<String>('errorMessage');
    indexId = registerOutput<String>('indexId');
    languageCode = registerOutput<String>('languageCode');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String?>('roleArn');
    schedule = registerOutput<String?>('schedule');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [DataSource] resource's state with the given [name] and [id].
  static DataSource get(
    String name,
    pulumi.Input<String> id, {
    DataSourceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DataSource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DataSource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:kendra/dataSource:DataSource',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    configuration = registerOutput<DataSourceConfiguration?>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    customDocumentEnrichmentConfiguration = registerOutput<DataSourceCustomDocumentEnrichmentConfiguration?>('customDocumentEnrichmentConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataSourceCustomDocumentEnrichmentConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataSourceId = registerOutput<String>('dataSourceId');
    description = registerOutput<String?>('description');
    errorMessage = registerOutput<String>('errorMessage');
    indexId = registerOutput<String>('indexId');
    languageCode = registerOutput<String>('languageCode');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String?>('roleArn');
    schedule = registerOutput<String?>('schedule');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Creates a typed reference to an existing [DataSource] resource.
  DataSource.reference(String urn)
    : super(
        'aws:kendra/dataSource:DataSource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    configuration = registerOutput<DataSourceConfiguration?>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createdAt = registerOutput<String>('createdAt');
    customDocumentEnrichmentConfiguration = registerOutput<DataSourceCustomDocumentEnrichmentConfiguration?>('customDocumentEnrichmentConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataSourceCustomDocumentEnrichmentConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataSourceId = registerOutput<String>('dataSourceId');
    description = registerOutput<String?>('description');
    errorMessage = registerOutput<String>('errorMessage');
    indexId = registerOutput<String>('indexId');
    languageCode = registerOutput<String>('languageCode');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String?>('roleArn');
    schedule = registerOutput<String?>('schedule');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
