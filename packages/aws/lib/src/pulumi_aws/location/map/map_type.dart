import 'package:pulumi/pulumi.dart';
import '../map_configuration/map_configuration.dart';
import 'map_args.dart';

/// Provides a Location Service Map.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.location.Map("example", {
/// configuration: {
/// style: "VectorHereBerlin",
/// },
/// mapName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.location.Map("example",
/// configuration={
/// "style": "VectorHereBerlin",
/// },
/// map_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Location.Map("example", new()
/// {
/// Configuration = new Aws.Location.Inputs.MapConfigurationArgs
/// {
/// Style = "VectorHereBerlin",
/// },
/// MapName = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/location"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := location.NewMap(ctx, "example", &location.MapArgs{
/// Configuration: &location.MapConfigurationArgs{
/// Style: pulumi.String("VectorHereBerlin"),
/// },
/// MapName: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Map("example", MapArgs.builder()
/// .configuration(MapConfigurationArgs.builder()
/// .style("VectorHereBerlin")
/// .build())
/// .mapName("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:location:Map
/// properties:
/// configuration:
/// style: VectorHereBerlin
/// mapName: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.location.Map`" pulumi-lang-dotnet="`aws.location.Map`" pulumi-lang-go="`location.Map`" pulumi-lang-python="`location.Map`" pulumi-lang-yaml="`aws.location.Map`" pulumi-lang-java="`aws.location.Map`">`aws.location.Map`</span> resources using the map name. For example:
///
/// ```sh
/// $ pulumi import aws:location/map:Map example example
/// ```
class MapType extends CustomResource {
  /// Configuration block with the map style selected from an available data provider. Detailed below.
  late final Output<MapConfiguration> configuration;

  /// The timestamp for when the map resource was created in ISO 8601 format.
  late final Output<String> createTime;

  /// An optional description for the map resource.
  late final Output<String?> description;

  /// The Amazon Resource Name (ARN) for the map resource. Used to specify a resource across all AWS.
  late final Output<String> mapArn;

  /// The name for the map resource.
  ///
  /// The following arguments are optional:
  late final Output<String> mapName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value tags for the map. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The timestamp for when the map resource was last updated in ISO 8601 format.
  late final Output<String> updateTime;

  MapType(
    String name, {
    MapArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:location/map:Map',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.configuration = registerOutput<MapConfiguration>('configuration');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.mapArn = registerOutput<String>('mapArn');
    this.mapName = registerOutput<String>('mapName');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
