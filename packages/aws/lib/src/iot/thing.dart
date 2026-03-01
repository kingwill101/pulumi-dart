import 'package:pulumi/pulumi.dart' as pulumi;
import 'thing_args.dart';

/// Creates and manages an AWS IoT Thing.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iot.Thing("example", {
///     name: "example",
///     attributes: {
///         First: "examplevalue",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iot.Thing("example",
///     name="example",
///     attributes={
///         "First": "examplevalue",
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
///     var example = new Aws.Iot.Thing("example", new()
///     {
///         Name = "example",
///         Attributes =
///         {
///             { "First", "examplevalue" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iot.NewThing(ctx, "example", &iot.ThingArgs{
/// 			Name: pulumi.String("example"),
/// 			Attributes: pulumi.StringMap{
/// 				"First": pulumi.String("examplevalue"),
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
/// import com.pulumi.aws.iot.Thing;
/// import com.pulumi.aws.iot.ThingArgs;
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
///         var example = new Thing("example", ThingArgs.builder()
///             .name("example")
///             .attributes(Map.of("First", "examplevalue"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iot:Thing
///     properties:
///       name: example
///       attributes:
///         First: examplevalue
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import IOT Things using the name. For example:
///
/// ```sh
/// $ pulumi import aws:iot/thing:Thing example example
/// ```
class Thing extends pulumi.CustomResource {
  /// The ARN of the thing.
  late final pulumi.Output<String> arn;

  /// Map of attributes of the thing.
  late final pulumi.Output<Map<String, String>?> attributes;

  /// The default client ID.
  late final pulumi.Output<String> defaultClientId;

  /// The name of the thing.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The thing type name.
  late final pulumi.Output<String?> thingTypeName;

  /// The current version of the thing record in the registry.
  late final pulumi.Output<int> version;

  /// Creates a new [Thing].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Thing]. {@macro pulumi_iot_thing_thing_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Thing(String name, {ThingArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:iot/thing:Thing',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.arn = registerOutput<String>('arn');
    this.attributes = registerOutput<Map<String, String>?>('attributes');
    this.defaultClientId = registerOutput<String>('defaultClientId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.thingTypeName = registerOutput<String?>('thingTypeName');
    this.version = registerOutput<int>('version');
  }
}
