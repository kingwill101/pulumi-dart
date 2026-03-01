import 'package:pulumi/pulumi.dart' as pulumi;
import 'geofence_collection_args.dart';
import 'geofence_collection_state.dart';

/// Resource for managing an AWS Location Geofence Collection.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.location.GeofenceCollection("example", {collectionName: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.location.GeofenceCollection("example", collection_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Location.GeofenceCollection("example", new()
///     {
///         CollectionName = "example",
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
/// 		_, err := location.NewGeofenceCollection(ctx, "example", &location.GeofenceCollectionArgs{
/// 			CollectionName: pulumi.String("example"),
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
/// import com.pulumi.aws.location.GeofenceCollection;
/// import com.pulumi.aws.location.GeofenceCollectionArgs;
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
///         var example = new GeofenceCollection("example", GeofenceCollectionArgs.builder()
///             .collectionName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:location:GeofenceCollection
///     properties:
///       collectionName: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Location Geofence Collection using the `collection_name`. For example:
///
/// ```sh
/// $ pulumi import aws:location/geofenceCollection:GeofenceCollection example example
/// ```
class GeofenceCollection extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) for the geofence collection resource. Used when you need to specify a resource across all AWS.
  late final pulumi.Output<String> collectionArn;
  /// The name of the geofence collection.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> collectionName;
  /// The timestamp for when the geofence collection resource was created in ISO 8601 format.
  late final pulumi.Output<String> createTime;
  /// The optional description for the geofence collection.
  late final pulumi.Output<String?> description;
  /// A key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
  late final pulumi.Output<String?> kmsKeyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value tags for the geofence collection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The timestamp for when the geofence collection resource was last updated in ISO 8601 format.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [GeofenceCollection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GeofenceCollection]. {@macro pulumi_location_geofence_collection_geofence_collection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GeofenceCollection(
    String name, {
    GeofenceCollectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:location/geofenceCollection:GeofenceCollection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.collectionArn = registerOutput<String>('collectionArn');
    this.collectionName = registerOutput<String>('collectionName');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [GeofenceCollection] resource's state with the given [name] and [id].
  static GeofenceCollection get(
    String name,
    pulumi.Input<String> id, {
    GeofenceCollectionState? state,
  }) {
    return GeofenceCollection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GeofenceCollection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:location/geofenceCollection:GeofenceCollection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.collectionArn = registerOutput<String>('collectionArn');
    this.collectionName = registerOutput<String>('collectionName');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
