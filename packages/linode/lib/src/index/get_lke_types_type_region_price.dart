// ignore_for_file: unused_element, unnecessary_cast


class GetLkeTypesTypeRegionPrice {
  final double hourly;
  /// The ID representing the Kubernetes type.
  final String id;
  final double monthly;

  /// Creates a new [GetLkeTypesTypeRegionPrice].
  /// [hourly] Required.
  /// [id] The ID representing the Kubernetes type.
  /// [monthly] Required.
  GetLkeTypesTypeRegionPrice({
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

  factory GetLkeTypesTypeRegionPrice.fromMap(Map<String, dynamic> map) {
    return GetLkeTypesTypeRegionPrice(
      hourly: map['hourly'] as double,
      id: map['id'] as String,
      monthly: map['monthly'] as double,
    );
  }
}

