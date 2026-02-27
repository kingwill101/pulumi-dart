import 'package:pulumi/pulumi.dart' as pulumi;
import 'portfolio_args.dart';

/// Provides a resource to create a Service Catalog Portfolio.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Service Catalog Portfolios using the Service Catalog Portfolio `id`. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/portfolio:Portfolio testfolio port-12344321
/// ```
class Portfolio extends pulumi.CustomResource {
  late final pulumi.Output<String> arn;
  late final pulumi.Output<String> createdTime;

  /// Description of the portfolio
  late final pulumi.Output<String> description;

  /// The name of the portfolio.
  late final pulumi.Output<String> name;

  /// Name of the person or organization who owns the portfolio.
  late final pulumi.Output<String> providerName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Tags to apply to the connection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  Portfolio(
    String name, {
    PortfolioArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/portfolio:Portfolio',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdTime = registerOutput<String>('createdTime');
    this.description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    this.providerName = registerOutput<String>('providerName');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
