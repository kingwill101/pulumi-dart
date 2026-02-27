// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DomainPolicy.
class DomainPolicyArgs {
  /// IAM policy document specifying the access policies for the domain
  final pulumi.Input<String> accessPolicies;

  /// Name of the domain.
  final pulumi.Input<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  DomainPolicyArgs({
    required this.accessPolicies,
    required this.domainName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessPolicies'] = accessPolicies;
    map['domainName'] = domainName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory DomainPolicyArgs.fromMap(Map<String, dynamic> map) {
    return DomainPolicyArgs(
      accessPolicies: pulumi.Input.asInput<String>(map['accessPolicies']),
      domainName: pulumi.Input.asInput<String>(map['domainName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
