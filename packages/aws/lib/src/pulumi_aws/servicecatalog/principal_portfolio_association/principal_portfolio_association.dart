import 'package:pulumi/pulumi.dart';
import 'principal_portfolio_association_args.dart';

/// Manages a Service Catalog Principal Portfolio Association.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.servicecatalog.PrincipalPortfolioAssociation` using `accept_language`, `principal_arn`, `portfolio_id`, and `principal_type` separated by a comma. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/principalPortfolioAssociation:PrincipalPortfolioAssociation example en,arn:aws:iam::123456789012:user/Eleanor,port-68656c6c6f,IAM
/// ```
class PrincipalPortfolioAssociation extends CustomResource {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  late final Output<String?> acceptLanguage;

  /// Portfolio identifier.
  late final Output<String> portfolioId;

  /// Principal ARN.
  ///
  /// The following arguments are optional:
  late final Output<String> principalArn;

  /// Principal type. Setting this argument empty (e.g., `principal_type = ""`) will result in an error. Valid values are `IAM` and `IAM_PATTERN`. Default is `IAM`.
  late final Output<String?> principalType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  PrincipalPortfolioAssociation(
    String name, {
    PrincipalPortfolioAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/principalPortfolioAssociation:PrincipalPortfolioAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.acceptLanguage = registerOutput<String?>('acceptLanguage');
    this.portfolioId = registerOutput<String>('portfolioId');
    this.principalArn = registerOutput<String>('principalArn');
    this.principalType = registerOutput<String?>('principalType');
    this.region = registerOutput<String>('region');
  }
}
