import 'package:pulumi/pulumi.dart' as pulumi;
import 'thing_type_args.dart';
import 'thing_type_properties.dart';
import 'thing_type_state.dart';

/// Creates and manages an AWS IoT Thing Type.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.iot.ThingType("foo", {name: "my_iot_thing"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.iot.ThingType("foo", name="my_iot_thing")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Aws.Iot.ThingType("foo", new()
///     {
///         Name = "my_iot_thing",
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
/// 		_, err := iot.NewThingType(ctx, "foo", &iot.ThingTypeArgs{
/// 			Name: pulumi.String("my_iot_thing"),
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
/// resource "aws_iot_thingtype" "foo" {
///   name = "my_iot_thing"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.iot.ThingType;
/// import com.pulumi.aws.iot.ThingTypeArgs;
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
///         var foo = new ThingType("foo", ThingTypeArgs.builder()
///             .name("my_iot_thing")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:iot:ThingType
///     properties:
///       name: my_iot_thing
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import IOT Thing Types using the name. For example:
///
/// ```sh
/// $ pulumi import aws:iot/thingType:ThingType example example
/// ```
class ThingType extends pulumi.CustomResource {
  /// The ARN of the created AWS IoT Thing Type.
  late final pulumi.Output<String> arn;
  /// Whether the thing type is deprecated. If true, no new things could be associated with this type.
  late final pulumi.Output<bool?> deprecated;
  /// The name of the thing type.
  late final pulumi.Output<String> name;
  /// , Configuration block that can contain the following properties of the thing type:
  late final pulumi.Output<ThingTypeProperties?> properties;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ThingType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ThingType]. {@macro pulumi_iot_thing_type_thing_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ThingType(
    String name, {
    ThingTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/thingType:ThingType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    deprecated = registerOutput<bool?>('deprecated');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ThingTypeProperties?>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ThingTypeProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [ThingType] resource's state with the given [name] and [id].
  static ThingType get(
    String name,
    pulumi.Input<String> id, {
    ThingTypeState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ThingType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ThingType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/thingType:ThingType',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    deprecated = registerOutput<bool?>('deprecated');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ThingTypeProperties?>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ThingTypeProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [ThingType] resource.
  ThingType.reference(String urn)
    : super(
        'aws:iot/thingType:ThingType',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    deprecated = registerOutput<bool?>('deprecated');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ThingTypeProperties?>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ThingTypeProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
