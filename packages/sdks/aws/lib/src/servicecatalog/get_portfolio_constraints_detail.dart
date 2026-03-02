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
  GetPortfolioConstraintsDetail({
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
      constraintId: (map['constraintId'] as String).input(),
      description: (map['description'] as String).input(),
      owner: (map['owner'] as String).input(),
      portfolioId: (map['portfolioId'] as String).input(),
      productId: (map['productId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

