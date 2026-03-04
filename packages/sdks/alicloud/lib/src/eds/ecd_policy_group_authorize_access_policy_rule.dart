// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EcdPolicyGroupAuthorizeAccessPolicyRule {
  /// The cidrip of authorize access rule.
  final pulumi.Input<String>? cidrIp;

  /// The description of authorize access rule.
  final pulumi.Input<String>? description;

  /// Creates a new [EcdPolicyGroupAuthorizeAccessPolicyRule].
  /// [cidrIp] The cidrip of authorize access rule.
  /// [description] The description of authorize access rule.
  EcdPolicyGroupAuthorizeAccessPolicyRule({this.cidrIp, this.description});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cidrIp': ?cidrIp, 'description': ?description};
  }

  factory EcdPolicyGroupAuthorizeAccessPolicyRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return EcdPolicyGroupAuthorizeAccessPolicyRule(
      cidrIp: (() {
        final guardedValue = map['cidrIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
