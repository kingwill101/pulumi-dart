import 'package:pulumi/pulumi.dart';
import 'repository_args2.dart';

/// Provides a CodeCommit Repository Resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.codecommit.Repository("test", {
/// repositoryName: "MyTestRepository",
/// description: "This is the Sample App Repository",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.codecommit.Repository("test",
/// repository_name="MyTestRepository",
/// description="This is the Sample App Repository")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.CodeCommit.Repository("test", new()
/// {
/// RepositoryName = "MyTestRepository",
/// Description = "This is the Sample App Repository",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codecommit"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := codecommit.NewRepository(ctx, "test", &codecommit.RepositoryArgs{
/// RepositoryName: pulumi.String("MyTestRepository"),
/// Description:    pulumi.String("This is the Sample App Repository"),
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
/// import com.pulumi.aws.codecommit.Repository;
/// import com.pulumi.aws.codecommit.RepositoryArgs;
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
/// var test = new Repository("test", RepositoryArgs.builder()
/// .repositoryName("MyTestRepository")
/// .description("This is the Sample App Repository")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:codecommit:Repository
/// properties:
/// repositoryName: MyTestRepository
/// description: This is the Sample App Repository
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### AWS KMS Customer Managed Keys (CMK)
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testKey = new aws.kms.Key("test", {
/// description: "test",
/// deletionWindowInDays: 7,
/// });
/// const test = new aws.codecommit.Repository("test", {
/// repositoryName: "MyTestRepository",
/// description: "This is the Sample App Repository",
/// kmsKeyId: testKey.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_key = aws.kms.Key("test",
/// description="test",
/// deletion_window_in_days=7)
/// test = aws.codecommit.Repository("test",
/// repository_name="MyTestRepository",
/// description="This is the Sample App Repository",
/// kms_key_id=test_key.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var testKey = new Aws.Kms.Key("test", new()
/// {
/// Description = "test",
/// DeletionWindowInDays = 7,
/// });
///
/// var test = new Aws.CodeCommit.Repository("test", new()
/// {
/// RepositoryName = "MyTestRepository",
/// Description = "This is the Sample App Repository",
/// KmsKeyId = testKey.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codecommit"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// testKey, err := kms.NewKey(ctx, "test", &kms.KeyArgs{
/// Description:          pulumi.String("test"),
/// DeletionWindowInDays: pulumi.Int(7),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = codecommit.NewRepository(ctx, "test", &codecommit.RepositoryArgs{
/// RepositoryName: pulumi.String("MyTestRepository"),
/// Description:    pulumi.String("This is the Sample App Repository"),
/// KmsKeyId:       testKey.Arn,
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.codecommit.Repository;
/// import com.pulumi.aws.codecommit.RepositoryArgs;
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
/// var testKey = new Key("testKey", KeyArgs.builder()
/// .description("test")
/// .deletionWindowInDays(7)
/// .build());
///
/// var test = new Repository("test", RepositoryArgs.builder()
/// .repositoryName("MyTestRepository")
/// .description("This is the Sample App Repository")
/// .kmsKeyId(testKey.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:codecommit:Repository
/// properties:
/// repositoryName: MyTestRepository
/// description: This is the Sample App Repository
/// kmsKeyId: ${testKey.arn}
/// testKey:
/// type: aws:kms:Key
/// name: test
/// properties:
/// description: test
/// deletionWindowInDays: 7
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CodeCommit repository using repository name. For example:
///
/// ```sh
/// $ pulumi import aws:codecommit/repository:Repository imported ExistingRepo
/// ```
class Repository2 extends CustomResource {
  /// The ARN of the repository
  late final Output<String> arn;

  /// The URL to use for cloning the repository over HTTPS.
  late final Output<String> cloneUrlHttp;

  /// The URL to use for cloning the repository over SSH.
  late final Output<String> cloneUrlSsh;

  /// The default branch of the repository. The branch specified here needs to exist.
  late final Output<String?> defaultBranch;

  /// The description of the repository. This needs to be less than 1000 characters
  late final Output<String?> description;

  /// The ARN of the encryption key. If no key is specified, the default `aws/codecommit` Amazon Web Services managed key is used.
  late final Output<String> kmsKeyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the repository
  late final Output<String> repositoryId;

  /// The name for the repository. This needs to be less than 100 characters.
  late final Output<String> repositoryName;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Repository2(
    String name, {
    RepositoryArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:codecommit/repository:Repository',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.cloneUrlHttp = registerOutput<String>('cloneUrlHttp');
    this.cloneUrlSsh = registerOutput<String>('cloneUrlSsh');
    this.defaultBranch = registerOutput<String?>('defaultBranch');
    this.description = registerOutput<String?>('description');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.region = registerOutput<String>('region');
    this.repositoryId = registerOutput<String>('repositoryId');
    this.repositoryName = registerOutput<String>('repositoryName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
