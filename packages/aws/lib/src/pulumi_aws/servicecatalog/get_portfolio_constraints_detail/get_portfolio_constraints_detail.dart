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

  GetPortfolioConstraintsDetail({
    required this.constraintId,
    required this.description,
    required this.owner,
    required this.portfolioId,
    required this.productId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['constraintId'] = constraintId;
    map['description'] = description;
    map['owner'] = owner;
    map['portfolioId'] = portfolioId;
    map['productId'] = productId;
    map['type'] = type;
    return map;
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
