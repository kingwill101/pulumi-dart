// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceTypesTypeAddonBackupPrice {
  /// The cost (in US dollars) per hour to add Backups service.
  final double hourly;
  /// The cost (in US dollars) per month to add Backups service.
  final double monthly;

  /// Creates a new [GetInstanceTypesTypeAddonBackupPrice].
  /// [hourly] The cost (in US dollars) per hour to add Backups service.
  /// [monthly] The cost (in US dollars) per month to add Backups service.
  GetInstanceTypesTypeAddonBackupPrice({
    required this.hourly,
    required this.monthly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hourly': hourly,
      'monthly': monthly,
    };
  }

  factory GetInstanceTypesTypeAddonBackupPrice.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypesTypeAddonBackupPrice(
      hourly: map['hourly'] as double,
      monthly: map['monthly'] as double,
    );
  }
}

