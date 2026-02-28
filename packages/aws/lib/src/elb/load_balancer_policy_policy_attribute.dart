// ignore_for_file: unused_element, unnecessary_cast

class LoadBalancerPolicyPolicyAttribute {
  final String? name;
  final String? value;

  /// Creates a new [LoadBalancerPolicyPolicyAttribute].
  /// [name] Optional.
  /// [value] Optional.
  LoadBalancerPolicyPolicyAttribute({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory LoadBalancerPolicyPolicyAttribute.fromMap(Map<String, dynamic> map) {
    return LoadBalancerPolicyPolicyAttribute(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
