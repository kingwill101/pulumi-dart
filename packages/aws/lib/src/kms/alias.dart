import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_args.dart';

/// Provides an alias for a KMS customer master key. AWS Console enforces 1-to-1 mapping between aliases & keys,
/// but API (hence this provider too) allows you to create as many aliases as
/// the [account limits](http://docs.aws.amazon.com/kms/latest/developerguide/limits.html) allow you.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const a = new aws.kms.Key("a", {});
/// const aAlias = new aws.kms.Alias("a", {
///     name: "alias/my-key-alias",
///     targetKeyId: a.keyId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// a = aws.kms.Key("a")
/// a_alias = aws.kms.Alias("a",
///     name="alias/my-key-alias",
///     target_key_id=a.key_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var a = new Aws.Kms.Key("a");
///
///     var aAlias = new Aws.Kms.Alias("a", new()
///     {
///         Name = "alias/my-key-alias",
///         TargetKeyId = a.KeyId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		a, err := kms.NewKey(ctx, "a", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = kms.NewAlias(ctx, "a", &kms.AliasArgs{
/// 			Name:        pulumi.String("alias/my-key-alias"),
/// 			TargetKeyId: a.KeyId,
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.Alias;
/// import com.pulumi.aws.kms.AliasArgs;
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
///         var a = new Key("a");
///
///         var aAlias = new Alias("aAlias", AliasArgs.builder()
///             .name("alias/my-key-alias")
///             .targetKeyId(a.keyId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   a:
///     type: aws:kms:Key
///   aAlias:
///     type: aws:kms:Alias
///     name: a
///     properties:
///       name: alias/my-key-alias
///       targetKeyId: ${a.keyId}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` - (String) Name of the KMS key alias.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import KMS aliases using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:kms/alias:Alias a alias/my-key-alias
/// ```
class Alias extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the key alias.
  late final pulumi.Output<String> arn;

  /// The display name of the alias. The name must start with the word "alias" followed by a forward slash (alias/)
  late final pulumi.Output<String> name;

  /// Creates an unique alias beginning with the specified prefix.
  /// The name must start with the word "alias" followed by a forward slash (alias/).  Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) of the target key identifier.
  late final pulumi.Output<String> targetKeyArn;

  /// Identifier for the key for which the alias is for, can be either an ARN or key_id.
  late final pulumi.Output<String> targetKeyId;

  /// Creates a new [Alias].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Alias]. {@macro pulumi_kms_alias_alias_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Alias(String name, {AliasArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:kms/alias:Alias',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.targetKeyArn = registerOutput<String>('targetKeyArn');
    this.targetKeyId = registerOutput<String>('targetKeyId');
  }
}
