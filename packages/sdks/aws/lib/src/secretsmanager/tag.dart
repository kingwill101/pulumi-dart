import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_args.dart';
import 'tag_state.dart';

/// Manages an individual AWS Secrets Manager secret tag. This resource should only be used in cases where AWS Secrets Manager secrets are created outside Terraform (e.g., [AWS Secrets Manager secrets managed by other AWS services](https://docs.aws.amazon.com/secretsmanager/latest/userguide/service-linked-secrets.html), such as RDS).
///
/// &gt; **NOTE:** This tagging resource should not be combined with the Terraform resource for managing the parent resource. For example, using `aws.secretsmanager.Secret` and `aws.secretsmanager.Tag` to manage tags of the same AWS Secrets Manager secret will cause a perpetual difference where the `aws.secretsmanager.Secret` resource will try to remove the tag being added by the `aws.secretsmanager.Tag` resource. However, if the parent resource is created in the same configuration (i.e., if you have no other choice), you should add `ignoreChanges = [tags]` in the parent resource's lifecycle block. This ensures that Terraform ignores differences in tags managed via the separate tagging resource, avoiding the perpetual difference mentioned above.
///
/// &gt; **NOTE:** This tagging resource does not use the provider `ignoreTags` configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.secretsmanager.Secret("test", {name: "example-secret"}, {
///     ignoreChanges: ["tags"],
/// });
/// const testTag = new aws.secretsmanager.Tag("test", {
///     secretId: test.id,
///     key: "ExampleKey",
///     value: "ExampleValue",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.secretsmanager.Secret("test", name="example-secret",
/// opts = pulumi.ResourceOptions(ignore_changes=["tags"]))
/// test_tag = aws.secretsmanager.Tag("test",
///     secret_id=test.id,
///     key="ExampleKey",
///     value="ExampleValue")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.SecretsManager.Secret("test", new()
///     {
///         Name = "example-secret",
///     }, new CustomResourceOptions
///     {
///         IgnoreChanges =
///         {
///             "tags",
///         },
///     });
///
///     var testTag = new Aws.SecretsManager.Tag("test", new()
///     {
///         SecretId = test.Id,
///         Key = "ExampleKey",
///         Value = "ExampleValue",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/secretsmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := secretsmanager.NewSecret(ctx, "test", &secretsmanager.SecretArgs{
/// 			Name: pulumi.String("example-secret"),
/// 		}, pulumi.IgnoreChanges([]string{
/// 			"tags",
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretsmanager.NewTag(ctx, "test", &secretsmanager.TagArgs{
/// 			SecretId: test.ID().ToIDOutput().ToStringOutput(),
/// 			Key:      pulumi.String("ExampleKey"),
/// 			Value:    pulumi.String("ExampleValue"),
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
/// resource "aws_secretsmanager_secret" "test" {
///   lifecycle {
///     ignore_changes = [tags]
///   }
///   name = "example-secret"
/// }
/// resource "aws_secretsmanager_tag" "test" {
///   secret_id = aws_secretsmanager_secret.test.id
///   key       = "ExampleKey"
///   value     = "ExampleValue"
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
///         var test = new Secret("test", SecretArgs.builder()
///             .name("example-secret")
///             .build(), CustomResourceOptions.builder()
///                 .ignoreChanges("tags")
///                 .build());
///
///         var testTag = new Tag("testTag", TagArgs.builder()
///             .secretId(test.id())
///             .key("ExampleKey")
///             .value("ExampleValue")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:secretsmanager:Secret
///     properties:
///       name: example-secret
///     options:
///       ignoreChanges:
///         - tags
///   testTag:
///     type: aws:secretsmanager:Tag
///     name: test
///     properties:
///       secretId: ${test.id}
///       key: ExampleKey
///       value: ExampleValue
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.secretsmanager.Tag` using the AWS Secrets Manager secret identifier and key, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:secretsmanager/tag:Tag example arn:aws:secretsmanager:us-east-1:123456789012:example-secret,ExampleKey
/// ```
class Tag extends pulumi.CustomResource {
  /// Tag name.
  late final pulumi.Output<String> key;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID of the AWS Secrets Manager secret to tag.
  late final pulumi.Output<String> secretId;
  /// Tag value.
  late final pulumi.Output<String> value;

  /// Creates a new [Tag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Tag]. {@macro pulumi_secretsmanager_tag_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Tag(
    String name, {
    TagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:secretsmanager/tag:Tag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    key = registerOutput<String>('key');
    region = registerOutput<String>('region');
    secretId = registerOutput<String>('secretId');
    value = registerOutput<String>('value');
  }

  /// Gets an existing [Tag] resource's state with the given [name] and [id].
  static Tag get(
    String name,
    pulumi.Input<String> id, {
    TagState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Tag._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Tag._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:secretsmanager/tag:Tag',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    key = registerOutput<String>('key');
    region = registerOutput<String>('region');
    secretId = registerOutput<String>('secretId');
    value = registerOutput<String>('value');
  }

  /// Creates a typed reference to an existing [Tag] resource.
  Tag.reference(String urn)
    : super(
        'aws:secretsmanager/tag:Tag',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    key = registerOutput<String>('key');
    region = registerOutput<String>('region');
    secretId = registerOutput<String>('secretId');
    value = registerOutput<String>('value');
  }
}
