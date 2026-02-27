import 'package:pulumi/pulumi.dart' as pulumi;
import 'constraint_args.dart';

/// Manages a Service Catalog Constraint.
///
/// > **NOTE:** This resource does not associate a Service Catalog product and portfolio. However, the product and portfolio must be associated (see the `aws.servicecatalog.ProductPortfolioAssociation` resource) prior to creating a constraint or you will receive an error.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.servicecatalog.Constraint` using the constraint ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/constraint:Constraint example cons-nmdkb6cgxfcrs
/// ```
class Constraint extends pulumi.CustomResource {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  late final pulumi.Output<String?> acceptLanguage;

  /// Description of the constraint.
  late final pulumi.Output<String> description;

  /// Owner of the constraint.
  late final pulumi.Output<String> owner;

  /// Constraint parameters in JSON format. The syntax depends on the constraint type. See details below.
  late final pulumi.Output<String> parameters;

  /// Portfolio identifier.
  late final pulumi.Output<String> portfolioId;

  /// Product identifier.
  late final pulumi.Output<String> productId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<String> status;

  /// Type of constraint. Valid values are `LAUNCH`, `NOTIFICATION`, `RESOURCE_UPDATE`, `STACKSET`, and `TEMPLATE`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> type;

  Constraint(
    String name, {
    ConstraintArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/constraint:Constraint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acceptLanguage = registerOutput<String?>('acceptLanguage');
    this.description = registerOutput<String>('description');
    this.owner = registerOutput<String>('owner');
    this.parameters = registerOutput<String>('parameters');
    this.portfolioId = registerOutput<String>('portfolioId');
    this.productId = registerOutput<String>('productId');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.type = registerOutput<String>('type');
  }
}
