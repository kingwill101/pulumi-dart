import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_dns_namespace_args.dart';
import 'public_dns_namespace_state.dart';

/// Provides a Service Discovery Public DNS Namespace resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.servicediscovery.PublicDnsNamespace("example", {
///     name: "hoge.example.com",
///     description: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicediscovery.PublicDnsNamespace("example",
///     name="hoge.example.com",
///     description="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ServiceDiscovery.PublicDnsNamespace("example", new()
///     {
///         Name = "hoge.example.com",
///         Description = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicediscovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicediscovery.NewPublicDnsNamespace(ctx, "example", &servicediscovery.PublicDnsNamespaceArgs{
/// 			Name:        pulumi.String("hoge.example.com"),
/// 			Description: pulumi.String("example"),
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
/// import com.pulumi.aws.servicediscovery.PublicDnsNamespace;
/// import com.pulumi.aws.servicediscovery.PublicDnsNamespaceArgs;
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
///         var example = new PublicDnsNamespace("example", PublicDnsNamespaceArgs.builder()
///             .name("hoge.example.com")
///             .description("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:servicediscovery:PublicDnsNamespace
///     properties:
///       name: hoge.example.com
///       description: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Service Discovery Public DNS Namespace using the namespace ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicediscovery/publicDnsNamespace:PublicDnsNamespace example 0123456789
/// ```
class PublicDnsNamespace extends pulumi.CustomResource {
  /// The ARN that Amazon Route 53 assigns to the namespace when you create it.
  late final pulumi.Output<String> arn;

  /// The description that you specify for the namespace when you create it.
  late final pulumi.Output<String?> description;

  /// The ID for the hosted zone that Amazon Route 53 creates when you create a namespace.
  late final pulumi.Output<String> hostedZone;

  /// The name of the namespace.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the namespace. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [PublicDnsNamespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PublicDnsNamespace]. {@macro pulumi_servicediscovery_public_dns_namespace_public_dns_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PublicDnsNamespace(
    String name, {
    PublicDnsNamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:servicediscovery/publicDnsNamespace:PublicDnsNamespace',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    hostedZone = registerOutput<String>('hostedZone');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [PublicDnsNamespace] resource's state with the given [name] and [id].
  static PublicDnsNamespace get(
    String name,
    pulumi.Input<String> id, {
    PublicDnsNamespaceState? state,
  }) {
    return PublicDnsNamespace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PublicDnsNamespace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:servicediscovery/publicDnsNamespace:PublicDnsNamespace',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    hostedZone = registerOutput<String>('hostedZone');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
