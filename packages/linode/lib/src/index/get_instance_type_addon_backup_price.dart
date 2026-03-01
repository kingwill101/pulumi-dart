// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceTypeAddonBackupPrice {
  /// The cost (in US dollars) per hour to add Backups service.
  final double hourly;
  /// The cost (in US dollars) per month to add Backups service.
  final double monthly;

  /// Creates a new [GetInstanceTypeAddonBackupPrice].
  /// [hourly] The cost (in US dollars) per hour to add Backups service.
  /// [monthly] The cost (in US dollars) per month to add Backups service.
  GetInstanceTypeAddonBackupPrice({
    required this.hourly,
    required this.monthly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hourly': hourly,
      'monthly': monthly,
    };
  }

  factory GetInstanceTypeAddonBackupPrice.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeAddonBackupPrice(
      hourly: map['hourly'] as double,
      monthly: map['monthly'] as double,
    );
  }
}

