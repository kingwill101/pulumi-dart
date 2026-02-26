import 'package:pulumi/pulumi.dart';
import 'cost_allocation_tag_args.dart';

/// Provides a CE Cost Allocation Tag.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.costexplorer.CostAllocationTag("example", {
/// tagKey: "example",
/// status: "Active",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.costexplorer.CostAllocationTag("example",
/// tag_key="example",
/// status="Active")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.CostExplorer.CostAllocationTag("example", new()
/// {
/// TagKey = "example",
/// Status = "Active",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/costexplorer"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := costexplorer.NewCostAllocationTag(ctx, "example", &costexplorer.CostAllocationTagArgs{
/// TagKey: pulumi.String("example"),
/// Status: pulumi.String("Active"),
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
/// import com.pulumi.aws.costexplorer.CostAllocationTag;
/// import com.pulumi.aws.costexplorer.CostAllocationTagArgs;
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
/// var example = new CostAllocationTag("example", CostAllocationTagArgs.builder()
/// .tagKey("example")
/// .status("Active")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:costexplorer:CostAllocationTag
/// properties:
/// tagKey: example
/// status: Active
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.costexplorer.CostAllocationTag`" pulumi-lang-dotnet="`aws.costexplorer.CostAllocationTag`" pulumi-lang-go="`costexplorer.CostAllocationTag`" pulumi-lang-python="`costexplorer.CostAllocationTag`" pulumi-lang-yaml="`aws.costexplorer.CostAllocationTag`" pulumi-lang-java="`aws.costexplorer.CostAllocationTag`">`aws.costexplorer.CostAllocationTag`</span> using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:costexplorer/costAllocationTag:CostAllocationTag example key
/// ```
class CostAllocationTag extends CustomResource {
  /// The status of a cost allocation tag. Valid values are `Active` and `Inactive`.
  late final Output<String> status;

  /// The key for the cost allocation tag.
  late final Output<String> tagKey;

  /// The type of cost allocation tag.
  late final Output<String> type;

  CostAllocationTag(
    String name, {
    CostAllocationTagArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:costexplorer/costAllocationTag:CostAllocationTag',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.status = registerOutput<String>('status');
    this.tagKey = registerOutput<String>('tagKey');
    this.type = registerOutput<String>('type');
  }
}
