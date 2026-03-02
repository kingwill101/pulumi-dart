// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_portfolio_portfolio_args_doc}
/// The set of arguments for Portfolio.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_portfolio_portfolio_args_doc}
class PortfolioArgs {
  /// Description of the portfolio
  final pulumi.Input<String>? description;
  /// The name of the portfolio.
  final pulumi.Input<String>? name;
  /// Name of the person or organization who owns the portfolio.
  final pulumi.Input<String> providerName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tags to apply to the connection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PortfolioArgs].
  /// [description] Description of the portfolio
  /// [name] The name of the portfolio.
  /// [providerName] Name of the person or organization who owns the portfolio.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the connection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  PortfolioArgs({
    this.description,
    this.name,
    required this.providerName,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'providerName': providerName,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory PortfolioArgs.fromMap(Map<String, dynamic> map) {
    return PortfolioArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      providerName: (map['providerName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

