// ignore_for_file: unused_element, unnecessary_cast

class LoadBalancerPolicyPolicyAttribute {
  final String? name;
  final String? value;

  /// Creates a new [LoadBalancerPolicyPolicyAttribute].
  /// [name] Optional.
  /// [value] Optional.
  LoadBalancerPolicyPolicyAttribute({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory LoadBalancerPolicyPolicyAttribute.fromMap(Map<String, dynamic> map) {
    return LoadBalancerPolicyPolicyAttribute(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
