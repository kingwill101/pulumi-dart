// ignore_for_file: unused_element, unnecessary_cast


class GetQuotasDimension {
  /// The key of dimensions.
  final String? key;
  /// The value of dimensions.
  final String? value;

  /// Creates a new [GetQuotasDimension].
  /// [key] The key of dimensions.
  /// [value] The value of dimensions.
  GetQuotasDimension({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory GetQuotasDimension.fromMap(Map<String, dynamic> map) {
    return GetQuotasDimension(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

