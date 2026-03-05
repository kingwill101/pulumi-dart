import 'package:pulumi/pulumi.dart' as pulumi;
import 'collection_args.dart';
import 'collection_state.dart';
import 'collection_timeouts.dart';

/// Resource for managing an AWS Rekognition Collection.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rekognition.Collection("example", {
///     collectionId: "my-collection",
///     tags: {
///         example: "1",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rekognition.Collection("example",
///     collection_id="my-collection",
///     tags={
///         "example": "1",
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
///     var example = new Aws.Rekognition.Collection("example", new()
///     {
///         CollectionId = "my-collection",
///         Tags =
///         {
///             { "example", "1" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rekognition"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rekognition.NewCollection(ctx, "example", &rekognition.CollectionArgs{
/// 			CollectionId: pulumi.String("my-collection"),
/// 			Tags: pulumi.StringMap{
/// 				"example": pulumi.String("1"),
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
/// import com.pulumi.aws.rekognition.Collection;
/// import com.pulumi.aws.rekognition.CollectionArgs;
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
///         var example = new Collection("example", CollectionArgs.builder()
///             .collectionId("my-collection")
///             .tags(Map.of("example", "1"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:rekognition:Collection
///     properties:
///       collectionId: my-collection
///       tags:
///         example: 1
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Rekognition Collection using the `collection_id`. For example:
///
/// ```sh
/// $ pulumi import aws:rekognition/collection:Collection example collection-id-12345678
/// ```
class Collection extends pulumi.CustomResource {
  /// ARN of the Collection.
  late final pulumi.Output<String> arn;

  /// The name of the collection
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> collectionId;

  /// The Face Model Version that the collection was initialized with
  late final pulumi.Output<String> faceModelVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<CollectionTimeouts?> timeouts;

  /// Creates a new [Collection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Collection]. {@macro pulumi_rekognition_collection_collection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Collection(
    String name, {
    CollectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:rekognition/collection:Collection',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    collectionId = registerOutput<String>('collectionId');
    faceModelVersion = registerOutput<String>('faceModelVersion');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<CollectionTimeouts?>(
      'timeouts',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CollectionTimeouts.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }

  /// Gets an existing [Collection] resource's state with the given [name] and [id].
  static Collection get(
    String name,
    pulumi.Input<String> id, {
    CollectionState? state,
  }) {
    return Collection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Collection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:rekognition/collection:Collection',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    collectionId = registerOutput<String>('collectionId');
    faceModelVersion = registerOutput<String>('faceModelVersion');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<CollectionTimeouts?>(
      'timeouts',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CollectionTimeouts.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
