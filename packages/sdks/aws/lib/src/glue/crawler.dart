import 'package:pulumi/pulumi.dart' as pulumi;
import 'crawler_args.dart';
import 'crawler_catalog_target.dart';
import 'crawler_delta_target.dart';
import 'crawler_dynamodb_target.dart';
import 'crawler_hudi_target.dart';
import 'crawler_iceberg_target.dart';
import 'crawler_jdbc_target.dart';
import 'crawler_lake_formation_configuration.dart';
import 'crawler_lineage_configuration.dart';
import 'crawler_mongodb_target.dart';
import 'crawler_recrawl_policy.dart';
import 'crawler_s3_target.dart';
import 'crawler_schema_change_policy.dart';
import 'crawler_state.dart';

/// Manages a Glue Crawler. More information can be found in the [AWS Glue Developer Guide](https://docs.aws.amazon.com/glue/latest/dg/add-crawler.html)
///
/// ## Example Usage
///
/// ### DynamoDB Target Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Crawler("example", {
///     databaseName: exampleAwsGlueCatalogDatabase.name,
///     name: "example",
///     role: exampleAwsIamRole.arn,
///     dynamodbTargets: [{
///         path: "table-name",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Crawler("example",
///     database_name=example_aws_glue_catalog_database["name"],
///     name="example",
///     role=example_aws_iam_role["arn"],
///     dynamodb_targets=[{
///         "path": "table-name",
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
///     var example = new Aws.Glue.Crawler("example", new()
///     {
///         DatabaseName = exampleAwsGlueCatalogDatabase.Name,
///         Name = "example",
///         Role = exampleAwsIamRole.Arn,
///         DynamodbTargets = new[]
///         {
///             new Aws.Glue.Inputs.CrawlerDynamodbTargetArgs
///             {
///                 Path = "table-name",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.NewCrawler(ctx, "example", &glue.CrawlerArgs{
/// 			DatabaseName: pulumi.Any(exampleAwsGlueCatalogDatabase.Name),
/// 			Name:         pulumi.String("example"),
/// 			Role:         pulumi.Any(exampleAwsIamRole.Arn),
/// 			DynamodbTargets: glue.CrawlerDynamodbTargetArray{
/// 				&glue.CrawlerDynamodbTargetArgs{
/// 					Path: pulumi.String("table-name"),
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
/// import com.pulumi.aws.glue.Crawler;
/// import com.pulumi.aws.glue.CrawlerArgs;
/// import com.pulumi.aws.glue.inputs.CrawlerDynamodbTargetArgs;
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
///         var example = new Crawler("example", CrawlerArgs.builder()
///             .databaseName(exampleAwsGlueCatalogDatabase.name())
///             .name("example")
///             .role(exampleAwsIamRole.arn())
///             .dynamodbTargets(CrawlerDynamodbTargetArgs.builder()
///                 .path("table-name")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Crawler
///     properties:
///       databaseName: ${exampleAwsGlueCatalogDatabase.name}
///       name: example
///       role: ${exampleAwsIamRole.arn}
///       dynamodbTargets:
///         - path: table-name
/// ```
///
///
/// ### JDBC Target Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Crawler("example", {
///     databaseName: exampleAwsGlueCatalogDatabase.name,
///     name: "example",
///     role: exampleAwsIamRole.arn,
///     jdbcTargets: [{
///         connectionName: exampleAwsGlueConnection.name,
///         path: "database-name/%",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Crawler("example",
///     database_name=example_aws_glue_catalog_database["name"],
///     name="example",
///     role=example_aws_iam_role["arn"],
///     jdbc_targets=[{
///         "connection_name": example_aws_glue_connection["name"],
///         "path": "database-name/%",
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
///     var example = new Aws.Glue.Crawler("example", new()
///     {
///         DatabaseName = exampleAwsGlueCatalogDatabase.Name,
///         Name = "example",
///         Role = exampleAwsIamRole.Arn,
///         JdbcTargets = new[]
///         {
///             new Aws.Glue.Inputs.CrawlerJdbcTargetArgs
///             {
///                 ConnectionName = exampleAwsGlueConnection.Name,
///                 Path = "database-name/%",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.NewCrawler(ctx, "example", &glue.CrawlerArgs{
/// 			DatabaseName: pulumi.Any(exampleAwsGlueCatalogDatabase.Name),
/// 			Name:         pulumi.String("example"),
/// 			Role:         pulumi.Any(exampleAwsIamRole.Arn),
/// 			JdbcTargets: glue.CrawlerJdbcTargetArray{
/// 				&glue.CrawlerJdbcTargetArgs{
/// 					ConnectionName: pulumi.Any(exampleAwsGlueConnection.Name),
/// 					Path:           pulumi.String("database-name/%"),
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
/// import com.pulumi.aws.glue.Crawler;
/// import com.pulumi.aws.glue.CrawlerArgs;
/// import com.pulumi.aws.glue.inputs.CrawlerJdbcTargetArgs;
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
///         var example = new Crawler("example", CrawlerArgs.builder()
///             .databaseName(exampleAwsGlueCatalogDatabase.name())
///             .name("example")
///             .role(exampleAwsIamRole.arn())
///             .jdbcTargets(CrawlerJdbcTargetArgs.builder()
///                 .connectionName(exampleAwsGlueConnection.name())
///                 .path("database-name/%")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Crawler
///     properties:
///       databaseName: ${exampleAwsGlueCatalogDatabase.name}
///       name: example
///       role: ${exampleAwsIamRole.arn}
///       jdbcTargets:
///         - connectionName: ${exampleAwsGlueConnection.name}
///           path: database-name/%
/// ```
///
///
/// ### S3 Target Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Crawler("example", {
///     databaseName: exampleAwsGlueCatalogDatabase.name,
///     name: "example",
///     role: exampleAwsIamRole.arn,
///     s3Targets: [{
///         path: `s3://${exampleAwsS3Bucket.bucket}`,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Crawler("example",
///     database_name=example_aws_glue_catalog_database["name"],
///     name="example",
///     role=example_aws_iam_role["arn"],
///     s3_targets=[{
///         "path": f"s3://{example_aws_s3_bucket['bucket']}",
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
///     var example = new Aws.Glue.Crawler("example", new()
///     {
///         DatabaseName = exampleAwsGlueCatalogDatabase.Name,
///         Name = "example",
///         Role = exampleAwsIamRole.Arn,
///         S3Targets = new[]
///         {
///             new Aws.Glue.Inputs.CrawlerS3TargetArgs
///             {
///                 Path = $"s3://{exampleAwsS3Bucket.Bucket}",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.NewCrawler(ctx, "example", &glue.CrawlerArgs{
/// 			DatabaseName: pulumi.Any(exampleAwsGlueCatalogDatabase.Name),
/// 			Name:         pulumi.String("example"),
/// 			Role:         pulumi.Any(exampleAwsIamRole.Arn),
/// 			S3Targets: glue.CrawlerS3TargetArray{
/// 				&glue.CrawlerS3TargetArgs{
/// 					Path: pulumi.Sprintf("s3://%v", exampleAwsS3Bucket.Bucket),
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
/// import com.pulumi.aws.glue.Crawler;
/// import com.pulumi.aws.glue.CrawlerArgs;
/// import com.pulumi.aws.glue.inputs.CrawlerS3TargetArgs;
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
///         var example = new Crawler("example", CrawlerArgs.builder()
///             .databaseName(exampleAwsGlueCatalogDatabase.name())
///             .name("example")
///             .role(exampleAwsIamRole.arn())
///             .s3Targets(CrawlerS3TargetArgs.builder()
///                 .path(String.format("s3://%s", exampleAwsS3Bucket.bucket()))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Crawler
///     properties:
///       databaseName: ${exampleAwsGlueCatalogDatabase.name}
///       name: example
///       role: ${exampleAwsIamRole.arn}
///       s3Targets:
///         - path: s3://${exampleAwsS3Bucket.bucket}
/// ```
///
///
/// ### Catalog Target Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Crawler("example", {
///     databaseName: exampleAwsGlueCatalogDatabase.name,
///     name: "example",
///     role: exampleAwsIamRole.arn,
///     catalogTargets: [{
///         databaseName: exampleAwsGlueCatalogDatabase.name,
///         tables: [exampleAwsGlueCatalogTable.name],
///     }],
///     schemaChangePolicy: {
///         deleteBehavior: "LOG",
///     },
///     configuration: `{
///   \\"Version\\":1.0,
///   \\"Grouping\\": {
///     \\"TableGroupingPolicy\\": \\"CombineCompatibleSchemas\\"
///   }
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Crawler("example",
///     database_name=example_aws_glue_catalog_database["name"],
///     name="example",
///     role=example_aws_iam_role["arn"],
///     catalog_targets=[{
///         "database_name": example_aws_glue_catalog_database["name"],
///         "tables": [example_aws_glue_catalog_table["name"]],
///     }],
///     schema_change_policy={
///         "delete_behavior": "LOG",
///     },
///     configuration="""{
///   \"Version\":1.0,
///   \"Grouping\": {
///     \"TableGroupingPolicy\": \"CombineCompatibleSchemas\"
///   }
/// }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Glue.Crawler("example", new()
///     {
///         DatabaseName = exampleAwsGlueCatalogDatabase.Name,
///         Name = "example",
///         Role = exampleAwsIamRole.Arn,
///         CatalogTargets = new[]
///         {
///             new Aws.Glue.Inputs.CrawlerCatalogTargetArgs
///             {
///                 DatabaseName = exampleAwsGlueCatalogDatabase.Name,
///                 Tables = new[]
///                 {
///                     exampleAwsGlueCatalogTable.Name,
///                 },
///             },
///         },
///         SchemaChangePolicy = new Aws.Glue.Inputs.CrawlerSchemaChangePolicyArgs
///         {
///             DeleteBehavior = "LOG",
///         },
///         Configuration = @"{
///   \""Version\"":1.0,
///   \""Grouping\"": {
///     \""TableGroupingPolicy\"": \""CombineCompatibleSchemas\""
///   }
/// }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.NewCrawler(ctx, "example", &glue.CrawlerArgs{
/// 			DatabaseName: pulumi.Any(exampleAwsGlueCatalogDatabase.Name),
/// 			Name:         pulumi.String("example"),
/// 			Role:         pulumi.Any(exampleAwsIamRole.Arn),
/// 			CatalogTargets: glue.CrawlerCatalogTargetArray{
/// 				&glue.CrawlerCatalogTargetArgs{
/// 					DatabaseName: pulumi.Any(exampleAwsGlueCatalogDatabase.Name),
/// 					Tables: pulumi.StringArray{
/// 						exampleAwsGlueCatalogTable.Name,
/// 					},
/// 				},
/// 			},
/// 			SchemaChangePolicy: &glue.CrawlerSchemaChangePolicyArgs{
/// 				DeleteBehavior: pulumi.String("LOG"),
/// 			},
/// 			Configuration: pulumi.String(`{
///   \"Version\":1.0,
///   \"Grouping\": {
///     \"TableGroupingPolicy\": \"CombineCompatibleSchemas\"
///   }
/// }
/// `),
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
/// import com.pulumi.aws.glue.Crawler;
/// import com.pulumi.aws.glue.CrawlerArgs;
/// import com.pulumi.aws.glue.inputs.CrawlerCatalogTargetArgs;
/// import com.pulumi.aws.glue.inputs.CrawlerSchemaChangePolicyArgs;
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
///         var example = new Crawler("example", CrawlerArgs.builder()
///             .databaseName(exampleAwsGlueCatalogDatabase.name())
///             .name("example")
///             .role(exampleAwsIamRole.arn())
///             .catalogTargets(CrawlerCatalogTargetArgs.builder()
///                 .databaseName(exampleAwsGlueCatalogDatabase.name())
///                 .tables(exampleAwsGlueCatalogTable.name())
///                 .build())
///             .schemaChangePolicy(CrawlerSchemaChangePolicyArgs.builder()
///                 .deleteBehavior("LOG")
///                 .build())
///             .configuration("""
/// {
///   \"Version\":1.0,
///   \"Grouping\": {
///     \"TableGroupingPolicy\": \"CombineCompatibleSchemas\"
///   }
/// }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Crawler
///     properties:
///       databaseName: ${exampleAwsGlueCatalogDatabase.name}
///       name: example
///       role: ${exampleAwsIamRole.arn}
///       catalogTargets:
///         - databaseName: ${exampleAwsGlueCatalogDatabase.name}
///           tables:
///             - ${exampleAwsGlueCatalogTable.name}
///       schemaChangePolicy:
///         deleteBehavior: LOG
///       configuration: |
///         {
///           \"Version\":1.0,
///           \"Grouping\": {
///             \"TableGroupingPolicy\": \"CombineCompatibleSchemas\"
///           }
///         }
/// ```
///
///
/// ### MongoDB Target Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Crawler("example", {
///     databaseName: exampleAwsGlueCatalogDatabase.name,
///     name: "example",
///     role: exampleAwsIamRole.arn,
///     mongodbTargets: [{
///         connectionName: exampleAwsGlueConnection.name,
///         path: "database-name/%",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Crawler("example",
///     database_name=example_aws_glue_catalog_database["name"],
///     name="example",
///     role=example_aws_iam_role["arn"],
///     mongodb_targets=[{
///         "connection_name": example_aws_glue_connection["name"],
///         "path": "database-name/%",
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
///     var example = new Aws.Glue.Crawler("example", new()
///     {
///         DatabaseName = exampleAwsGlueCatalogDatabase.Name,
///         Name = "example",
///         Role = exampleAwsIamRole.Arn,
///         MongodbTargets = new[]
///         {
///             new Aws.Glue.Inputs.CrawlerMongodbTargetArgs
///             {
///                 ConnectionName = exampleAwsGlueConnection.Name,
///                 Path = "database-name/%",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.NewCrawler(ctx, "example", &glue.CrawlerArgs{
/// 			DatabaseName: pulumi.Any(exampleAwsGlueCatalogDatabase.Name),
/// 			Name:         pulumi.String("example"),
/// 			Role:         pulumi.Any(exampleAwsIamRole.Arn),
/// 			MongodbTargets: glue.CrawlerMongodbTargetArray{
/// 				&glue.CrawlerMongodbTargetArgs{
/// 					ConnectionName: pulumi.Any(exampleAwsGlueConnection.Name),
/// 					Path:           pulumi.String("database-name/%"),
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
/// import com.pulumi.aws.glue.Crawler;
/// import com.pulumi.aws.glue.CrawlerArgs;
/// import com.pulumi.aws.glue.inputs.CrawlerMongodbTargetArgs;
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
///         var example = new Crawler("example", CrawlerArgs.builder()
///             .databaseName(exampleAwsGlueCatalogDatabase.name())
///             .name("example")
///             .role(exampleAwsIamRole.arn())
///             .mongodbTargets(CrawlerMongodbTargetArgs.builder()
///                 .connectionName(exampleAwsGlueConnection.name())
///                 .path("database-name/%")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Crawler
///     properties:
///       databaseName: ${exampleAwsGlueCatalogDatabase.name}
///       name: example
///       role: ${exampleAwsIamRole.arn}
///       mongodbTargets:
///         - connectionName: ${exampleAwsGlueConnection.name}
///           path: database-name/%
/// ```
///
///
/// ### Configuration Settings Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const eventsCrawler = new aws.glue.Crawler("events_crawler", {
///     databaseName: glueDatabase.name,
///     schedule: "cron(0 1 * * ? *)",
///     name: `events_crawler_${environmentName}`,
///     role: glueRole.arn,
///     tags: tags,
///     configuration: JSON.stringify({
///         Grouping: {
///             TableGroupingPolicy: "CombineCompatibleSchemas",
///         },
///         CrawlerOutput: {
///             Partitions: {
///                 AddOrUpdateBehavior: "InheritFromTable",
///             },
///         },
///         Version: 1,
///     }),
///     s3Targets: [{
///         path: `s3://${dataLakeBucket.bucket}`,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// events_crawler = aws.glue.Crawler("events_crawler",
///     database_name=glue_database["name"],
///     schedule="cron(0 1 * * ? *)",
///     name=f"events_crawler_{environment_name}",
///     role=glue_role["arn"],
///     tags=tags,
///     configuration=json.dumps({
///         "Grouping": {
///             "TableGroupingPolicy": "CombineCompatibleSchemas",
///         },
///         "CrawlerOutput": {
///             "Partitions": {
///                 "AddOrUpdateBehavior": "InheritFromTable",
///             },
///         },
///         "Version": 1,
///     }),
///     s3_targets=[{
///         "path": f"s3://{data_lake_bucket['bucket']}",
///     }])
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
///     var eventsCrawler = new Aws.Glue.Crawler("events_crawler", new()
///     {
///         DatabaseName = glueDatabase.Name,
///         Schedule = "cron(0 1 * * ? *)",
///         Name = $"events_crawler_{environmentName}",
///         Role = glueRole.Arn,
///         Tags = tags,
///         Configuration = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Grouping"] = new Dictionary<string, object?>
///             {
///                 ["TableGroupingPolicy"] = "CombineCompatibleSchemas",
///             },
///             ["CrawlerOutput"] = new Dictionary<string, object?>
///             {
///                 ["Partitions"] = new Dictionary<string, object?>
///                 {
///                     ["AddOrUpdateBehavior"] = "InheritFromTable",
///                 },
///             },
///             ["Version"] = 1,
///         }),
///         S3Targets = new[]
///         {
///             new Aws.Glue.Inputs.CrawlerS3TargetArgs
///             {
///                 Path = $"s3://{dataLakeBucket.Bucket}",
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
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Grouping": map[string]interface{}{
/// 				"TableGroupingPolicy": "CombineCompatibleSchemas",
/// 			},
/// 			"CrawlerOutput": map[string]interface{}{
/// 				"Partitions": map[string]interface{}{
/// 					"AddOrUpdateBehavior": "InheritFromTable",
/// 				},
/// 			},
/// 			"Version": 1,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = glue.NewCrawler(ctx, "events_crawler", &glue.CrawlerArgs{
/// 			DatabaseName:  pulumi.Any(glueDatabase.Name),
/// 			Schedule:      pulumi.String("cron(0 1 * * ? *)"),
/// 			Name:          pulumi.Sprintf("events_crawler_%v", environmentName),
/// 			Role:          pulumi.Any(glueRole.Arn),
/// 			Tags:          pulumi.Any(tags),
/// 			Configuration: pulumi.String(json0),
/// 			S3Targets: glue.CrawlerS3TargetArray{
/// 				&glue.CrawlerS3TargetArgs{
/// 					Path: pulumi.Sprintf("s3://%v", dataLakeBucket.Bucket),
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
/// import com.pulumi.aws.glue.Crawler;
/// import com.pulumi.aws.glue.CrawlerArgs;
/// import com.pulumi.aws.glue.inputs.CrawlerS3TargetArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var eventsCrawler = new Crawler("eventsCrawler", CrawlerArgs.builder()
///             .databaseName(glueDatabase.name())
///             .schedule("cron(0 1 * * ? *)")
///             .name(String.format("events_crawler_%s", environmentName))
///             .role(glueRole.arn())
///             .tags(tags)
///             .configuration(serializeJson(
///                 jsonObject(
///                     jsonProperty("Grouping", jsonObject(
///                         jsonProperty("TableGroupingPolicy", "CombineCompatibleSchemas")
///                     )),
///                     jsonProperty("CrawlerOutput", jsonObject(
///                         jsonProperty("Partitions", jsonObject(
///                             jsonProperty("AddOrUpdateBehavior", "InheritFromTable")
///                         ))
///                     )),
///                     jsonProperty("Version", 1)
///                 )))
///             .s3Targets(CrawlerS3TargetArgs.builder()
///                 .path(String.format("s3://%s", dataLakeBucket.bucket()))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   eventsCrawler:
///     type: aws:glue:Crawler
///     name: events_crawler
///     properties:
///       databaseName: ${glueDatabase.name}
///       schedule: cron(0 1 * * ? *)
///       name: events_crawler_${environmentName}
///       role: ${glueRole.arn}
///       tags: ${tags}
///       configuration:
///         fn::toJSON:
///           Grouping:
///             TableGroupingPolicy: CombineCompatibleSchemas
///           CrawlerOutput:
///             Partitions:
///               AddOrUpdateBehavior: InheritFromTable
///           Version: 1
///       s3Targets:
///         - path: s3://${dataLakeBucket.bucket}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Crawlers using `name`. For example:
///
/// ```sh
/// $ pulumi import aws:glue/crawler:Crawler MyJob MyJob
/// ```
class Crawler extends pulumi.CustomResource {
  /// The ARN of the crawler
  late final pulumi.Output<String> arn;
  /// List of nested AWS Glue Data Catalog target arguments. See Catalog Target below.
  late final pulumi.Output<List<CrawlerCatalogTarget>?> catalogTargets;
  /// List of custom classifiers. By default, all AWS classifiers are included in a crawl, but these custom classifiers always override the default classifiers for a given classification.
  late final pulumi.Output<List<String>?> classifiers;
  /// JSON string of configuration information. For more details see [Setting Crawler Configuration Options](https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html).
  late final pulumi.Output<String?> configuration;
  /// Glue database where results are written.
  late final pulumi.Output<String> databaseName;
  /// List of nested Delta Lake target arguments. See Delta Target below.
  late final pulumi.Output<List<CrawlerDeltaTarget>?> deltaTargets;
  /// Description of the crawler.
  late final pulumi.Output<String?> description;
  /// List of nested DynamoDB target arguments. See Dynamodb Target below.
  late final pulumi.Output<List<CrawlerDynamodbTarget>?> dynamodbTargets;
  /// List of nested Hudi target arguments. See Iceberg Target below.
  late final pulumi.Output<List<CrawlerHudiTarget>?> hudiTargets;
  /// List of nested Iceberg target arguments. See Iceberg Target below.
  late final pulumi.Output<List<CrawlerIcebergTarget>?> icebergTargets;
  /// List of nested JDBC target arguments. See JDBC Target below.
  late final pulumi.Output<List<CrawlerJdbcTarget>?> jdbcTargets;
  /// Specifies Lake Formation configuration settings for the crawler. See Lake Formation Configuration below.
  late final pulumi.Output<CrawlerLakeFormationConfiguration?> lakeFormationConfiguration;
  /// Specifies data lineage configuration settings for the crawler. See Lineage Configuration below.
  late final pulumi.Output<CrawlerLineageConfiguration?> lineageConfiguration;
  /// List of nested MongoDB target arguments. See MongoDB Target below.
  late final pulumi.Output<List<CrawlerMongodbTarget>?> mongodbTargets;
  /// Name of the crawler.
  late final pulumi.Output<String> name;
  /// A policy that specifies whether to crawl the entire dataset again, or to crawl only folders that were added since the last crawler run.. See Recrawl Policy below.
  late final pulumi.Output<CrawlerRecrawlPolicy?> recrawlPolicy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The IAM role friendly name (including path without leading slash), or ARN of an IAM role, used by the crawler to access other resources.
  late final pulumi.Output<String> role;
  /// List of nested Amazon S3 target arguments. See S3 Target below.
  late final pulumi.Output<List<CrawlerS3Target>?> s3Targets;
  /// A cron expression used to specify the schedule. For more information, see [Time-Based Schedules for Jobs and Crawlers](https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html). For example, to run something every day at 12:15 UTC, you would specify: `cron(15 12 * * ? *)`.
  late final pulumi.Output<String?> schedule;
  /// Policy for the crawler's update and deletion behavior. See Schema Change Policy below.
  late final pulumi.Output<CrawlerSchemaChangePolicy?> schemaChangePolicy;
  /// The name of Security Configuration to be used by the crawler
  late final pulumi.Output<String?> securityConfiguration;
  /// The table prefix used for catalog tables that are created.
  late final pulumi.Output<String?> tablePrefix;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **NOTE:** Must specify at least one of `dynamodb_target`, `jdbc_target`, `s3_target`, `mongodb_target` or `catalog_target`.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Crawler].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Crawler]. {@macro pulumi_glue_crawler_crawler_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Crawler(
    String name, {
    CrawlerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/crawler:Crawler',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.catalogTargets = registerOutput<List<CrawlerCatalogTarget>?>('catalogTargets');
    this.classifiers = registerOutput<List<String>?>('classifiers');
    this.configuration = registerOutput<String?>('configuration');
    this.databaseName = registerOutput<String>('databaseName');
    this.deltaTargets = registerOutput<List<CrawlerDeltaTarget>?>('deltaTargets');
    this.description = registerOutput<String?>('description');
    this.dynamodbTargets = registerOutput<List<CrawlerDynamodbTarget>?>('dynamodbTargets');
    this.hudiTargets = registerOutput<List<CrawlerHudiTarget>?>('hudiTargets');
    this.icebergTargets = registerOutput<List<CrawlerIcebergTarget>?>('icebergTargets');
    this.jdbcTargets = registerOutput<List<CrawlerJdbcTarget>?>('jdbcTargets');
    this.lakeFormationConfiguration = registerOutput<CrawlerLakeFormationConfiguration?>('lakeFormationConfiguration');
    this.lineageConfiguration = registerOutput<CrawlerLineageConfiguration?>('lineageConfiguration');
    this.mongodbTargets = registerOutput<List<CrawlerMongodbTarget>?>('mongodbTargets');
    this.name = registerOutput<String>('name');
    this.recrawlPolicy = registerOutput<CrawlerRecrawlPolicy?>('recrawlPolicy');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
    this.s3Targets = registerOutput<List<CrawlerS3Target>?>('s3Targets');
    this.schedule = registerOutput<String?>('schedule');
    this.schemaChangePolicy = registerOutput<CrawlerSchemaChangePolicy?>('schemaChangePolicy');
    this.securityConfiguration = registerOutput<String?>('securityConfiguration');
    this.tablePrefix = registerOutput<String?>('tablePrefix');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Crawler] resource's state with the given [name] and [id].
  static Crawler get(
    String name,
    pulumi.Input<String> id, {
    CrawlerState? state,
  }) {
    return Crawler._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Crawler._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/crawler:Crawler',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.catalogTargets = registerOutput<List<CrawlerCatalogTarget>?>('catalogTargets');
    this.classifiers = registerOutput<List<String>?>('classifiers');
    this.configuration = registerOutput<String?>('configuration');
    this.databaseName = registerOutput<String>('databaseName');
    this.deltaTargets = registerOutput<List<CrawlerDeltaTarget>?>('deltaTargets');
    this.description = registerOutput<String?>('description');
    this.dynamodbTargets = registerOutput<List<CrawlerDynamodbTarget>?>('dynamodbTargets');
    this.hudiTargets = registerOutput<List<CrawlerHudiTarget>?>('hudiTargets');
    this.icebergTargets = registerOutput<List<CrawlerIcebergTarget>?>('icebergTargets');
    this.jdbcTargets = registerOutput<List<CrawlerJdbcTarget>?>('jdbcTargets');
    this.lakeFormationConfiguration = registerOutput<CrawlerLakeFormationConfiguration?>('lakeFormationConfiguration');
    this.lineageConfiguration = registerOutput<CrawlerLineageConfiguration?>('lineageConfiguration');
    this.mongodbTargets = registerOutput<List<CrawlerMongodbTarget>?>('mongodbTargets');
    this.name = registerOutput<String>('name');
    this.recrawlPolicy = registerOutput<CrawlerRecrawlPolicy?>('recrawlPolicy');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
    this.s3Targets = registerOutput<List<CrawlerS3Target>?>('s3Targets');
    this.schedule = registerOutput<String?>('schedule');
    this.schemaChangePolicy = registerOutput<CrawlerSchemaChangePolicy?>('schemaChangePolicy');
    this.securityConfiguration = registerOutput<String?>('securityConfiguration');
    this.tablePrefix = registerOutput<String?>('tablePrefix');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
