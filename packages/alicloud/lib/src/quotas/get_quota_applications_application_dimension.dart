// ignore_for_file: unused_element, unnecessary_cast


class GetQuotaApplicationsApplicationDimension {
  /// The key of dimensions.
  final String key;
  /// The value of dimensions.
  final String value;

  /// Creates a new [GetQuotaApplicationsApplicationDimension].
  /// [key] The key of dimensions.
  /// [value] The value of dimensions.
  GetQuotaApplicationsApplicationDimension({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetQuotaApplicationsApplicationDimension.fromMap(Map<String, dynamic> map) {
    return GetQuotaApplicationsApplicationDimension(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

