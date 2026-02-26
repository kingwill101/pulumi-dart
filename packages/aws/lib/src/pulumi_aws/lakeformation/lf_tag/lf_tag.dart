import 'package:pulumi/pulumi.dart';
import 'lf_tag_args.dart';

/// Creates an LF-Tag with the specified name and values. Each key must have at least one value. The maximum number of values permitted is 1000.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lakeformation.LfTag("example", {
/// key: "module",
/// values: [
/// "Orders",
/// "Sales",
/// "Customers",
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lakeformation.LfTag("example",
/// key="module",
/// values=[
/// "Orders",
/// "Sales",
/// "Customers",
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.LakeFormation.LfTag("example", new()
/// {
/// Key = "module",
/// Values = new[]
/// {
/// "Orders",
/// "Sales",
/// "Customers",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lakeformation"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lakeformation.NewLfTag(ctx, "example", &lakeformation.LfTagArgs{
/// Key: pulumi.String("module"),
/// Values: pulumi.StringArray{
/// pulumi.String("Orders"),
/// pulumi.String("Sales"),
/// pulumi.String("Customers"),
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
/// import com.pulumi.aws.lakeformation.LfTag;
/// import com.pulumi.aws.lakeformation.LfTagArgs;
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
/// var example = new LfTag("example", LfTagArgs.builder()
/// .key("module")
/// .values(
/// "Orders",
/// "Sales",
/// "Customers")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lakeformation:LfTag
/// properties:
/// key: module
/// values:
/// - Orders
/// - Sales
/// - Customers
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Lake Formation LF-Tags using the `catalog_id:key`. If you have not set a Catalog ID specify the AWS Account ID that the database is in. For example:
///
/// ```sh
/// $ pulumi import aws:lakeformation/lfTag:LfTag example 123456789012:some_key
/// ```
class LfTag extends CustomResource {
  /// ID of the Data Catalog to create the tag in. If omitted, this defaults to the AWS Account ID.
  late final Output<String> catalogId;

  /// Key-name for the tag.
  late final Output<String> key;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// List of possible values an attribute can take.
  late final Output<List<String>> values;

  LfTag(
    String name, {
    LfTagArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/lfTag:LfTag',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.catalogId = Output.createUnknown<String>();
    this.key = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.values = Output.createUnknown<List<String>>();
  }
}
