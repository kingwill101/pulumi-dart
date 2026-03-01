// ignore_for_file: unused_element, unnecessary_cast


class QuotaAlarmQuotaDimension {
  /// The Key of quota_dimensions.
  final String? key;
  /// The Value of quota_dimensions.
  final String? value;

  /// Creates a new [QuotaAlarmQuotaDimension].
  /// [key] The Key of quota_dimensions.
  /// [value] The Value of quota_dimensions.
  QuotaAlarmQuotaDimension({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory QuotaAlarmQuotaDimension.fromMap(Map<String, dynamic> map) {
    return QuotaAlarmQuotaDimension(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

