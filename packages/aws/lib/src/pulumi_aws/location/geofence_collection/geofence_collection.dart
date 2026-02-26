import 'package:pulumi/pulumi.dart';
import 'geofence_collection_args.dart';

/// Resource for managing an AWS Location Geofence Collection.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
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
/// var example = new Aws.Location.GeofenceCollection("example", new()
/// {
/// CollectionName = "example",
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
/// _, err := location.NewGeofenceCollection(ctx, "example", &location.GeofenceCollectionArgs{
/// CollectionName: pulumi.String("example"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new GeofenceCollection("example", GeofenceCollectionArgs.builder()
/// .collectionName("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:location:GeofenceCollection
/// properties:
/// collectionName: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Location Geofence Collection using the <span pulumi-lang-nodejs="`collectionName`" pulumi-lang-dotnet="`CollectionName`" pulumi-lang-go="`collectionName`" pulumi-lang-python="`collection_name`" pulumi-lang-yaml="`collectionName`" pulumi-lang-java="`collectionName`">`collection_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:location/geofenceCollection:GeofenceCollection example example
/// ```
class GeofenceCollection extends CustomResource {
  /// The Amazon Resource Name (ARN) for the geofence collection resource. Used when you need to specify a resource across all AWS.
  late final Output<String> collectionArn;

  /// The name of the geofence collection.
  ///
  /// The following arguments are optional:
  late final Output<String> collectionName;

  /// The timestamp for when the geofence collection resource was created in ISO 8601 format.
  late final Output<String> createTime;

  /// The optional description for the geofence collection.
  late final Output<String?> description;

  /// A key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
  late final Output<String?> kmsKeyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value tags for the geofence collection. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// The timestamp for when the geofence collection resource was last updated in ISO 8601 format.
  late final Output<String> updateTime;

  GeofenceCollection(
    String name, {
    GeofenceCollectionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:location/geofenceCollection:GeofenceCollection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.collectionArn = Output.createUnknown<String>();
    this.collectionName = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.kmsKeyId = Output.createUnknown<String?>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.updateTime = Output.createUnknown<String>();
  }
}
