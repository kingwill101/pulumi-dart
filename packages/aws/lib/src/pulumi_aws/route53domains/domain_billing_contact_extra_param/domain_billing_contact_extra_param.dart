// ignore_for_file: unused_element, unnecessary_cast

class DomainBillingContactExtraParam {
  /// The name of an additional parameter that is required by a top-level domain.
  final String name;

  /// The value that corresponds with the name of an extra parameter.
  final String value;

  DomainBillingContactExtraParam({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory DomainBillingContactExtraParam.fromMap(Map<String, dynamic> map) {
    return DomainBillingContactExtraParam(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
