// ignore_for_file: unused_element, unnecessary_cast

class DistributionOriginCustomHeader {
  final String name;
  final String value;

  /// Creates a new [DistributionOriginCustomHeader].
  /// [name] Required.
  /// [value] Required.
  DistributionOriginCustomHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory DistributionOriginCustomHeader.fromMap(Map<String, dynamic> map) {
    return DistributionOriginCustomHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
