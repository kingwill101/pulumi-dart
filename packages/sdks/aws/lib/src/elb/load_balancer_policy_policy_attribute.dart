// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerPolicyPolicyAttribute {
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? value;

  /// Creates a new [LoadBalancerPolicyPolicyAttribute].
  /// [name] Optional.
  /// [value] Optional.
  LoadBalancerPolicyPolicyAttribute({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory LoadBalancerPolicyPolicyAttribute.fromMap(Map<String, dynamic> map) {
    return LoadBalancerPolicyPolicyAttribute(
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      value: map['value'] == null ? null : ((map['value'] as String).input()).input(),
    );
  }
}

