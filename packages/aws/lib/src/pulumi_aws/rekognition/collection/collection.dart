import 'package:pulumi/pulumi.dart';
import '../collection_timeouts/collection_timeouts.dart';
import 'collection_args.dart';

/// Resource for managing an AWS Rekognition Collection.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.rekognition.Collection("example", {
/// collectionId: "my-collection",
/// tags: {
/// example: "1",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.rekognition.Collection("example",
/// collection_id="my-collection",
/// tags={
/// "example": "1",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Rekognition.Collection("example", new()
/// {
/// CollectionId = "my-collection",
/// Tags =
/// {
/// { "example", "1" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rekognition"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := rekognition.NewCollection(ctx, "example", &rekognition.CollectionArgs{
/// CollectionId: pulumi.String("my-collection"),
/// Tags: pulumi.StringMap{
/// "example": pulumi.String("1"),
/// },
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Collection("example", CollectionArgs.builder()
/// .collectionId("my-collection")
/// .tags(Map.of("example", "1"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:rekognition:Collection
/// properties:
/// collectionId: my-collection
/// tags:
/// example: 1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Rekognition Collection using the <span pulumi-lang-nodejs="`collectionId`" pulumi-lang-dotnet="`CollectionId`" pulumi-lang-go="`collectionId`" pulumi-lang-python="`collection_id`" pulumi-lang-yaml="`collectionId`" pulumi-lang-java="`collectionId`">`collection_id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:rekognition/collection:Collection example collection-id-12345678
/// ```
class Collection extends CustomResource {
  /// ARN of the Collection.
  late final Output<String> arn;

  /// The name of the collection
  ///
  /// The following arguments are optional:
  late final Output<String> collectionId;

  /// The Face Model Version that the collection was initialized with
  late final Output<String> faceModelVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<CollectionTimeouts?> timeouts;

  Collection(
    String name, {
    CollectionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rekognition/collection:Collection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.collectionId = registerOutput<String>('collectionId');
    this.faceModelVersion = registerOutput<String>('faceModelVersion');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<CollectionTimeouts?>('timeouts');
  }
}
