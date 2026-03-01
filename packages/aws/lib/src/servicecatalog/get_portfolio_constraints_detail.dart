// ignore_for_file: unused_element, unnecessary_cast


class GetPortfolioConstraintsDetail {
  /// Identifier of the constraint.
  final String constraintId;
  /// Description of the constraint.
  final String description;
  final String owner;
  /// Portfolio identifier.
  ///
  /// The following arguments are optional:
  final String portfolioId;
  /// Product identifier.
  final String productId;
  /// Type of constraint. Valid values are `LAUNCH`, `NOTIFICATION`, `STACKSET`, and `TEMPLATE`.
  final String type;

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
      constraintId: map['constraintId'] as String,
      description: map['description'] as String,
      owner: map['owner'] as String,
      portfolioId: map['portfolioId'] as String,
      productId: map['productId'] as String,
      type: map['type'] as String,
    );
  }
}

