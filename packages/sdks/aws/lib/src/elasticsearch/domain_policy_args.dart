// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elasticsearch_domain_policy_domain_policy_args_doc}
/// The set of arguments for DomainPolicy.
/// {@endtemplate}
/// {@macro pulumi_elasticsearch_domain_policy_domain_policy_args_doc}
class DomainPolicyArgs {
  /// IAM policy document specifying the access policies for the domain
  final pulumi.Input<String> accessPolicies;
  /// Name of the domain.
  final pulumi.Input<String> domainName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DomainPolicyArgs].
  /// [accessPolicies] IAM policy document specifying the access policies for the domain
  /// [domainName] Name of the domain.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DomainPolicyArgs({
    required this.accessPolicies,
    required this.domainName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': accessPolicies,
      'domainName': domainName,
      'region': ?region,
    };
  }

  factory DomainPolicyArgs.fromMap(Map<String, dynamic> map) {
    return DomainPolicyArgs(
      accessPolicies: pulumi.Input.fromValue(map['accessPolicies'] as String),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

