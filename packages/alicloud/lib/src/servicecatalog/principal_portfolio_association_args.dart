// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_principal_portfolio_association_principal_portfolio_association_args_doc}
/// The set of arguments for PrincipalPortfolioAssociation.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_principal_portfolio_association_principal_portfolio_association_args_doc}
class PrincipalPortfolioAssociationArgs {
  /// Product Portfolio ID
  final pulumi.Input<String> portfolioId;
  /// RAM entity ID
  final pulumi.Input<String> principalId;
  /// RAM entity type
  final pulumi.Input<String> principalType;

  /// Creates a new [PrincipalPortfolioAssociationArgs].
  /// [portfolioId] Product Portfolio ID
  /// [principalId] RAM entity ID
  /// [principalType] RAM entity type
  PrincipalPortfolioAssociationArgs({
    required String portfolioId,
    required String principalId,
    required String principalType,
  }) :
      portfolioId = pulumi.Input.asInput<String>(portfolioId),
      principalId = pulumi.Input.asInput<String>(principalId),
      principalType = pulumi.Input.asInput<String>(principalType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portfolioId': portfolioId,
      'principalId': principalId,
      'principalType': principalType,
    };
  }

  factory PrincipalPortfolioAssociationArgs.fromMap(Map<String, dynamic> map) {
    return PrincipalPortfolioAssociationArgs(
      portfolioId: map['portfolioId'] as String,
      principalId: map['principalId'] as String,
      principalType: map['principalType'] as String,
    );
  }
}

