// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceTypesTypeAddonBackupRegionPrice {
  final double hourly;
  /// The ID representing the Linode Type.
  final String id;
  final double monthly;

  /// Creates a new [GetInstanceTypesTypeAddonBackupRegionPrice].
  /// [hourly] Required.
  /// [id] The ID representing the Linode Type.
  /// [monthly] Required.
  GetInstanceTypesTypeAddonBackupRegionPrice({
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

  factory GetInstanceTypesTypeAddonBackupRegionPrice.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesTypeAddonBackupRegionPrice(
      hourly: map['hourly'] as double,
      id: map['id'] as String,
      monthly: map['monthly'] as double,
    );
  }
}

