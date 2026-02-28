// ignore_for_file: unused_element, unnecessary_cast


class DistributionConnectionFunctionAssociation {
  /// Identifier for the distribution. For example: `EDFDVBD632BHDS5`.
  final String id;

  /// Creates a new [DistributionConnectionFunctionAssociation].
  /// [id] Identifier for the distribution. For example: `EDFDVBD632BHDS5`.
  DistributionConnectionFunctionAssociation({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory DistributionConnectionFunctionAssociation.fromMap(Map<String, dynamic> map) {
    return DistributionConnectionFunctionAssociation(
      id: map['id'] as String,
    );
  }
}

