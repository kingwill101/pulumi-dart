// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceTypeRegionPrice {
  final double hourly;
  /// Label used to identify instance type
  final String id;
  final double monthly;

  /// Creates a new [GetInstanceTypeRegionPrice].
  /// [hourly] Required.
  /// [id] Label used to identify instance type
  /// [monthly] Required.
  GetInstanceTypeRegionPrice({
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

  factory GetInstanceTypeRegionPrice.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeRegionPrice(
      hourly: map['hourly'] as double,
      id: map['id'] as String,
      monthly: map['monthly'] as double,
    );
  }
}

