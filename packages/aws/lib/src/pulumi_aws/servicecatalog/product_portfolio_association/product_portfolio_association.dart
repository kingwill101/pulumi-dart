import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_portfolio_association_args.dart';

/// Manages a Service Catalog Product Portfolio Association.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.servicecatalog.ProductPortfolioAssociation` using the accept language, portfolio ID, and product ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/productPortfolioAssociation:ProductPortfolioAssociation example en:port-68656c6c6f:prod-dnigbtea24ste
/// ```
class ProductPortfolioAssociation extends pulumi.CustomResource {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  late final pulumi.Output<String?> acceptLanguage;

  /// Portfolio identifier.
  late final pulumi.Output<String> portfolioId;

  /// Product identifier.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> productId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Identifier of the source portfolio.
  late final pulumi.Output<String?> sourcePortfolioId;

  ProductPortfolioAssociation(
    String name, {
    ProductPortfolioAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/productPortfolioAssociation:ProductPortfolioAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acceptLanguage = registerOutput<String?>('acceptLanguage');
    this.portfolioId = registerOutput<String>('portfolioId');
    this.productId = registerOutput<String>('productId');
    this.region = registerOutput<String>('region');
    this.sourcePortfolioId = registerOutput<String?>('sourcePortfolioId');
  }
}
