// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_portfolio_portfolio_args_doc}
/// The set of arguments for Portfolio.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_portfolio_portfolio_args_doc}
class PortfolioArgs {
  /// The description of the portfolio
  final pulumi.Input<String>? description;
  /// The name of the portfolio
  final pulumi.Input<String> portfolioName;
  /// The provider name of the portfolio
  final pulumi.Input<String> providerName;

  /// Creates a new [PortfolioArgs].
  /// [description] The description of the portfolio
  /// [portfolioName] The name of the portfolio
  /// [providerName] The provider name of the portfolio
  PortfolioArgs({
    this.description,
    required this.portfolioName,
    required this.providerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'portfolioName': portfolioName,
      'providerName': providerName,
    };
  }

  factory PortfolioArgs.fromMap(Map<String, dynamic> map) {
    return PortfolioArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      portfolioName: (map['portfolioName'] as String).input(),
      providerName: (map['providerName'] as String).input(),
    );
  }
}

