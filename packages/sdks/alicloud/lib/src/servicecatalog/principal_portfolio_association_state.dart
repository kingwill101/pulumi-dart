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
  const PrincipalPortfolioAssociationState({
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
      portfolioId: (() { final guardedValue = map['portfolioId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalType: (() { final guardedValue = map['principalType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

