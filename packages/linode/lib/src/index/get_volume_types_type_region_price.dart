// ignore_for_file: unused_element, unnecessary_cast


class GetVolumeTypesTypeRegionPrice {
  final double hourly;
  /// The ID representing the Volume type.
  final String id;
  final double monthly;

  /// Creates a new [GetVolumeTypesTypeRegionPrice].
  /// [hourly] Required.
  /// [id] The ID representing the Volume type.
  /// [monthly] Required.
  GetVolumeTypesTypeRegionPrice({
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

  factory GetVolumeTypesTypeRegionPrice.fromMap(Map<String, dynamic> map) {
    return GetVolumeTypesTypeRegionPrice(
      hourly: map['hourly'] as double,
      id: map['id'] as String,
      monthly: map['monthly'] as double,
    );
  }
}

