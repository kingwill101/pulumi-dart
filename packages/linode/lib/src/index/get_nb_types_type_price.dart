// ignore_for_file: unused_element, unnecessary_cast


class GetNbTypesTypePrice {
  final double hourly;
  final double monthly;

  /// Creates a new [GetNbTypesTypePrice].
  /// [hourly] Required.
  /// [monthly] Required.
  GetNbTypesTypePrice({
    required this.hourly,
    required this.monthly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hourly': hourly,
      'monthly': monthly,
    };
  }

  factory GetNbTypesTypePrice.fromMap(Map<String, dynamic> map) {
    return GetNbTypesTypePrice(
      hourly: map['hourly'] as double,
      monthly: map['monthly'] as double,
    );
  }
}

