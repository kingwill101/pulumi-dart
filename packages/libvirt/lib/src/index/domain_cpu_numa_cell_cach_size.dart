// ignore_for_file: unused_element, unnecessary_cast


class DomainCpuNumaCellCachSize {
  /// Indicates the unit of measurement for the cache size, such as bytes or megabytes.
  final String unit;
  /// Sets the actual value for the cache size as defined by the size unit.
  final String value;

  /// Creates a new [DomainCpuNumaCellCachSize].
  /// [unit] Indicates the unit of measurement for the cache size, such as bytes or megabytes.
  /// [value] Sets the actual value for the cache size as defined by the size unit.
  DomainCpuNumaCellCachSize({
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': unit,
      'value': value,
    };
  }

  factory DomainCpuNumaCellCachSize.fromMap(Map<String, dynamic> map) {
    return DomainCpuNumaCellCachSize(
      unit: map['unit'] as String,
      value: map['value'] as String,
    );
  }
}

