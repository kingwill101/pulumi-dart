import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_args.dart';
import 'database_state.dart';

/// Provides a Timestream database resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.timestreamwrite.Database("example", {databaseName: "database-example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.timestreamwrite.Database("example", database_name="database-example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.TimestreamWrite.Database("example", new()
///     {
///         DatabaseName = "database-example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/timestreamwrite"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := timestreamwrite.NewDatabase(ctx, "example", &timestreamwrite.DatabaseArgs{
/// 			DatabaseName: pulumi.String("database-example"),
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
/// resource "aws_timestreamwrite_database" "example" {
///   database_name = "database-example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.timestreamwrite.Database;
/// import com.pulumi.aws.timestreamwrite.DatabaseArgs;
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
///         var example = new Database("example", DatabaseArgs.builder()
///             .databaseName("database-example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:timestreamwrite:Database
///     properties:
///       databaseName: database-example
/// ```
///
///
/// ### Full usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.timestreamwrite.Database("example", {
///     databaseName: "database-example",
///     kmsKeyId: exampleAwsKmsKey.arn,
///     tags: {
///         Name: "value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.timestreamwrite.Database("example",
///     database_name="database-example",
///     kms_key_id=example_aws_kms_key["arn"],
///     tags={
///         "Name": "value",
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
///     var example = new Aws.TimestreamWrite.Database("example", new()
///     {
///         DatabaseName = "database-example",
///         KmsKeyId = exampleAwsKmsKey.Arn,
///         Tags =
///         {
///             { "Name", "value" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/timestreamwrite"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := timestreamwrite.NewDatabase(ctx, "example", &timestreamwrite.DatabaseArgs{
/// 			DatabaseName: pulumi.String("database-example"),
/// 			KmsKeyId:     pulumi.Any(exampleAwsKmsKey.Arn),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("value"),
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
/// resource "aws_timestreamwrite_database" "example" {
///   database_name = "database-example"
///   kms_key_id    = exampleAwsKmsKey.arn
///   tags = {
///     "Name" = "value"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.timestreamwrite.Database;
/// import com.pulumi.aws.timestreamwrite.DatabaseArgs;
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
///         var example = new Database("example", DatabaseArgs.builder()
///             .databaseName("database-example")
///             .kmsKeyId(exampleAwsKmsKey.arn())
///             .tags(Map.of("Name", "value"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:timestreamwrite:Database
///     properties:
///       databaseName: database-example
///       kmsKeyId: ${exampleAwsKmsKey.arn}
///       tags:
///         Name: value
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Timestream databases using the `databaseName`. For example:
///
/// ```sh
/// $ pulumi import aws:timestreamwrite/database:Database example example
/// ```
class Database extends pulumi.CustomResource {
  /// The ARN that uniquely identifies this database.
  late final pulumi.Output<String> arn;
  /// The name of the Timestream database. Minimum length of 3. Maximum length of 64.
  late final pulumi.Output<String> databaseName;
  /// The ARN (not Alias ARN) of the KMS key to be used to encrypt the data stored in the database. If the KMS key is not specified, the database will be encrypted with a Timestream managed KMS key located in your account. Refer to [AWS managed KMS keys](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk) for more info.
  late final pulumi.Output<String> kmsKeyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The total number of tables found within the Timestream database.
  late final pulumi.Output<int> tableCount;
  /// Map of tags to assign to this resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Database].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Database]. {@macro pulumi_timestreamwrite_database_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Database(
    String name, {
    DatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:timestreamwrite/database:Database',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    databaseName = registerOutput<String>('databaseName');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    region = registerOutput<String>('region');
    tableCount = registerOutput<int>('tableCount');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Database] resource's state with the given [name] and [id].
  static Database get(
    String name,
    pulumi.Input<String> id, {
    DatabaseState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Database._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Database._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:timestreamwrite/database:Database',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    databaseName = registerOutput<String>('databaseName');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    region = registerOutput<String>('region');
    tableCount = registerOutput<int>('tableCount');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Database] resource.
  Database.reference(String urn)
    : super(
        'aws:timestreamwrite/database:Database',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    databaseName = registerOutput<String>('databaseName');
    kmsKeyId = registerOutput<String>('kmsKeyId');
    region = registerOutput<String>('region');
    tableCount = registerOutput<int>('tableCount');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
