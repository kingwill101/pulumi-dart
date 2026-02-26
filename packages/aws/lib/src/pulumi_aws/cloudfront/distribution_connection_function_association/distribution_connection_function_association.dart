// ignore_for_file: unused_element, unnecessary_cast

class DistributionConnectionFunctionAssociation {
  /// Identifier for the distribution. For example: `EDFDVBD632BHDS5`.
  final String id;

  DistributionConnectionFunctionAssociation({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    return map;
  }

  factory DistributionConnectionFunctionAssociation.fromMap(
      Map<String, dynamic> map) {
    return DistributionConnectionFunctionAssociation(
      id: map['id'] as String,
    );
  }
}
