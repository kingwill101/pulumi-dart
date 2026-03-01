import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_args.dart';

/// Provides a Glue Registry resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Registry("example", {registryName: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Registry("example", registry_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Glue.Registry("example", new()
///     {
///         RegistryName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.NewRegistry(ctx, "example", &glue.RegistryArgs{
/// 			RegistryName: pulumi.String("example"),
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
/// import com.pulumi.aws.glue.Registry;
/// import com.pulumi.aws.glue.RegistryArgs;
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
///         var example = new Registry("example", RegistryArgs.builder()
///             .registryName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Registry
///     properties:
///       registryName: example
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Glue registry.
///
///
/// Using `pulumi import`, import Glue Registries using `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:glue/registry:Registry example arn:aws:glue:us-west-2:123456789012:registry/example
/// ```
class Registry extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of Glue Registry.
  late final pulumi.Output<String> arn;

  /// A description of the registry.
  late final pulumi.Output<String?> description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Name of the registry.
  late final pulumi.Output<String> registryName;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Registry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Registry]. {@macro pulumi_glue_registry_registry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Registry(
    String name, {
    RegistryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:glue/registry:Registry',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.region = registerOutput<String>('region');
    this.registryName = registerOutput<String>('registryName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
