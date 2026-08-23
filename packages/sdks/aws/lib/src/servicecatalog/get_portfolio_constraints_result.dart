// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_portfolio_constraints_detail.dart';

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

  /// Creates a new [GetPortfolioConstraintsResult].
  /// [acceptLanguage] Optional.
  /// [details] List of information about the constraints. See details below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [portfolioId] Identifier of the portfolio the product resides in. The constraint applies only to the instance of the product that lives within this portfolio.
  /// [productId] Identifier of the product the constraint applies to. A constraint applies to a specific instance of a product within a certain portfolio.
  /// [region] Required.
  const GetPortfolioConstraintsResult({
    this.acceptLanguage,
    required this.details,
    required this.id,
    required this.portfolioId,
    this.productId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'details': pulumi.Input.encodeList<GetPortfolioConstraintsDetail, Map<String, dynamic>>(details, (value) => value.toMap()),
      'id': id,
      'portfolioId': portfolioId,
      'productId': ?productId,
      'region': region,
    };
  }

  factory GetPortfolioConstraintsResult.fromMap(Map<String, dynamic> map) {
    return GetPortfolioConstraintsResult(
      acceptLanguage: (() { final guardedValue = map['acceptLanguage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      details: pulumi.Input.decodeList<GetPortfolioConstraintsDetail>(map['details']!, (value) => GetPortfolioConstraintsDetail.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      portfolioId: map['portfolioId'] as String,
      productId: (() { final guardedValue = map['productId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: map['region'] as String,
    );
  }
}
