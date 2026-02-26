import 'package:pulumi/pulumi.dart';
import 'data_set_args.dart';

/// Provides a resource to manage AWS Data Exchange DataSets.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dataexchange.DataSet("example", {
/// assetType: "S3_SNAPSHOT",
/// description: "example",
/// name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dataexchange.DataSet("example",
/// asset_type="S3_SNAPSHOT",
/// description="example",
/// name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.DataExchange.DataSet("example", new()
/// {
/// AssetType = "S3_SNAPSHOT",
/// Description = "example",
/// Name = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dataexchange"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dataexchange.NewDataSet(ctx, "example", &dataexchange.DataSetArgs{
/// AssetType:   pulumi.String("S3_SNAPSHOT"),
/// Description: pulumi.String("example"),
/// Name:        pulumi.String("example"),
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
/// import com.pulumi.aws.dataexchange.DataSet;
/// import com.pulumi.aws.dataexchange.DataSetArgs;
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
/// var example = new DataSet("example", DataSetArgs.builder()
/// .assetType("S3_SNAPSHOT")
/// .description("example")
/// .name("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:dataexchange:DataSet
/// properties:
/// assetType: S3_SNAPSHOT
/// description: example
/// name: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import DataExchange DataSets using their <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:dataexchange/dataSet:DataSet example 4fa784c7-ccb4-4dbf-ba4f-02198320daa1
/// ```
class DataSet extends CustomResource {
  /// The Amazon Resource Name of this data set.
  late final Output<String> arn;

  /// The type of asset that is added to a data set. Valid values include `API_GATEWAY_API`, `LAKE_FORMATION_DATA_PERMISSION`, `REDSHIFT_DATA_SHARE`, `S3_DATA_ACCESS`, `S3_SNAPSHOT`.
  late final Output<String> assetType;

  /// A description for the data set.
  late final Output<String> description;

  /// The name of the data set.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  DataSet(
    String name, {
    DataSetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dataexchange/dataSet:DataSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.assetType = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
