// ignore_for_file: unused_element, unnecessary_cast


class GetQuotaApplicationsDimension {
  final String? key;
  final String? value;

  /// Creates a new [GetQuotaApplicationsDimension].
  /// [key] Optional.
  /// [value] Optional.
  GetQuotaApplicationsDimension({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory GetQuotaApplicationsDimension.fromMap(Map<String, dynamic> map) {
    return GetQuotaApplicationsDimension(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

