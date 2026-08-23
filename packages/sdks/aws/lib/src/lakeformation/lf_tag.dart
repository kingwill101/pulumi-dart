import 'package:pulumi/pulumi.dart' as pulumi;
import 'lf_tag_args.dart';
import 'lf_tag_state.dart';

/// Creates an LF-Tag with the specified name and values. Each key must have at least one value. The maximum number of values permitted is 1000.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lakeformation.LfTag("example", {
///     key: "module",
///     values: [
///         "Orders",
///         "Sales",
///         "Customers",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lakeformation.LfTag("example",
///     key="module",
///     values=[
///         "Orders",
///         "Sales",
///         "Customers",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.LakeFormation.LfTag("example", new()
///     {
///         Key = "module",
///         Values = new[]
///         {
///             "Orders",
///             "Sales",
///             "Customers",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lakeformation.NewLfTag(ctx, "example", &lakeformation.LfTagArgs{
/// 			Key: pulumi.String("module"),
/// 			Values: pulumi.StringArray{
/// 				pulumi.String("Orders"),
/// 				pulumi.String("Sales"),
/// 				pulumi.String("Customers"),
/// 			},
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
/// resource "aws_lakeformation_lftag" "example" {
///   key    = "module"
///   values = ["Orders", "Sales", "Customers"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lakeformation.LfTag;
/// import com.pulumi.aws.lakeformation.LfTagArgs;
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
///         var example = new LfTag("example", LfTagArgs.builder()
///             .key("module")
///             .values(
///                 "Orders",
///                 "Sales",
///                 "Customers")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lakeformation:LfTag
///     properties:
///       key: module
///       values:
///         - Orders
///         - Sales
///         - Customers
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Lake Formation LF-Tags using the `catalog_id:key`. If you have not set a Catalog ID specify the AWS Account ID that the database is in. For example:
///
/// ```sh
/// $ pulumi import aws:lakeformation/lfTag:LfTag example 123456789012:some_key
/// ```
class LfTag extends pulumi.CustomResource {
  /// ID of the Data Catalog to create the tag in. If omitted, this defaults to the AWS Account ID.
  late final pulumi.Output<String> catalogId;
  /// Key-name for the tag.
  late final pulumi.Output<String> key;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// List of possible values an attribute can take.
  late final pulumi.Output<List<String>> values;

  /// Creates a new [LfTag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LfTag]. {@macro pulumi_lakeformation_lf_tag_lf_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LfTag(
    String name, {
    LfTagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/lfTag:LfTag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    catalogId = registerOutput<String>('catalogId');
    key = registerOutput<String>('key');
    region = registerOutput<String>('region');
    values = registerOutput<List<String>>('values');
  }

  /// Gets an existing [LfTag] resource's state with the given [name] and [id].
  static LfTag get(
    String name,
    pulumi.Input<String> id, {
    LfTagState? state,
  }) {
    return LfTag._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LfTag._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/lfTag:LfTag',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    catalogId = registerOutput<String>('catalogId');
    key = registerOutput<String>('key');
    region = registerOutput<String>('region');
    values = registerOutput<List<String>>('values');
  }
}
