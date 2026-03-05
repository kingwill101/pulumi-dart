import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_resource_association_args.dart';
import 'budget_resource_association_state.dart';

/// Manages a Service Catalog Budget Resource Association.
///
/// &gt; **Tip:** A "resource" is either a Service Catalog portfolio or product.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.servicecatalog.BudgetResourceAssociation("example", {
///     budgetName: "budget-pjtvyakdlyo3m",
///     resourceId: "prod-dnigbtea24ste",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.BudgetResourceAssociation("example",
///     budget_name="budget-pjtvyakdlyo3m",
///     resource_id="prod-dnigbtea24ste")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ServiceCatalog.BudgetResourceAssociation("example", new()
///     {
///         BudgetName = "budget-pjtvyakdlyo3m",
///         ResourceId = "prod-dnigbtea24ste",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicecatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicecatalog.NewBudgetResourceAssociation(ctx, "example", &servicecatalog.BudgetResourceAssociationArgs{
/// 			BudgetName: pulumi.String("budget-pjtvyakdlyo3m"),
/// 			ResourceId: pulumi.String("prod-dnigbtea24ste"),
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
/// import com.pulumi.aws.servicecatalog.BudgetResourceAssociation;
/// import com.pulumi.aws.servicecatalog.BudgetResourceAssociationArgs;
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
///         var example = new BudgetResourceAssociation("example", BudgetResourceAssociationArgs.builder()
///             .budgetName("budget-pjtvyakdlyo3m")
///             .resourceId("prod-dnigbtea24ste")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:servicecatalog:BudgetResourceAssociation
///     properties:
///       budgetName: budget-pjtvyakdlyo3m
///       resourceId: prod-dnigbtea24ste
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.servicecatalog.BudgetResourceAssociation` using the budget name and resource ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/budgetResourceAssociation:BudgetResourceAssociation example budget-pjtvyakdlyo3m:prod-dnigbtea24ste
/// ```
class BudgetResourceAssociation extends pulumi.CustomResource {
  /// Budget name.
  late final pulumi.Output<String> budgetName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Resource identifier.
  late final pulumi.Output<String> resourceId;

  /// Creates a new [BudgetResourceAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BudgetResourceAssociation]. {@macro pulumi_servicecatalog_budget_resource_association_budget_resource_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BudgetResourceAssociation(
    String name, {
    BudgetResourceAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/budgetResourceAssociation:BudgetResourceAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    budgetName = registerOutput<String>('budgetName');
    region = registerOutput<String>('region');
    resourceId = registerOutput<String>('resourceId');
  }

  /// Gets an existing [BudgetResourceAssociation] resource's state with the given [name] and [id].
  static BudgetResourceAssociation get(
    String name,
    pulumi.Input<String> id, {
    BudgetResourceAssociationState? state,
  }) {
    return BudgetResourceAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BudgetResourceAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/budgetResourceAssociation:BudgetResourceAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    budgetName = registerOutput<String>('budgetName');
    region = registerOutput<String>('region');
    resourceId = registerOutput<String>('resourceId');
  }
}
