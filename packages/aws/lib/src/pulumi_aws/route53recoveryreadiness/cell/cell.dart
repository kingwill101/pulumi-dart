import 'package:pulumi/pulumi.dart';
import 'cell_args.dart';

/// Provides an AWS Route 53 Recovery Readiness Cell.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53recoveryreadiness.Cell("example", {cellName: "us-west-2-failover-cell"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53recoveryreadiness.Cell("example", cell_name="us-west-2-failover-cell")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Route53RecoveryReadiness.Cell("example", new()
/// {
/// CellName = "us-west-2-failover-cell",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53recoveryreadiness"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := route53recoveryreadiness.NewCell(ctx, "example", &route53recoveryreadiness.CellArgs{
/// CellName: pulumi.String("us-west-2-failover-cell"),
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
/// import com.pulumi.aws.route53recoveryreadiness.Cell;
/// import com.pulumi.aws.route53recoveryreadiness.CellArgs;
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
/// var example = new Cell("example", CellArgs.builder()
/// .cellName("us-west-2-failover-cell")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:route53recoveryreadiness:Cell
/// properties:
/// cellName: us-west-2-failover-cell
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Route53 Recovery Readiness cells using the cell name. For example:
///
/// ```sh
/// $ pulumi import aws:route53recoveryreadiness/cell:Cell us-west-2-failover-cell us-west-2-failover-cell
/// ```
class Cell extends CustomResource {
  /// ARN of the cell
  late final Output<String> arn;

  /// Unique name describing the cell.
  ///
  /// The following arguments are optional:
  late final Output<String> cellName;

  /// List of cell arns to add as nested fault domains within this cell.
  late final Output<List<String>?> cells;

  /// List of readiness scopes (recovery groups or cells) that contain this cell.
  late final Output<List<String>> parentReadinessScopes;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Cell(
    String name, {
    CellArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53recoveryreadiness/cell:Cell',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.cellName = registerOutput<String>('cellName');
    this.cells = registerOutput<List<String>?>('cells');
    this.parentReadinessScopes =
        registerOutput<List<String>>('parentReadinessScopes');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
