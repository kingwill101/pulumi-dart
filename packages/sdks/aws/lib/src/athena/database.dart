import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_acl_configuration.dart';
import 'database_args.dart';
import 'database_encryption_configuration.dart';
import 'database_state.dart';

/// Provides an Athena database.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example"});
/// const exampleDatabase = new aws.athena.Database("example", {
///     name: "database_name",
///     bucket: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example")
/// example_database = aws.athena.Database("example",
///     name="database_name",
///     bucket=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example",
///     });
///
///     var exampleDatabase = new Aws.Athena.Database("example", new()
///     {
///         Name = "database_name",
///         Bucket = example.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/athena"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = athena.NewDatabase(ctx, "example", &athena.DatabaseArgs{
/// 			Name:   pulumi.String("database_name"),
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
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
/// resource "aws_s3_bucket" "example" {
///   bucket = "example"
/// }
/// resource "aws_athena_database" "example" {
///   name   = "database_name"
///   bucket = aws_s3_bucket.example.id
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
/// import com.pulumi.aws.athena.Database;
/// import com.pulumi.aws.athena.DatabaseArgs;
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
///         var example = new Bucket("example", BucketArgs.builder()
///             .bucket("example")
///             .build());
///
///         var exampleDatabase = new Database("exampleDatabase", DatabaseArgs.builder()
///             .name("database_name")
///             .bucket(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:Bucket
///     properties:
///       bucket: example
///   exampleDatabase:
///     type: aws:athena:Database
///     name: example
///     properties:
///       name: database_name
///       bucket: ${example.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Athena Databases using their name. For example:
///
/// ```sh
/// $ pulumi import aws:athena/database:Database example example
/// ```
///
/// Certain resource arguments, like `encryptionConfiguration` and `bucket`, do not have an API method for reading the information after creation. If the argument is set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use `ignoreChanges` to hide the difference. For example:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.athena.Database("example", {
///     name: "database_name",
///     bucket: exampleAwsS3Bucket.id,
/// }, {
///     ignoreChanges: ["bucket"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.athena.Database("example",
///     name="database_name",
///     bucket=example_aws_s3_bucket["id"],
///     opts = pulumi.ResourceOptions(ignore_changes=["bucket"]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Athena.Database("example", new()
///     {
///         Name = "database_name",
///         Bucket = exampleAwsS3Bucket.Id,
///     }, new CustomResourceOptions
///     {
///         IgnoreChanges =
///         {
///             "bucket",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/athena"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := athena.NewDatabase(ctx, "example", &athena.DatabaseArgs{
/// 			Name:   pulumi.String("database_name"),
/// 			Bucket: pulumi.Any(exampleAwsS3Bucket.Id),
/// 		}, pulumi.IgnoreChanges([]string{
/// 			"bucket",
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
/// resource "aws_athena_database" "example" {
///   lifecycle {
///     ignore_changes = [bucket]
///   }
///   name   = "database_name"
///   bucket = exampleAwsS3Bucket.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.athena.Database;
/// import com.pulumi.aws.athena.DatabaseArgs;
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
///         var example = new Database("example", DatabaseArgs.builder()
///             .name("database_name")
///             .bucket(exampleAwsS3Bucket.id())
///             .build(), CustomResourceOptions.builder()
///                 .ignoreChanges("bucket")
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:athena:Database
///     properties:
///       name: database_name
///       bucket: ${exampleAwsS3Bucket.id}
///     options:
///       ignoreChanges:
///         - bucket
/// ```
class Database extends pulumi.CustomResource {
  /// That an Amazon S3 canned ACL should be set to control ownership of stored query results. See ACL Configuration below.
  late final pulumi.Output<DatabaseAclConfiguration?> aclConfiguration;
  /// Name of S3 bucket to save the results of the query execution.
  late final pulumi.Output<String?> bucket;
  /// Description of the database.
  late final pulumi.Output<String?> comment;
  /// Encryption key block AWS Athena uses to decrypt the data in S3, such as a KMS key. See Encryption Configuration below.
  late final pulumi.Output<DatabaseEncryptionConfiguration?> encryptionConfiguration;
  /// AWS account ID that you expect to be the owner of the Amazon S3 bucket.
  late final pulumi.Output<String?> expectedBucketOwner;
  /// Boolean that indicates all tables should be deleted from the database so that the database can be destroyed without error. The tables are *not* recoverable.
  late final pulumi.Output<bool?> forceDestroy;
  /// Name of the database to create.
  late final pulumi.Output<String> name;
  /// Key-value map of custom metadata properties for the database definition.
  late final pulumi.Output<Map<String, String>?> properties;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Name of the workgroup.
  late final pulumi.Output<String?> workgroup;

  /// Creates a new [Database].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Database]. {@macro pulumi_athena_database_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Database(
    String name, {
    DatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:athena/database:Database',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    aclConfiguration = registerOutput<DatabaseAclConfiguration?>('aclConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseAclConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bucket = registerOutput<String?>('bucket');
    comment = registerOutput<String?>('comment');
    encryptionConfiguration = registerOutput<DatabaseEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Map<String, String>?>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    region = registerOutput<String>('region');
    workgroup = registerOutput<String?>('workgroup');
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
          'aws:athena/database:Database',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aclConfiguration = registerOutput<DatabaseAclConfiguration?>('aclConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseAclConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bucket = registerOutput<String?>('bucket');
    comment = registerOutput<String?>('comment');
    encryptionConfiguration = registerOutput<DatabaseEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Map<String, String>?>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    region = registerOutput<String>('region');
    workgroup = registerOutput<String?>('workgroup');
  }

  /// Creates a typed reference to an existing [Database] resource.
  Database.reference(String urn)
    : super(
        'aws:athena/database:Database',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    aclConfiguration = registerOutput<DatabaseAclConfiguration?>('aclConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseAclConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    bucket = registerOutput<String?>('bucket');
    comment = registerOutput<String?>('comment');
    encryptionConfiguration = registerOutput<DatabaseEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    expectedBucketOwner = registerOutput<String?>('expectedBucketOwner');
    forceDestroy = registerOutput<bool?>('forceDestroy');
    this.name = registerOutput<String>('name');
    properties = registerOutput<Map<String, String>?>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    region = registerOutput<String>('region');
    workgroup = registerOutput<String?>('workgroup');
  }
}
