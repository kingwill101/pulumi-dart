// ignore_for_file: unused_element, unnecessary_cast


class GetNbTypesTypeRegionPrice {
  final double hourly;
  final String id;
  final double monthly;

  /// Creates a new [GetNbTypesTypeRegionPrice].
  /// [hourly] Required.
  /// [id] Required.
  /// [monthly] Required.
  GetNbTypesTypeRegionPrice({
    required this.hourly,
    required this.id,
    required this.monthly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hourly': hourly,
      'id': id,
      'monthly': monthly,
    };
  }

  factory GetNbTypesTypeRegionPrice.fromMap(Map<String, dynamic> map) {
    return GetNbTypesTypeRegionPrice(
      hourly: map['hourly'] as double,
      id: map['id'] as String,
      monthly: map['monthly'] as double,
    );
  }
}

