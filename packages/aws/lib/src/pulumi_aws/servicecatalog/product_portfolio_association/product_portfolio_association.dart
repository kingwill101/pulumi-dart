import 'package:pulumi/pulumi.dart';
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
class ProductPortfolioAssociation extends CustomResource {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  late final Output<String?> acceptLanguage;

  /// Portfolio identifier.
  late final Output<String> portfolioId;

  /// Product identifier.
  ///
  /// The following arguments are optional:
  late final Output<String> productId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Identifier of the source portfolio.
  late final Output<String?> sourcePortfolioId;

  ProductPortfolioAssociation(
    String name, {
    ProductPortfolioAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/productPortfolioAssociation:ProductPortfolioAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.acceptLanguage = registerOutput<String?>('acceptLanguage');
    this.portfolioId = registerOutput<String>('portfolioId');
    this.productId = registerOutput<String>('productId');
    this.region = registerOutput<String>('region');
    this.sourcePortfolioId = registerOutput<String?>('sourcePortfolioId');
  }
}
