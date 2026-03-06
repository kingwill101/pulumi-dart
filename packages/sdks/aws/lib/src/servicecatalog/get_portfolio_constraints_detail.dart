// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPortfolioConstraintsDetail {
  /// Identifier of the constraint.
  final pulumi.Input<String> constraintId;
  /// Description of the constraint.
  final pulumi.Input<String> description;
  final pulumi.Input<String> owner;
  /// Portfolio identifier.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> portfolioId;
  /// Product identifier.
  final pulumi.Input<String> productId;
  /// Type of constraint. Valid values are `LAUNCH`, `NOTIFICATION`, `STACKSET`, and `TEMPLATE`.
  final pulumi.Input<String> type;

  /// Creates a new [GetPortfolioConstraintsDetail].
  /// [constraintId] Identifier of the constraint.
  /// [description] Description of the constraint.
  /// [owner] Required.
  /// [portfolioId] Portfolio identifier.
  /// [productId] Product identifier.
  /// [type] Type of constraint. Valid values are `LAUNCH`, `NOTIFICATION`, `STACKSET`, and `TEMPLATE`.
  const GetPortfolioConstraintsDetail({
    required this.constraintId,
    required this.description,
    required this.owner,
    required this.portfolioId,
    required this.productId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constraintId': constraintId,
      'description': description,
      'owner': owner,
      'portfolioId': portfolioId,
      'productId': productId,
      'type': type,
    };
  }

  factory GetPortfolioConstraintsDetail.fromMap(Map<String, dynamic> map) {
    return GetPortfolioConstraintsDetail(
      constraintId: pulumi.Input.fromValue(map['constraintId'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      owner: pulumi.Input.fromValue(map['owner'] as String),
      portfolioId: pulumi.Input.fromValue(map['portfolioId'] as String),
      productId: pulumi.Input.fromValue(map['productId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

