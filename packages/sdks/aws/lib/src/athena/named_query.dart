import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_query_args.dart';
import 'named_query_state.dart';

/// Provides an Athena Named Query resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const hoge = new aws.s3.Bucket("hoge", {bucket: "tf-test"});
/// const test = new aws.kms.Key("test", {
///     deletionWindowInDays: 7,
///     description: "Athena KMS Key",
/// });
/// const testWorkgroup = new aws.athena.Workgroup("test", {
///     configuration: {
///         resultConfiguration: {
///             encryptionConfiguration: {
///                 encryptionOption: "SSE_KMS",
///                 kmsKeyArn: test.arn,
///             },
///         },
///     },
///     name: "example",
/// });
/// const hogeDatabase = new aws.athena.Database("hoge", {
///     name: "users",
///     bucket: hoge.id,
/// });
/// const foo = new aws.athena.NamedQuery("foo", {
///     name: "bar",
///     workgroup: testWorkgroup.id,
///     database: hogeDatabase.name,
///     query: pulumi.interpolate`SELECT * FROM ${hogeDatabase.name} limit 10;`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// hoge = aws.s3.Bucket("hoge", bucket="tf-test")
/// test = aws.kms.Key("test",
///     deletion_window_in_days=7,
///     description="Athena KMS Key")
/// test_workgroup = aws.athena.Workgroup("test",
///     configuration={
///         "result_configuration": {
///             "encryption_configuration": {
///                 "encryption_option": "SSE_KMS",
///                 "kms_key_arn": test.arn,
///             },
///         },
///     },
///     name="example")
/// hoge_database = aws.athena.Database("hoge",
///     name="users",
///     bucket=hoge.id)
/// foo = aws.athena.NamedQuery("foo",
///     name="bar",
///     workgroup=test_workgroup.id,
///     database=hoge_database.name,
///     query=hoge_database.name.apply(lambda name: f"SELECT * FROM {name} limit 10;"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var hoge = new Aws.S3.Bucket("hoge", new()
///     {
///         BucketName = "tf-test",
///     });
///
///     var test = new Aws.Kms.Key("test", new()
///     {
///         DeletionWindowInDays = 7,
///         Description = "Athena KMS Key",
///     });
///
///     var testWorkgroup = new Aws.Athena.Workgroup("test", new()
///     {
///         Configuration = new Aws.Athena.Inputs.WorkgroupConfigurationArgs
///         {
///             ResultConfiguration = new Aws.Athena.Inputs.WorkgroupConfigurationResultConfigurationArgs
///             {
///                 EncryptionConfiguration = new Aws.Athena.Inputs.WorkgroupConfigurationResultConfigurationEncryptionConfigurationArgs
///                 {
///                     EncryptionOption = "SSE_KMS",
///                     KmsKeyArn = test.Arn,
///                 },
///             },
///         },
///         Name = "example",
///     });
///
///     var hogeDatabase = new Aws.Athena.Database("hoge", new()
///     {
///         Name = "users",
///         Bucket = hoge.Id,
///     });
///
///     var foo = new Aws.Athena.NamedQuery("foo", new()
///     {
///         Name = "bar",
///         Workgroup = testWorkgroup.Id,
///         Database = hogeDatabase.Name,
///         Query = hogeDatabase.Name.Apply(name => $"SELECT * FROM {name} limit 10;"),
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		hoge, err := s3.NewBucket(ctx, "hoge", &s3.BucketArgs{
/// 			Bucket: pulumi.String("tf-test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test, err := kms.NewKey(ctx, "test", &kms.KeyArgs{
/// 			DeletionWindowInDays: pulumi.Int(7),
/// 			Description:          pulumi.String("Athena KMS Key"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testWorkgroup, err := athena.NewWorkgroup(ctx, "test", &athena.WorkgroupArgs{
/// 			Configuration: &athena.WorkgroupConfigurationArgs{
/// 				ResultConfiguration: &athena.WorkgroupConfigurationResultConfigurationArgs{
/// 					EncryptionConfiguration: &athena.WorkgroupConfigurationResultConfigurationEncryptionConfigurationArgs{
/// 						EncryptionOption: pulumi.String("SSE_KMS"),
/// 						KmsKeyArn:        test.Arn,
/// 					},
/// 				},
/// 			},
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		hogeDatabase, err := athena.NewDatabase(ctx, "hoge", &athena.DatabaseArgs{
/// 			Name:   pulumi.String("users"),
/// 			Bucket: hoge.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = athena.NewNamedQuery(ctx, "foo", &athena.NamedQueryArgs{
/// 			Name:      pulumi.String("bar"),
/// 			Workgroup: testWorkgroup.ID().ToIDOutput().ToStringOutput(),
/// 			Database:  hogeDatabase.Name,
/// 			Query: hogeDatabase.Name.ApplyT(func(name string) (string, error) {
/// 				return fmt.Sprintf("SELECT * FROM %v limit 10;", name), nil
/// 			}).(pulumi.StringOutput),
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
/// resource "aws_s3_bucket" "hoge" {
///   bucket = "tf-test"
/// }
/// resource "aws_kms_key" "test" {
///   deletion_window_in_days = 7
///   description             = "Athena KMS Key"
/// }
/// resource "aws_athena_workgroup" "test" {
///   configuration = {
///     result_configuration = {
///       encryption_configuration = {
///         encryption_option = "SSE_KMS"
///         kms_key_arn       = aws_kms_key.test.arn
///       }
///     }
///   }
///   name = "example"
/// }
/// resource "aws_athena_database" "hoge" {
///   name   = "users"
///   bucket = aws_s3_bucket.hoge.id
/// }
/// resource "aws_athena_namedquery" "foo" {
///   name      = "bar"
///   workgroup = aws_athena_workgroup.test.id
///   database  = aws_athena_database.hoge.name
///   query     ="SELECT * FROM ${aws_athena_database.hoge.name} limit 10;"
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.athena.Workgroup;
/// import com.pulumi.aws.athena.WorkgroupArgs;
/// import com.pulumi.aws.athena.inputs.WorkgroupConfigurationArgs;
/// import com.pulumi.aws.athena.inputs.WorkgroupConfigurationResultConfigurationArgs;
/// import com.pulumi.aws.athena.inputs.WorkgroupConfigurationResultConfigurationEncryptionConfigurationArgs;
/// import com.pulumi.aws.athena.Database;
/// import com.pulumi.aws.athena.DatabaseArgs;
/// import com.pulumi.aws.athena.NamedQuery;
/// import com.pulumi.aws.athena.NamedQueryArgs;
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
///         var hoge = new Bucket("hoge", BucketArgs.builder()
///             .bucket("tf-test")
///             .build());
///
///         var test = new Key("test", KeyArgs.builder()
///             .deletionWindowInDays(7)
///             .description("Athena KMS Key")
///             .build());
///
///         var testWorkgroup = new Workgroup("testWorkgroup", WorkgroupArgs.builder()
///             .configuration(WorkgroupConfigurationArgs.builder()
///                 .resultConfiguration(WorkgroupConfigurationResultConfigurationArgs.builder()
///                     .encryptionConfiguration(WorkgroupConfigurationResultConfigurationEncryptionConfigurationArgs.builder()
///                         .encryptionOption("SSE_KMS")
///                         .kmsKeyArn(test.arn())
///                         .build())
///                     .build())
///                 .build())
///             .name("example")
///             .build());
///
///         var hogeDatabase = new Database("hogeDatabase", DatabaseArgs.builder()
///             .name("users")
///             .bucket(hoge.id())
///             .build());
///
///         var foo = new NamedQuery("foo", NamedQueryArgs.builder()
///             .name("bar")
///             .workgroup(testWorkgroup.id())
///             .database(hogeDatabase.name())
///             .query(hogeDatabase.name().applyValue(_name -> String.format("SELECT * FROM %s limit 10;", _name)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   hoge:
///     type: aws:s3:Bucket
///     properties:
///       bucket: tf-test
///   test:
///     type: aws:kms:Key
///     properties:
///       deletionWindowInDays: 7
///       description: Athena KMS Key
///   testWorkgroup:
///     type: aws:athena:Workgroup
///     name: test
///     properties:
///       configuration:
///         resultConfiguration:
///           encryptionConfiguration:
///             encryptionOption: SSE_KMS
///             kmsKeyArn: ${test.arn}
///       name: example
///   hogeDatabase:
///     type: aws:athena:Database
///     name: hoge
///     properties:
///       name: users
///       bucket: ${hoge.id}
///   foo:
///     type: aws:athena:NamedQuery
///     properties:
///       name: bar
///       workgroup: ${testWorkgroup.id}
///       database: ${hogeDatabase.name}
///       query: SELECT * FROM ${hogeDatabase.name} limit 10;
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Athena Named Query using the query ID. For example:
///
/// ```sh
/// $ pulumi import aws:athena/namedQuery:NamedQuery example 0123456789
/// ```
class NamedQuery extends pulumi.CustomResource {
  /// Database to which the query belongs.
  late final pulumi.Output<String> database;
  /// Brief explanation of the query. Maximum length of 1024.
  late final pulumi.Output<String?> description;
  /// Plain language name for the query. Maximum length of 128.
  late final pulumi.Output<String> name;
  /// Text of the query itself. In other words, all query statements. Maximum length of 262144.
  late final pulumi.Output<String> query;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Workgroup to which the query belongs. Defaults to `primary`
  late final pulumi.Output<String?> workgroup;

  /// Creates a new [NamedQuery].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NamedQuery]. {@macro pulumi_athena_named_query_named_query_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NamedQuery(
    String name, {
    NamedQueryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:athena/namedQuery:NamedQuery',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    database = registerOutput<String>('database');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    query = registerOutput<String>('query');
    region = registerOutput<String>('region');
    workgroup = registerOutput<String?>('workgroup');
  }

  /// Gets an existing [NamedQuery] resource's state with the given [name] and [id].
  static NamedQuery get(
    String name,
    pulumi.Input<String> id, {
    NamedQueryState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return NamedQuery._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  NamedQuery._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:athena/namedQuery:NamedQuery',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    database = registerOutput<String>('database');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    query = registerOutput<String>('query');
    region = registerOutput<String>('region');
    workgroup = registerOutput<String?>('workgroup');
  }

  /// Creates a typed reference to an existing [NamedQuery] resource.
  NamedQuery.reference(String urn)
    : super(
        'aws:athena/namedQuery:NamedQuery',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    database = registerOutput<String>('database');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    query = registerOutput<String>('query');
    region = registerOutput<String>('region');
    workgroup = registerOutput<String?>('workgroup');
  }
}
