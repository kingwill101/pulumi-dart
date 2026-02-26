import 'package:pulumi/pulumi.dart';
import '../place_index_data_source_configuration/place_index_data_source_configuration.dart';
import 'place_index_args.dart';

/// Provides a Location Service Place Index.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.location.PlaceIndex("example", {
/// dataSource: "Here",
/// indexName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.location.PlaceIndex("example",
/// data_source="Here",
/// index_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Location.PlaceIndex("example", new()
/// {
/// DataSource = "Here",
/// IndexName = "example",
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
/// _, err := location.NewPlaceIndex(ctx, "example", &location.PlaceIndexArgs{
/// DataSource: pulumi.String("Here"),
/// IndexName:  pulumi.String("example"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new PlaceIndex("example", PlaceIndexArgs.builder()
/// .dataSource("Here")
/// .indexName("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:location:PlaceIndex
/// properties:
/// dataSource: Here
/// indexName: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.location.PlaceIndex`" pulumi-lang-dotnet="`aws.location.PlaceIndex`" pulumi-lang-go="`location.PlaceIndex`" pulumi-lang-python="`location.PlaceIndex`" pulumi-lang-yaml="`aws.location.PlaceIndex`" pulumi-lang-java="`aws.location.PlaceIndex`">`aws.location.PlaceIndex`</span> resources using the place index name. For example:
///
/// ```sh
/// $ pulumi import aws:location/placeIndex:PlaceIndex example example
/// ```
class PlaceIndex extends CustomResource {
  /// The timestamp for when the place index resource was created in ISO 8601 format.
  late final Output<String> createTime;

  /// Specifies the geospatial data provider for the new place index.
  late final Output<String> dataSource;

  /// Configuration block with the data storage option chosen for requesting Places. Detailed below.
  late final Output<PlaceIndexDataSourceConfiguration> dataSourceConfiguration;

  /// The optional description for the place index resource.
  late final Output<String?> description;

  /// The Amazon Resource Name (ARN) for the place index resource. Used to specify a resource across AWS.
  late final Output<String> indexArn;

  /// The name of the place index resource.
  ///
  /// The following arguments are optional:
  late final Output<String> indexName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value tags for the place index. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The timestamp for when the place index resource was last update in ISO 8601.
  late final Output<String> updateTime;

  PlaceIndex(
    String name, {
    PlaceIndexArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:location/placeIndex:PlaceIndex',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.dataSource = Output.createUnknown<String>();
    this.dataSourceConfiguration =
        Output.createUnknown<PlaceIndexDataSourceConfiguration>();
    this.description = Output.createUnknown<String?>();
    this.indexArn = Output.createUnknown<String>();
    this.indexName = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.updateTime = Output.createUnknown<String>();
  }
}
