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
    pulumi.Output<String>? portfolioId,
    pulumi.Output<String>? principalId,
    pulumi.Output<String>? principalType,
  }) :
      portfolioId = pulumi.Input.asOptionalInput<String>(portfolioId),
      principalId = pulumi.Input.asOptionalInput<String>(principalId),
      principalType = pulumi.Input.asOptionalInput<String>(principalType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portfolioId': ?portfolioId,
      'principalId': ?principalId,
      'principalType': ?principalType,
    };
  }

  factory PrincipalPortfolioAssociationState.fromMap(Map<String, dynamic> map) {
    return PrincipalPortfolioAssociationState(
      portfolioId: map['portfolioId'] == null ? null : pulumi.Output.create<String>(map['portfolioId'] as String),
      principalId: map['principalId'] == null ? null : pulumi.Output.create<String>(map['principalId'] as String),
      principalType: map['principalType'] == null ? null : pulumi.Output.create<String>(map['principalType'] as String),
    );
  }
}

