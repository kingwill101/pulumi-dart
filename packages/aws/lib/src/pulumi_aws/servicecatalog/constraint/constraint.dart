import 'package:pulumi/pulumi.dart';
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
class Constraint extends CustomResource {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  late final Output<String?> acceptLanguage;

  /// Description of the constraint.
  late final Output<String> description;

  /// Owner of the constraint.
  late final Output<String> owner;

  /// Constraint parameters in JSON format. The syntax depends on the constraint type. See details below.
  late final Output<String> parameters;

  /// Portfolio identifier.
  late final Output<String> portfolioId;

  /// Product identifier.
  late final Output<String> productId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<String> status;

  /// Type of constraint. Valid values are `LAUNCH`, `NOTIFICATION`, `RESOURCE_UPDATE`, `STACKSET`, and `TEMPLATE`.
  ///
  /// The following arguments are optional:
  late final Output<String> type;

  Constraint(
    String name, {
    ConstraintArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/constraint:Constraint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
