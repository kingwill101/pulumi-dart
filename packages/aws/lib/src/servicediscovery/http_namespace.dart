import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_namespace_args.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.servicediscovery.HttpNamespace("example", {
///     name: "development",
///     description: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicediscovery.HttpNamespace("example",
///     name="development",
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
///     var example = new Aws.ServiceDiscovery.HttpNamespace("example", new()
///     {
///         Name = "development",
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
/// 		_, err := servicediscovery.NewHttpNamespace(ctx, "example", &servicediscovery.HttpNamespaceArgs{
/// 			Name:        pulumi.String("development"),
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
/// import com.pulumi.aws.servicediscovery.HttpNamespace;
/// import com.pulumi.aws.servicediscovery.HttpNamespaceArgs;
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
///         var example = new HttpNamespace("example", HttpNamespaceArgs.builder()
///             .name("development")
///             .description("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:servicediscovery:HttpNamespace
///     properties:
///       name: development
///       description: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Service Discovery HTTP Namespace using the namespace ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicediscovery/httpNamespace:HttpNamespace example ns-1234567890
/// ```
class HttpNamespace extends pulumi.CustomResource {
  /// The ARN that Amazon Route 53 assigns to the namespace when you create it.
  late final pulumi.Output<String> arn;

  /// The description that you specify for the namespace when you create it.
  late final pulumi.Output<String?> description;

  /// The name of an HTTP namespace.
  late final pulumi.Output<String> httpName;

  /// The name of the http namespace.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the namespace. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [HttpNamespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HttpNamespace]. {@macro pulumi_servicediscovery_http_namespace_http_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HttpNamespace(
    String name, {
    HttpNamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicediscovery/httpNamespace:HttpNamespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.httpName = registerOutput<String>('httpName');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
