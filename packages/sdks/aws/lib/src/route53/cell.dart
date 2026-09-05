import 'package:pulumi/pulumi.dart' as pulumi;
import 'cell_args.dart';
import 'cell_state.dart';

/// Provides an AWS Route 53 Recovery Readiness Cell.
///
/// ## Example Usage
///
///
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
///     var example = new Aws.Route53RecoveryReadiness.Cell("example", new()
///     {
///         CellName = "us-west-2-failover-cell",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53recoveryreadiness"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := route53recoveryreadiness.NewCell(ctx, "example", &route53recoveryreadiness.CellArgs{
/// 			CellName: pulumi.String("us-west-2-failover-cell"),
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
/// resource "aws_route53recoveryreadiness_cell" "example" {
///   cell_name = "us-west-2-failover-cell"
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
///         var example = new Cell("example", CellArgs.builder()
///             .cellName("us-west-2-failover-cell")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:route53recoveryreadiness:Cell
///     properties:
///       cellName: us-west-2-failover-cell
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Route53 Recovery Readiness cells using the cell name. For example:
///
/// ```sh
/// $ pulumi import aws:route53recoveryreadiness/cell:Cell us-west-2-failover-cell us-west-2-failover-cell
/// ```
class Cell extends pulumi.CustomResource {
  /// ARN of the cell
  late final pulumi.Output<String> arn;
  /// Unique name describing the cell.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> cellName;
  /// List of cell arns to add as nested fault domains within this cell.
  late final pulumi.Output<List<String>?> cells;
  /// List of readiness scopes (recovery groups or cells) that contain this cell.
  late final pulumi.Output<List<String>> parentReadinessScopes;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Cell].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cell]. {@macro pulumi_route53_recovery_readiness_cell_cell_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cell(
    String name, {
    CellArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53recoveryreadiness/cell:Cell',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    cellName = registerOutput<String>('cellName');
    cells = registerOutput<List<String>?>('cells', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    parentReadinessScopes = registerOutput<List<String>>('parentReadinessScopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Cell] resource's state with the given [name] and [id].
  static Cell get(
    String name,
    pulumi.Input<String> id, {
    CellState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Cell._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Cell._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53recoveryreadiness/cell:Cell',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    cellName = registerOutput<String>('cellName');
    cells = registerOutput<List<String>?>('cells', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    parentReadinessScopes = registerOutput<List<String>>('parentReadinessScopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Cell] resource.
  Cell.reference(String urn)
    : super(
        'aws:route53recoveryreadiness/cell:Cell',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    cellName = registerOutput<String>('cellName');
    cells = registerOutput<List<String>?>('cells', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    parentReadinessScopes = registerOutput<List<String>>('parentReadinessScopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
