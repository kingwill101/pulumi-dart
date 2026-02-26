import 'package:pulumi/pulumi.dart';
import 'named_query_args.dart';

/// Provides an Athena Named Query resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const hoge = new aws.s3.Bucket("hoge", {bucket: "tf-test"});
/// const test = new aws.kms.Key("test", {
/// deletionWindowInDays: 7,
/// description: "Athena KMS Key",
/// });
/// const testWorkgroup = new aws.athena.Workgroup("test", {
/// name: "example",
/// configuration: {
/// resultConfiguration: {
/// encryptionConfiguration: {
/// encryptionOption: "SSE_KMS",
/// kmsKeyArn: test.arn,
/// },
/// },
/// },
/// });
/// const hogeDatabase = new aws.athena.Database("hoge", {
/// name: "users",
/// bucket: hoge.id,
/// });
/// const foo = new aws.athena.NamedQuery("foo", {
/// name: "bar",
/// workgroup: testWorkgroup.id,
/// database: hogeDatabase.name,
/// query: pulumi.interpolate`SELECT * FROM ${hogeDatabase.name} limit 10;`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// hoge = aws.s3.Bucket("hoge", bucket="tf-test")
/// test = aws.kms.Key("test",
/// deletion_window_in_days=7,
/// description="Athena KMS Key")
/// test_workgroup = aws.athena.Workgroup("test",
/// name="example",
/// configuration={
/// "result_configuration": {
/// "encryption_configuration": {
/// "encryption_option": "SSE_KMS",
/// "kms_key_arn": test.arn,
/// },
/// },
/// })
/// hoge_database = aws.athena.Database("hoge",
/// name="users",
/// bucket=hoge.id)
/// foo = aws.athena.NamedQuery("foo",
/// name="bar",
/// workgroup=test_workgroup.id,
/// database=hoge_database.name,
/// query=hoge_database.name.apply(lambda name: f"SELECT * FROM {name} limit 10;"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var hoge = new Aws.S3.Bucket("hoge", new()
/// {
/// BucketName = "tf-test",
/// });
///
/// var test = new Aws.Kms.Key("test", new()
/// {
/// DeletionWindowInDays = 7,
/// Description = "Athena KMS Key",
/// });
///
/// var testWorkgroup = new Aws.Athena.Workgroup("test", new()
/// {
/// Name = "example",
/// Configuration = new Aws.Athena.Inputs.WorkgroupConfigurationArgs
/// {
/// ResultConfiguration = new Aws.Athena.Inputs.WorkgroupConfigurationResultConfigurationArgs
/// {
/// EncryptionConfiguration = new Aws.Athena.Inputs.WorkgroupConfigurationResultConfigurationEncryptionConfigurationArgs
/// {
/// EncryptionOption = "SSE_KMS",
/// KmsKeyArn = test.Arn,
/// },
/// },
/// },
/// });
///
/// var hogeDatabase = new Aws.Athena.Database("hoge", new()
/// {
/// Name = "users",
/// Bucket = hoge.Id,
/// });
///
/// var foo = new Aws.Athena.NamedQuery("foo", new()
/// {
/// Name = "bar",
/// Workgroup = testWorkgroup.Id,
/// Database = hogeDatabase.Name,
/// Query = hogeDatabase.Name.Apply(name => $"SELECT * FROM {name} limit 10;"),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/athena"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// hoge, err := s3.NewBucket(ctx, "hoge", &s3.BucketArgs{
/// Bucket: pulumi.String("tf-test"),
/// })
/// if err != nil {
/// return err
/// }
/// test, err := kms.NewKey(ctx, "test", &kms.KeyArgs{
/// DeletionWindowInDays: pulumi.Int(7),
/// Description:          pulumi.String("Athena KMS Key"),
/// })
/// if err != nil {
/// return err
/// }
/// testWorkgroup, err := athena.NewWorkgroup(ctx, "test", &athena.WorkgroupArgs{
/// Name: pulumi.String("example"),
/// Configuration: &athena.WorkgroupConfigurationArgs{
/// ResultConfiguration: &athena.WorkgroupConfigurationResultConfigurationArgs{
/// EncryptionConfiguration: &athena.WorkgroupConfigurationResultConfigurationEncryptionConfigurationArgs{
/// EncryptionOption: pulumi.String("SSE_KMS"),
/// KmsKeyArn:        test.Arn,
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// hogeDatabase, err := athena.NewDatabase(ctx, "hoge", &athena.DatabaseArgs{
/// Name:   pulumi.String("users"),
/// Bucket: hoge.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = athena.NewNamedQuery(ctx, "foo", &athena.NamedQueryArgs{
/// Name:      pulumi.String("bar"),
/// Workgroup: testWorkgroup.ID(),
/// Database:  hogeDatabase.Name,
/// Query: hogeDatabase.Name.ApplyT(func(name string) (string, error) {
/// return fmt.Sprintf("SELECT * FROM %v limit 10;", name), nil
/// }).(pulumi.StringOutput),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var hoge = new Bucket("hoge", BucketArgs.builder()
/// .bucket("tf-test")
/// .build());
///
/// var test = new Key("test", KeyArgs.builder()
/// .deletionWindowInDays(7)
/// .description("Athena KMS Key")
/// .build());
///
/// var testWorkgroup = new Workgroup("testWorkgroup", WorkgroupArgs.builder()
/// .name("example")
/// .configuration(WorkgroupConfigurationArgs.builder()
/// .resultConfiguration(WorkgroupConfigurationResultConfigurationArgs.builder()
/// .encryptionConfiguration(WorkgroupConfigurationResultConfigurationEncryptionConfigurationArgs.builder()
/// .encryptionOption("SSE_KMS")
/// .kmsKeyArn(test.arn())
/// .build())
/// .build())
/// .build())
/// .build());
///
/// var hogeDatabase = new Database("hogeDatabase", DatabaseArgs.builder()
/// .name("users")
/// .bucket(hoge.id())
/// .build());
///
/// var foo = new NamedQuery("foo", NamedQueryArgs.builder()
/// .name("bar")
/// .workgroup(testWorkgroup.id())
/// .database(hogeDatabase.name())
/// .query(hogeDatabase.name().applyValue(_name -> String.format("SELECT * FROM %s limit 10;", _name)))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// hoge:
/// type: aws:s3:Bucket
/// properties:
/// bucket: tf-test
/// test:
/// type: aws:kms:Key
/// properties:
/// deletionWindowInDays: 7
/// description: Athena KMS Key
/// testWorkgroup:
/// type: aws:athena:Workgroup
/// name: test
/// properties:
/// name: example
/// configuration:
/// resultConfiguration:
/// encryptionConfiguration:
/// encryptionOption: SSE_KMS
/// kmsKeyArn: ${test.arn}
/// hogeDatabase:
/// type: aws:athena:Database
/// name: hoge
/// properties:
/// name: users
/// bucket: ${hoge.id}
/// foo:
/// type: aws:athena:NamedQuery
/// properties:
/// name: bar
/// workgroup: ${testWorkgroup.id}
/// database: ${hogeDatabase.name}
/// query: SELECT * FROM ${hogeDatabase.name} limit 10;
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Athena Named Query using the query ID. For example:
///
/// ```sh
/// $ pulumi import aws:athena/namedQuery:NamedQuery example 0123456789
/// ```
class NamedQuery extends CustomResource {
  /// Database to which the query belongs.
  late final Output<String> database;

  /// Brief explanation of the query. Maximum length of 1024.
  late final Output<String?> description;

  /// Plain language name for the query. Maximum length of 128.
  late final Output<String> name;

  /// Text of the query itself. In other words, all query statements. Maximum length of 262144.
  late final Output<String> query;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Workgroup to which the query belongs. Defaults to <span pulumi-lang-nodejs="`primary`" pulumi-lang-dotnet="`Primary`" pulumi-lang-go="`primary`" pulumi-lang-python="`primary`" pulumi-lang-yaml="`primary`" pulumi-lang-java="`primary`">`primary`</span>
  late final Output<String?> workgroup;

  NamedQuery(
    String name, {
    NamedQueryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:athena/namedQuery:NamedQuery',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.database = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.query = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.workgroup = Output.createUnknown<String?>();
  }
}
