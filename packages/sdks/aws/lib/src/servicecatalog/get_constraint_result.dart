// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getConstraint.
class GetConstraintResult {
  final String? acceptLanguage;
  /// Description of the constraint.
  final String description;
  final String id;
  /// Owner of the constraint.
  final String owner;
  /// Constraint parameters in JSON format.
  final String parameters;
  /// Portfolio identifier.
  final String portfolioId;
  /// Product identifier.
  final String productId;
  final String region;
  /// Constraint status.
  final String status;
  /// Type of constraint. Valid values are `LAUNCH`, `NOTIFICATION`, `RESOURCE_UPDATE`, `STACKSET`, and `TEMPLATE`.
  final String type;

  /// Creates a new [GetConstraintResult].
  /// [acceptLanguage] Optional.
  /// [description] Description of the constraint.
  /// [id] Required.
  /// [owner] Owner of the constraint.
  /// [parameters] Constraint parameters in JSON format.
  /// [portfolioId] Portfolio identifier.
  /// [productId] Product identifier.
  /// [region] Required.
  /// [status] Constraint status.
  /// [type] Type of constraint. Valid values are `LAUNCH`, `NOTIFICATION`, `RESOURCE_UPDATE`, `STACKSET`, and `TEMPLATE`.
  GetConstraintResult({
    this.acceptLanguage,
    required this.description,
    required this.id,
    required this.owner,
    required this.parameters,
    required this.portfolioId,
    required this.productId,
    required this.region,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'description': description,
      'id': id,
      'owner': owner,
      'parameters': parameters,
      'portfolioId': portfolioId,
      'productId': productId,
      'region': region,
      'status': status,
      'type': type,
    };
  }

  factory GetConstraintResult.fromMap(Map<String, dynamic> map) {
    return GetConstraintResult(
      acceptLanguage: (() { final guardedValue = map['acceptLanguage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: map['description'] as String,
      id: map['id'] as String,
      owner: map['owner'] as String,
      parameters: map['parameters'] as String,
      portfolioId: map['portfolioId'] as String,
      productId: map['productId'] as String,
      region: map['region'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}

