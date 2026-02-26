// ignore_for_file: unused_element, unnecessary_cast

class GetSupportedDatabaseFlagsSupportedDatabaseFlagIntegerRestrictions {
  /// The maximum value that can be specified, if applicable.
  final String maxValue;

  /// The minimum value that can be specified, if applicable.
  final String minValue;

  GetSupportedDatabaseFlagsSupportedDatabaseFlagIntegerRestrictions({
    required this.maxValue,
    required this.minValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxValue'] = maxValue;
    map['minValue'] = minValue;
    return map;
  }

  factory GetSupportedDatabaseFlagsSupportedDatabaseFlagIntegerRestrictions.fromMap(
      Map<String, dynamic> map) {
    return GetSupportedDatabaseFlagsSupportedDatabaseFlagIntegerRestrictions(
      maxValue: map['maxValue'] as String,
      minValue: map['minValue'] as String,
    );
  }
}
