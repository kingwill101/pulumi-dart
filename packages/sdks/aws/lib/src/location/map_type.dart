import 'package:pulumi/pulumi.dart' as pulumi;
import 'map_args.dart';
import 'map_configuration.dart';
import 'map_state.dart';

/// Provides a Location Service Map.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.location.Map("example", {
///     configuration: {
///         style: "VectorHereBerlin",
///     },
///     mapName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.location.Map("example",
///     configuration={
///         "style": "VectorHereBerlin",
///     },
///     map_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Location.Map("example", new()
///     {
///         Configuration = new Aws.Location.Inputs.MapConfigurationArgs
///         {
///             Style = "VectorHereBerlin",
///         },
///         MapName = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/location"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := location.NewMap(ctx, "example", &location.MapArgs{
/// 			Configuration: &location.MapConfigurationArgs{
/// 				Style: pulumi.String("VectorHereBerlin"),
/// 			},
/// 			MapName: pulumi.String("example"),
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
/// resource "aws_location_map" "example" {
///   configuration = {
///     style = "VectorHereBerlin"
///   }
///   map_name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.location.Map;
/// import com.pulumi.aws.location.MapArgs;
/// import com.pulumi.aws.location.inputs.MapConfigurationArgs;
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
///         var example = new Map("example", MapArgs.builder()
///             .configuration(MapConfigurationArgs.builder()
///                 .style("VectorHereBerlin")
///                 .build())
///             .mapName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:location:Map
///     properties:
///       configuration:
///         style: VectorHereBerlin
///       mapName: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.location.Map` resources using the map name. For example:
///
/// ```sh
/// $ pulumi import aws:location/map:Map example example
/// ```
class MapType extends pulumi.CustomResource {
  /// Configuration block with the map style selected from an available data provider. Detailed below.
  late final pulumi.Output<MapConfiguration> configuration;
  /// The timestamp for when the map resource was created in ISO 8601 format.
  late final pulumi.Output<String> createTime;
  /// An optional description for the map resource.
  late final pulumi.Output<String?> description;
  /// The Amazon Resource Name (ARN) for the map resource. Used to specify a resource across all AWS.
  late final pulumi.Output<String> mapArn;
  /// The name for the map resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> mapName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value tags for the map. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The timestamp for when the map resource was last updated in ISO 8601 format.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [MapType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MapType]. {@macro pulumi_location_map_map_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MapType(
    String name, {
    MapArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:location/map:Map',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configuration = registerOutput<MapConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MapConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    mapArn = registerOutput<String>('mapArn');
    mapName = registerOutput<String>('mapName');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [MapType] resource's state with the given [name] and [id].
  static MapType get(
    String name,
    pulumi.Input<String> id, {
    MapState? state,
  }) {
    return MapType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MapType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:location/map:Map',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    configuration = registerOutput<MapConfiguration>('configuration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MapConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    mapArn = registerOutput<String>('mapArn');
    mapName = registerOutput<String>('mapName');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    updateTime = registerOutput<String>('updateTime');
  }
}
