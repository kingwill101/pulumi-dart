// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPolicyGroupsGroupAuthorizeAccessPolicyRule {
  /// The cidrip of authorize access rule..
  final pulumi.Input<String> cidrIp;
  /// The description of authorize access rule.
  final pulumi.Input<String> description;

  /// Creates a new [GetPolicyGroupsGroupAuthorizeAccessPolicyRule].
  /// [cidrIp] The cidrip of authorize access rule..
  /// [description] The description of authorize access rule.
  GetPolicyGroupsGroupAuthorizeAccessPolicyRule({
    required this.cidrIp,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrIp': cidrIp,
      'description': description,
    };
  }

  factory GetPolicyGroupsGroupAuthorizeAccessPolicyRule.fromMap(Map<String, dynamic> map) {
    return GetPolicyGroupsGroupAuthorizeAccessPolicyRule(
      cidrIp: (map['cidrIp'] as String).input(),
      description: (map['description'] as String).input(),
    );
  }
}

