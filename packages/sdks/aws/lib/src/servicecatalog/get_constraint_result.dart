// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getConstraint.
class GetConstraintResult {
  final String? acceptLanguage;
  /// Description of the constraint.
  final String? description;
  final String? id;
  /// Owner of the constraint.
  final String? owner;
  /// Constraint parameters in JSON format.
  final String? parameters;
  /// Portfolio identifier.
  final String? portfolioId;
  /// Product identifier.
  final String? productId;
  final String? region;
  /// Constraint status.
  final String? status;
  /// Type of constraint. Valid values are `LAUNCH`, `NOTIFICATION`, `RESOURCE_UPDATE`, `STACKSET`, and `TEMPLATE`.
  final String? type;

  /// Creates a new [GetConstraintResult].
  /// [acceptLanguage] Optional.
  /// [description] Description of the constraint.
  /// [id] Optional.
  /// [owner] Owner of the constraint.
  /// [parameters] Constraint parameters in JSON format.
  /// [portfolioId] Portfolio identifier.
  /// [productId] Product identifier.
  /// [region] Optional.
  /// [status] Constraint status.
  /// [type] Type of constraint. Valid values are `LAUNCH`, `NOTIFICATION`, `RESOURCE_UPDATE`, `STACKSET`, and `TEMPLATE`.
  const GetConstraintResult({
    this.acceptLanguage,
    this.description,
    this.id,
    this.owner,
    this.parameters,
    this.portfolioId,
    this.productId,
    this.region,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'description': ?description,
      'id': ?id,
      'owner': ?owner,
      'parameters': ?parameters,
      'portfolioId': ?portfolioId,
      'productId': ?productId,
      'region': ?region,
      'status': ?status,
      'type': ?type,
    };
  }

  factory GetConstraintResult.fromMap(Map<String, dynamic> map) {
    return GetConstraintResult(
      acceptLanguage: (() { final guardedValue = map['acceptLanguage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return guardedValue as String; })(),
      portfolioId: (() { final guardedValue = map['portfolioId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      productId: (() { final guardedValue = map['productId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
