import 'package:pulumi/pulumi.dart';
import 'tag_args6.dart';

/// Manages an individual AWS Secrets Manager secret tag. This resource should only be used in cases where AWS Secrets Manager secrets are created outside Terraform (e.g., [AWS Secrets Manager secrets managed by other AWS services](https://docs.aws.amazon.com/secretsmanager/latest/userguide/service-linked-secrets.html), such as RDS).
///
/// > **NOTE:** This tagging resource should not be combined with the Terraform resource for managing the parent resource. For example, using <span pulumi-lang-nodejs="`aws.secretsmanager.Secret`" pulumi-lang-dotnet="`aws.secretsmanager.Secret`" pulumi-lang-go="`secretsmanager.Secret`" pulumi-lang-python="`secretsmanager.Secret`" pulumi-lang-yaml="`aws.secretsmanager.Secret`" pulumi-lang-java="`aws.secretsmanager.Secret`">`aws.secretsmanager.Secret`</span> and <span pulumi-lang-nodejs="`aws.secretsmanager.Tag`" pulumi-lang-dotnet="`aws.secretsmanager.Tag`" pulumi-lang-go="`secretsmanager.Tag`" pulumi-lang-python="`secretsmanager.Tag`" pulumi-lang-yaml="`aws.secretsmanager.Tag`" pulumi-lang-java="`aws.secretsmanager.Tag`">`aws.secretsmanager.Tag`</span> to manage tags of the same AWS Secrets Manager secret will cause a perpetual difference where the <span pulumi-lang-nodejs="`aws.secretsmanager.Secret`" pulumi-lang-dotnet="`aws.secretsmanager.Secret`" pulumi-lang-go="`secretsmanager.Secret`" pulumi-lang-python="`secretsmanager.Secret`" pulumi-lang-yaml="`aws.secretsmanager.Secret`" pulumi-lang-java="`aws.secretsmanager.Secret`">`aws.secretsmanager.Secret`</span> resource will try to remove the tag being added by the <span pulumi-lang-nodejs="`aws.secretsmanager.Tag`" pulumi-lang-dotnet="`aws.secretsmanager.Tag`" pulumi-lang-go="`secretsmanager.Tag`" pulumi-lang-python="`secretsmanager.Tag`" pulumi-lang-yaml="`aws.secretsmanager.Tag`" pulumi-lang-java="`aws.secretsmanager.Tag`">`aws.secretsmanager.Tag`</span> resource. However, if the parent resource is created in the same configuration (i.e., if you have no other choice), you should add <span pulumi-lang-nodejs="`ignoreChanges " pulumi-lang-dotnet="`IgnoreChanges " pulumi-lang-go="`ignoreChanges " pulumi-lang-python="`ignore_changes " pulumi-lang-yaml="`ignoreChanges " pulumi-lang-java="`ignoreChanges ">`ignore_changes </span>= [tags]` in the parent resource's lifecycle block. This ensures that Terraform ignores differences in tags managed via the separate tagging resource, avoiding the perpetual difference mentioned above.
///
/// > **NOTE:** This tagging resource does not use the provider <span pulumi-lang-nodejs="`ignoreTags`" pulumi-lang-dotnet="`IgnoreTags`" pulumi-lang-go="`ignoreTags`" pulumi-lang-python="`ignore_tags`" pulumi-lang-yaml="`ignoreTags`" pulumi-lang-java="`ignoreTags`">`ignore_tags`</span> configuration.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.secretsmanager.Secret("test", {name: "example-secret"});
/// const testTag = new aws.secretsmanager.Tag("test", {
/// secretId: test.id,
/// key: "ExampleKey",
/// value: "ExampleValue",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.secretsmanager.Secret("test", name="example-secret")
/// test_tag = aws.secretsmanager.Tag("test",
/// secret_id=test.id,
/// key="ExampleKey",
/// value="ExampleValue")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.SecretsManager.Secret("test", new()
/// {
/// Name = "example-secret",
/// });
///
/// var testTag = new Aws.SecretsManager.Tag("test", new()
/// {
/// SecretId = test.Id,
/// Key = "ExampleKey",
/// Value = "ExampleValue",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/secretsmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// test, err := secretsmanager.NewSecret(ctx, "test", &secretsmanager.SecretArgs{
/// Name: pulumi.String("example-secret"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = secretsmanager.NewTag(ctx, "test", &secretsmanager.TagArgs{
/// SecretId: test.ID(),
/// Key:      pulumi.String("ExampleKey"),
/// Value:    pulumi.String("ExampleValue"),
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
/// import com.pulumi.aws.secretsmanager.Secret;
/// import com.pulumi.aws.secretsmanager.SecretArgs;
/// import com.pulumi.aws.secretsmanager.Tag;
/// import com.pulumi.aws.secretsmanager.TagArgs;
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
/// var test = new Secret("test", SecretArgs.builder()
/// .name("example-secret")
/// .build());
///
/// var testTag = new Tag("testTag", TagArgs.builder()
/// .secretId(test.id())
/// .key("ExampleKey")
/// .value("ExampleValue")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:secretsmanager:Secret
/// properties:
/// name: example-secret
/// testTag:
/// type: aws:secretsmanager:Tag
/// name: test
/// properties:
/// secretId: ${test.id}
/// key: ExampleKey
/// value: ExampleValue
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.secretsmanager.Tag`" pulumi-lang-dotnet="`aws.secretsmanager.Tag`" pulumi-lang-go="`secretsmanager.Tag`" pulumi-lang-python="`secretsmanager.Tag`" pulumi-lang-yaml="`aws.secretsmanager.Tag`" pulumi-lang-java="`aws.secretsmanager.Tag`">`aws.secretsmanager.Tag`</span> using the AWS Secrets Manager secret identifier and key, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:secretsmanager/tag:Tag example arn:aws:secretsmanager:us-east-1:123456789012:example-secret,ExampleKey
/// ```
class Tag6 extends CustomResource {
  /// Tag name.
  late final Output<String> key;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the AWS Secrets Manager secret to tag.
  late final Output<String> secretId;

  /// Tag value.
  late final Output<String> value;

  Tag6(
    String name, {
    TagArgs6? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:secretsmanager/tag:Tag',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.key = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.secretId = Output.createUnknown<String>();
    this.value = Output.createUnknown<String>();
  }
}
