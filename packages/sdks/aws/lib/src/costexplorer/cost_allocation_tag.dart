import 'package:pulumi/pulumi.dart' as pulumi;
import 'cost_allocation_tag_args.dart';
import 'cost_allocation_tag_state.dart';

/// Provides a CE Cost Allocation Tag.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.costexplorer.CostAllocationTag("example", {
///     tagKey: "example",
///     status: "Active",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.costexplorer.CostAllocationTag("example",
///     tag_key="example",
///     status="Active")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CostExplorer.CostAllocationTag("example", new()
///     {
///         TagKey = "example",
///         Status = "Active",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/costexplorer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costexplorer.NewCostAllocationTag(ctx, "example", &costexplorer.CostAllocationTagArgs{
/// 			TagKey: pulumi.String("example"),
/// 			Status: pulumi.String("Active"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new CostAllocationTag("example", CostAllocationTagArgs.builder()
///             .tagKey("example")
///             .status("Active")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:costexplorer:CostAllocationTag
///     properties:
///       tagKey: example
///       status: Active
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.costexplorer.CostAllocationTag` using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:costexplorer/costAllocationTag:CostAllocationTag example key
/// ```
class CostAllocationTag extends pulumi.CustomResource {
  /// The status of a cost allocation tag. Valid values are `Active` and `Inactive`.
  late final pulumi.Output<String> status;
  /// The key for the cost allocation tag.
  late final pulumi.Output<String> tagKey;
  /// The type of cost allocation tag.
  late final pulumi.Output<String> type;

  /// Creates a new [CostAllocationTag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CostAllocationTag]. {@macro pulumi_costexplorer_cost_allocation_tag_cost_allocation_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CostAllocationTag(
    String name, {
    CostAllocationTagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:costexplorer/costAllocationTag:CostAllocationTag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    status = registerOutput<String>('status');
    tagKey = registerOutput<String>('tagKey');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [CostAllocationTag] resource's state with the given [name] and [id].
  static CostAllocationTag get(
    String name,
    pulumi.Input<String> id, {
    CostAllocationTagState? state,
  }) {
    return CostAllocationTag._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CostAllocationTag._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:costexplorer/costAllocationTag:CostAllocationTag',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    status = registerOutput<String>('status');
    tagKey = registerOutput<String>('tagKey');
    type = registerOutput<String>('type');
  }
}
