import 'package:pulumi/pulumi.dart' as pulumi;
import 'thing_args.dart';
import 'thing_state.dart';

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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_iot_thing" "example" {
///   name = "example"
///   attributes = {
///     "First" = "examplevalue"
///   }
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
  Thing(
    String name, {
    ThingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/thing:Thing',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    attributes = registerOutput<Map<String, String>?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    defaultClientId = registerOutput<String>('defaultClientId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    thingTypeName = registerOutput<String?>('thingTypeName');
    version = registerOutput<int>('version');
  }

  /// Gets an existing [Thing] resource's state with the given [name] and [id].
  static Thing get(
    String name,
    pulumi.Input<String> id, {
    ThingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Thing._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Thing._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/thing:Thing',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    attributes = registerOutput<Map<String, String>?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    defaultClientId = registerOutput<String>('defaultClientId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    thingTypeName = registerOutput<String?>('thingTypeName');
    version = registerOutput<int>('version');
  }

  /// Creates a typed reference to an existing [Thing] resource.
  Thing.reference(String urn)
    : super(
        'aws:iot/thing:Thing',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    attributes = registerOutput<Map<String, String>?>('attributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    defaultClientId = registerOutput<String>('defaultClientId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    thingTypeName = registerOutput<String?>('thingTypeName');
    version = registerOutput<int>('version');
  }
}
