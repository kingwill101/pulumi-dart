// ignore_for_file: unused_element, unnecessary_cast


/// Cognitive Services account commitment quota.
class CommitmentQuotaResponse {
  /// Commitment quota quantity.
  final double? quantity;
  /// Commitment quota unit.
  final String? unit;

  /// Creates a new [CommitmentQuotaResponse].
  /// [quantity] Commitment quota quantity.
  /// [unit] Commitment quota unit.
  CommitmentQuotaResponse({
    this.quantity,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quantity': ?quantity,
      'unit': ?unit,
    };
  }

  factory CommitmentQuotaResponse.fromMap(Map<String, dynamic> map) {
    return CommitmentQuotaResponse(
      quantity: map['quantity'] == null ? null : map['quantity'] as double,
      unit: map['unit'] == null ? null : map['unit'] as String,
    );
  }
}

