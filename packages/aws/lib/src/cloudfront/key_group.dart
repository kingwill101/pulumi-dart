import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_group_args.dart';

/// ## Example Usage
///
/// The following example below creates a CloudFront key group.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.cloudfront.PublicKey("example", {
///     comment: "example public key",
///     encodedKey: std.file({
///         input: "public_key.pem",
///     }).then(invoke => invoke.result),
///     name: "example-key",
/// });
/// const exampleKeyGroup = new aws.cloudfront.KeyGroup("example", {
///     comment: "example key group",
///     items: [example.id],
///     name: "example-key-group",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.cloudfront.PublicKey("example",
///     comment="example public key",
///     encoded_key=std.file(input="public_key.pem").result,
///     name="example-key")
/// example_key_group = aws.cloudfront.KeyGroup("example",
///     comment="example key group",
///     items=[example.id],
///     name="example-key-group")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudFront.PublicKey("example", new()
///     {
///         Comment = "example public key",
///         EncodedKey = Std.File.Invoke(new()
///         {
///             Input = "public_key.pem",
///         }).Apply(invoke => invoke.Result),
///         Name = "example-key",
///     });
///
///     var exampleKeyGroup = new Aws.CloudFront.KeyGroup("example", new()
///     {
///         Comment = "example key group",
///         Items = new[]
///         {
///             example.Id,
///         },
///         Name = "example-key-group",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "public_key.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := cloudfront.NewPublicKey(ctx, "example", &cloudfront.PublicKeyArgs{
/// 			Comment:    pulumi.String("example public key"),
/// 			EncodedKey: pulumi.String(invokeFile.Result),
/// 			Name:       pulumi.String("example-key"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfront.NewKeyGroup(ctx, "example", &cloudfront.KeyGroupArgs{
/// 			Comment: pulumi.String("example key group"),
/// 			Items: pulumi.StringArray{
/// 				example.ID(),
/// 			},
/// 			Name: pulumi.String("example-key-group"),
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
/// import com.pulumi.aws.cloudfront.PublicKey;
/// import com.pulumi.aws.cloudfront.PublicKeyArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.aws.cloudfront.KeyGroup;
/// import com.pulumi.aws.cloudfront.KeyGroupArgs;
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
///         var example = new PublicKey("example", PublicKeyArgs.builder()
///             .comment("example public key")
///             .encodedKey(StdFunctions.file(FileArgs.builder()
///                 .input("public_key.pem")
///                 .build()).result())
///             .name("example-key")
///             .build());
///
///         var exampleKeyGroup = new KeyGroup("exampleKeyGroup", KeyGroupArgs.builder()
///             .comment("example key group")
///             .items(example.id())
///             .name("example-key-group")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudfront:PublicKey
///     properties:
///       comment: example public key
///       encodedKey:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: public_key.pem
///           return: result
///       name: example-key
///   exampleKeyGroup:
///     type: aws:cloudfront:KeyGroup
///     name: example
///     properties:
///       comment: example key group
///       items:
///         - ${example.id}
///       name: example-key-group
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Key Group using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/keyGroup:KeyGroup example 4b4f2r1c-315d-5c2e-f093-216t50jed10f
/// ```
class KeyGroup extends pulumi.CustomResource {
  /// A comment to describe the key group..
  late final pulumi.Output<String?> comment;
  /// The identifier for this version of the key group.
  late final pulumi.Output<String> etag;
  /// A list of the identifiers of the public keys in the key group.
  late final pulumi.Output<List<String>> items;
  /// A name to identify the key group.
  late final pulumi.Output<String> name;

  /// Creates a new [KeyGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KeyGroup]. {@macro pulumi_cloudfront_key_group_key_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KeyGroup(
    String name, {
    KeyGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/keyGroup:KeyGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.comment = registerOutput<String?>('comment');
    this.etag = registerOutput<String>('etag');
    this.items = registerOutput<List<String>>('items');
    this.name = registerOutput<String>('name');
  }
}
