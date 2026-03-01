import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_set_args.dart';

/// Provides a resource to manage AWS Data Exchange DataSets.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dataexchange.DataSet("example", {
///     assetType: "S3_SNAPSHOT",
///     description: "example",
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dataexchange.DataSet("example",
///     asset_type="S3_SNAPSHOT",
///     description="example",
///     name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DataExchange.DataSet("example", new()
///     {
///         AssetType = "S3_SNAPSHOT",
///         Description = "example",
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dataexchange"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataexchange.NewDataSet(ctx, "example", &dataexchange.DataSetArgs{
/// 			AssetType:   pulumi.String("S3_SNAPSHOT"),
/// 			Description: pulumi.String("example"),
/// 			Name:        pulumi.String("example"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new DataSet("example", DataSetArgs.builder()
///             .assetType("S3_SNAPSHOT")
///             .description("example")
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:dataexchange:DataSet
///     properties:
///       assetType: S3_SNAPSHOT
///       description: example
///       name: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import DataExchange DataSets using their `id`. For example:
///
/// ```sh
/// $ pulumi import aws:dataexchange/dataSet:DataSet example 4fa784c7-ccb4-4dbf-ba4f-02198320daa1
/// ```
class DataSet extends pulumi.CustomResource {
  /// The Amazon Resource Name of this data set.
  late final pulumi.Output<String> arn;
  /// The type of asset that is added to a data set. Valid values include `API_GATEWAY_API`, `LAKE_FORMATION_DATA_PERMISSION`, `REDSHIFT_DATA_SHARE`, `S3_DATA_ACCESS`, `S3_SNAPSHOT`.
  late final pulumi.Output<String> assetType;
  /// A description for the data set.
  late final pulumi.Output<String> description;
  /// The name of the data set.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [DataSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataSet]. {@macro pulumi_dataexchange_data_set_data_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataSet(
    String name, {
    DataSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dataexchange/dataSet:DataSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.assetType = registerOutput<String>('assetType');
    this.description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
