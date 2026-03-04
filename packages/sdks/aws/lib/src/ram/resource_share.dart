import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_share_args.dart';
import 'resource_share_state.dart';

/// Manages a Resource Access Manager (RAM) Resource Share. To associate principals with the share, see the `aws.ram.PrincipalAssociation` resource. To associate resources with the share, see the `aws.ram.ResourceAssociation` resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ram.ResourceShare("example", {
///     name: "example",
///     allowExternalPrincipals: true,
///     tags: {
///         Environment: "Production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ram.ResourceShare("example",
///     name="example",
///     allow_external_principals=True,
///     tags={
///         "Environment": "Production",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ram.ResourceShare("example", new()
///     {
///         Name = "example",
///         AllowExternalPrincipals = true,
///         Tags =
///         {
///             { "Environment", "Production" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ram"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ram.NewResourceShare(ctx, "example", &ram.ResourceShareArgs{
/// 			Name:                    pulumi.String("example"),
/// 			AllowExternalPrincipals: pulumi.Bool(true),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("Production"),
/// 			},
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
/// import com.pulumi.aws.ram.ResourceShare;
/// import com.pulumi.aws.ram.ResourceShareArgs;
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
///         var example = new ResourceShare("example", ResourceShareArgs.builder()
///             .name("example")
///             .allowExternalPrincipals(true)
///             .tags(Map.of("Environment", "Production"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ram:ResourceShare
///     properties:
///       name: example
///       allowExternalPrincipals: true
///       tags:
///         Environment: Production
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import resource shares using the `arn` of the resource share. For example:
///
/// ```sh
/// $ pulumi import aws:ram/resourceShare:ResourceShare example arn:aws:ram:eu-west-1:123456789012:resource-share/73da1ab9-b94a-4ba3-8eb4-45917f7f4b12
/// ```
class ResourceShare extends pulumi.CustomResource {
  /// Indicates whether principals outside your organization can be associated with a resource share.
  late final pulumi.Output<bool?> allowExternalPrincipals;

  /// The Amazon Resource Name (ARN) of the resource share.
  late final pulumi.Output<String> arn;

  /// The name of the resource share.
  late final pulumi.Output<String> name;

  /// Specifies the Amazon Resource Names (ARNs) of the RAM permission to associate with the resource share. If you do not specify an ARN for the permission, RAM automatically attaches the default version of the permission for each resource type. You can associate only one permission with each resource type included in the resource share.
  late final pulumi.Output<List<String>> permissionArns;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource share. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ResourceShare].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceShare]. {@macro pulumi_ram_resource_share_resource_share_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceShare(
    String name, {
    ResourceShareArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ram/resourceShare:ResourceShare',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowExternalPrincipals = registerOutput<bool?>('allowExternalPrincipals');
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    permissionArns = registerOutput<List<String>>('permissionArns');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [ResourceShare] resource's state with the given [name] and [id].
  static ResourceShare get(
    String name,
    pulumi.Input<String> id, {
    ResourceShareState? state,
  }) {
    return ResourceShare._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ResourceShare._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ram/resourceShare:ResourceShare',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowExternalPrincipals = registerOutput<bool?>('allowExternalPrincipals');
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    permissionArns = registerOutput<List<String>>('permissionArns');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
