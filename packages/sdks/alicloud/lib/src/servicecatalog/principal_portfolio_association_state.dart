// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PrincipalPortfolioAssociation resources.
class PrincipalPortfolioAssociationState {
  /// Product Portfolio ID
  final pulumi.Input<String>? portfolioId;
  /// RAM entity ID
  final pulumi.Input<String>? principalId;
  /// RAM entity type
  final pulumi.Input<String>? principalType;

  /// Creates a new [PrincipalPortfolioAssociationState].
  /// [portfolioId] Product Portfolio ID
  /// [principalId] RAM entity ID
  /// [principalType] RAM entity type
  PrincipalPortfolioAssociationState({
    this.portfolioId,
    this.principalId,
    this.principalType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portfolioId': ?portfolioId,
      'principalId': ?principalId,
      'principalType': ?principalType,
    };
  }

  factory PrincipalPortfolioAssociationState.fromMap(Map<String, dynamic> map) {
    return PrincipalPortfolioAssociationState(
      portfolioId: map['portfolioId'] == null ? null : (map['portfolioId'] as String).input(),
      principalId: map['principalId'] == null ? null : (map['principalId'] as String).input(),
      principalType: map['principalType'] == null ? null : (map['principalType'] as String).input(),
    );
  }
}

