import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_resource_association_args.dart';

/// Manages a Service Catalog Budget Resource Association.
///
/// > **Tip:** A "resource" is either a Service Catalog portfolio or product.
///
/// ## Example Usage
///
/// ### Basic Usage
///
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
    this.budgetName = registerOutput<String>('budgetName');
    this.region = registerOutput<String>('region');
    this.resourceId = registerOutput<String>('resourceId');
  }
}
