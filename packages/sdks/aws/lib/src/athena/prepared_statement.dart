import 'package:pulumi/pulumi.dart' as pulumi;
import 'prepared_statement_args.dart';
import 'prepared_statement_state.dart';

/// Resource for managing an Athena Prepared Statement.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.s3.Bucket("test", {
///     bucket: "tf-test",
///     forceDestroy: true,
/// });
/// const testWorkgroup = new aws.athena.Workgroup("test", {name: "tf-test"});
/// const testDatabase = new aws.athena.Database("test", {
///     name: "example",
///     bucket: test.bucket,
/// });
/// const testPreparedStatement = new aws.athena.PreparedStatement("test", {
///     name: "tf_test",
///     queryStatement: pulumi.interpolate`SELECT * FROM ${testDatabase.name} WHERE x = ?`,
///     workgroup: testWorkgroup.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.s3.Bucket("test",
///     bucket="tf-test",
///     force_destroy=True)
/// test_workgroup = aws.athena.Workgroup("test", name="tf-test")
/// test_database = aws.athena.Database("test",
///     name="example",
///     bucket=test.bucket)
/// test_prepared_statement = aws.athena.PreparedStatement("test",
///     name="tf_test",
///     query_statement=test_database.name.apply(lambda name: f"SELECT * FROM {name} WHERE x = ?"),
///     workgroup=test_workgroup.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.S3.Bucket("test", new()
///     {
///         BucketName = "tf-test",
///         ForceDestroy = true,
///     });
///
///     var testWorkgroup = new Aws.Athena.Workgroup("test", new()
///     {
///         Name = "tf-test",
///     });
///
///     var testDatabase = new Aws.Athena.Database("test", new()
///     {
///         Name = "example",
///         Bucket = test.BucketName,
///     });
///
///     var testPreparedStatement = new Aws.Athena.PreparedStatement("test", new()
///     {
///         Name = "tf_test",
///         QueryStatement = testDatabase.Name.Apply(name => $"SELECT * FROM {name} WHERE x = ?"),
///         Workgroup = testWorkgroup.Name,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/athena"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := s3.NewBucket(ctx, "test", &s3.BucketArgs{
/// 			Bucket:       pulumi.String("tf-test"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testWorkgroup, err := athena.NewWorkgroup(ctx, "test", &athena.WorkgroupArgs{
/// 			Name: pulumi.String("tf-test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testDatabase, err := athena.NewDatabase(ctx, "test", &athena.DatabaseArgs{
/// 			Name:   pulumi.String("example"),
/// 			Bucket: test.Bucket,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = athena.NewPreparedStatement(ctx, "test", &athena.PreparedStatementArgs{
/// 			Name: pulumi.String("tf_test"),
/// 			QueryStatement: testDatabase.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("SELECT * FROM %v WHERE x = ?", name), nil
/// 			}).(pulumi.StringOutput),
/// 			Workgroup: testWorkgroup.Name,
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.athena.Workgroup;
/// import com.pulumi.aws.athena.WorkgroupArgs;
/// import com.pulumi.aws.athena.Database;
/// import com.pulumi.aws.athena.DatabaseArgs;
/// import com.pulumi.aws.athena.PreparedStatement;
/// import com.pulumi.aws.athena.PreparedStatementArgs;
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
///         var test = new Bucket("test", BucketArgs.builder()
///             .bucket("tf-test")
///             .forceDestroy(true)
///             .build());
///
///         var testWorkgroup = new Workgroup("testWorkgroup", WorkgroupArgs.builder()
///             .name("tf-test")
///             .build());
///
///         var testDatabase = new Database("testDatabase", DatabaseArgs.builder()
///             .name("example")
///             .bucket(test.bucket())
///             .build());
///
///         var testPreparedStatement = new PreparedStatement("testPreparedStatement", PreparedStatementArgs.builder()
///             .name("tf_test")
///             .queryStatement(testDatabase.name().applyValue(_name -> String.format("SELECT * FROM %s WHERE x = ?", _name)))
///             .workgroup(testWorkgroup.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:s3:Bucket
///     properties:
///       bucket: tf-test
///       forceDestroy: true
///   testWorkgroup:
///     type: aws:athena:Workgroup
///     name: test
///     properties:
///       name: tf-test
///   testDatabase:
///     type: aws:athena:Database
///     name: test
///     properties:
///       name: example
///       bucket: ${test.bucket}
///   testPreparedStatement:
///     type: aws:athena:PreparedStatement
///     name: test
///     properties:
///       name: tf_test
///       queryStatement: SELECT * FROM ${testDatabase.name} WHERE x = ?
///       workgroup: ${testWorkgroup.name}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Athena Prepared Statement using the `WORKGROUP-NAME/STATEMENT-NAME`. For example:
///
/// ```sh
/// $ pulumi import aws:athena/preparedStatement:PreparedStatement example 12345abcde/example
/// ```
class PreparedStatement extends pulumi.CustomResource {
  /// Brief explanation of prepared statement. Maximum length of 1024.
  late final pulumi.Output<String?> description;
  /// The name of the prepared statement. Maximum length of 256.
  late final pulumi.Output<String> name;
  /// The query string for the prepared statement.
  late final pulumi.Output<String> queryStatement;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The name of the workgroup to which the prepared statement belongs.
  late final pulumi.Output<String> workgroup;

  /// Creates a new [PreparedStatement].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PreparedStatement]. {@macro pulumi_athena_prepared_statement_prepared_statement_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PreparedStatement(
    String name, {
    PreparedStatementArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:athena/preparedStatement:PreparedStatement',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    queryStatement = registerOutput<String>('queryStatement');
    region = registerOutput<String>('region');
    workgroup = registerOutput<String>('workgroup');
  }

  /// Gets an existing [PreparedStatement] resource's state with the given [name] and [id].
  static PreparedStatement get(
    String name,
    pulumi.Input<String> id, {
    PreparedStatementState? state,
  }) {
    return PreparedStatement._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PreparedStatement._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:athena/preparedStatement:PreparedStatement',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    queryStatement = registerOutput<String>('queryStatement');
    region = registerOutput<String>('region');
    workgroup = registerOutput<String>('workgroup');
  }
}
