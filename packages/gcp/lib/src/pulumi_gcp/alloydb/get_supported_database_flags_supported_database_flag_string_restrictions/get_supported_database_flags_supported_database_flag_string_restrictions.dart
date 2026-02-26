// ignore_for_file: unused_element, unnecessary_cast

class GetSupportedDatabaseFlagsSupportedDatabaseFlagStringRestrictions {
  /// The list of allowed values, if bounded. This field will be empty if there is a unbounded number of allowed values.
  final List<String> allowedValues;

  GetSupportedDatabaseFlagsSupportedDatabaseFlagStringRestrictions({
    required this.allowedValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedValues'] = allowedValues;
    return map;
  }

  factory GetSupportedDatabaseFlagsSupportedDatabaseFlagStringRestrictions.fromMap(
      Map<String, dynamic> map) {
    return GetSupportedDatabaseFlagsSupportedDatabaseFlagStringRestrictions(
      allowedValues: (map['allowedValues'] as List).cast<String>(),
    );
  }
}
