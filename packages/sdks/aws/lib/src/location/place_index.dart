import 'package:pulumi/pulumi.dart' as pulumi;
import 'place_index_args.dart';
import 'place_index_data_source_configuration.dart';
import 'place_index_state.dart';

/// Provides a Location Service Place Index.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.location.PlaceIndex("example", {
///     dataSource: "Here",
///     indexName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.location.PlaceIndex("example",
///     data_source="Here",
///     index_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Location.PlaceIndex("example", new()
///     {
///         DataSource = "Here",
///         IndexName = "example",
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
/// 		_, err := location.NewPlaceIndex(ctx, "example", &location.PlaceIndexArgs{
/// 			DataSource: pulumi.String("Here"),
/// 			IndexName:  pulumi.String("example"),
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
/// import com.pulumi.aws.location.PlaceIndex;
/// import com.pulumi.aws.location.PlaceIndexArgs;
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
///         var example = new PlaceIndex("example", PlaceIndexArgs.builder()
///             .dataSource("Here")
///             .indexName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:location:PlaceIndex
///     properties:
///       dataSource: Here
///       indexName: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.location.PlaceIndex` resources using the place index name. For example:
///
/// ```sh
/// $ pulumi import aws:location/placeIndex:PlaceIndex example example
/// ```
class PlaceIndex extends pulumi.CustomResource {
  /// The timestamp for when the place index resource was created in ISO 8601 format.
  late final pulumi.Output<String> createTime;
  /// Specifies the geospatial data provider for the new place index.
  late final pulumi.Output<String> dataSource;
  /// Configuration block with the data storage option chosen for requesting Places. Detailed below.
  late final pulumi.Output<PlaceIndexDataSourceConfiguration> dataSourceConfiguration;
  /// The optional description for the place index resource.
  late final pulumi.Output<String?> description;
  /// The Amazon Resource Name (ARN) for the place index resource. Used to specify a resource across AWS.
  late final pulumi.Output<String> indexArn;
  /// The name of the place index resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> indexName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value tags for the place index. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The timestamp for when the place index resource was last update in ISO 8601.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [PlaceIndex].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PlaceIndex]. {@macro pulumi_location_place_index_place_index_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PlaceIndex(
    String name, {
    PlaceIndexArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:location/placeIndex:PlaceIndex',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    dataSource = registerOutput<String>('dataSource');
    dataSourceConfiguration = registerOutput<PlaceIndexDataSourceConfiguration>('dataSourceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PlaceIndexDataSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    indexArn = registerOutput<String>('indexArn');
    indexName = registerOutput<String>('indexName');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [PlaceIndex] resource's state with the given [name] and [id].
  static PlaceIndex get(
    String name,
    pulumi.Input<String> id, {
    PlaceIndexState? state,
  }) {
    return PlaceIndex._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PlaceIndex._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:location/placeIndex:PlaceIndex',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    dataSource = registerOutput<String>('dataSource');
    dataSourceConfiguration = registerOutput<PlaceIndexDataSourceConfiguration>('dataSourceConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PlaceIndexDataSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    indexArn = registerOutput<String>('indexArn');
    indexName = registerOutput<String>('indexName');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    updateTime = registerOutput<String>('updateTime');
  }
}
