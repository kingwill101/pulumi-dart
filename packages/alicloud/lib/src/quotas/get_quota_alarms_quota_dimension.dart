// ignore_for_file: unused_element, unnecessary_cast


class GetQuotaAlarmsQuotaDimension {
  final String? key;
  final String? value;

  /// Creates a new [GetQuotaAlarmsQuotaDimension].
  /// [key] Optional.
  /// [value] Optional.
  GetQuotaAlarmsQuotaDimension({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory GetQuotaAlarmsQuotaDimension.fromMap(Map<String, dynamic> map) {
    return GetQuotaAlarmsQuotaDimension(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

