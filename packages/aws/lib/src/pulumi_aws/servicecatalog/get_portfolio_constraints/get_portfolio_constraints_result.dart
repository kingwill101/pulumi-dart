// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_portfolio_constraints_detail/get_portfolio_constraints_detail.dart';

/// Result data returned by getPortfolioConstraints.
class GetPortfolioConstraintsResult {
  final String? acceptLanguage;

  /// List of information about the constraints. See details below.
  final List<GetPortfolioConstraintsDetail> details;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Identifier of the portfolio the product resides in. The constraint applies only to the instance of the product that lives within this portfolio.
  final String portfolioId;

  /// Identifier of the product the constraint applies to. A constraint applies to a specific instance of a product within a certain portfolio.
  final String? productId;
  final String region;

  GetPortfolioConstraintsResult({
    this.acceptLanguage,
    required this.details,
    required this.id,
    required this.portfolioId,
    this.productId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceptLanguageValue = acceptLanguage;
    if (acceptLanguageValue != null) {
      map['acceptLanguage'] = acceptLanguageValue;
    }
    map['details'] =
        Input.encodeList<GetPortfolioConstraintsDetail, Map<String, dynamic>>(
            details, (value) => value.toMap());
    map['id'] = id;
    map['portfolioId'] = portfolioId;
    final productIdValue = productId;
    if (productIdValue != null) {
      map['productId'] = productIdValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetPortfolioConstraintsResult.fromMap(Map<String, dynamic> map) {
    return GetPortfolioConstraintsResult(
      acceptLanguage: map['acceptLanguage'] == null
          ? null
          : map['acceptLanguage'] as String,
      details: Input.decodeList<GetPortfolioConstraintsDetail>(
          map['details'],
          (value) => GetPortfolioConstraintsDetail.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      portfolioId: map['portfolioId'] as String,
      productId: map['productId'] == null ? null : map['productId'] as String,
      region: map['region'] as String,
    );
  }
}
