// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudsearch_domain_service_access_policy_domain_service_access_policy_args_doc}
/// The set of arguments for DomainServiceAccessPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudsearch_domain_service_access_policy_domain_service_access_policy_args_doc}
class DomainServiceAccessPolicyArgs {
  /// The access rules you want to configure. These rules replace any existing rules. See the [AWS documentation](https://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html) for details.
  final pulumi.Input<String> accessPolicy;

  /// The CloudSearch domain name the policy applies to.
  final pulumi.Input<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DomainServiceAccessPolicyArgs].
  /// [accessPolicy] The access rules you want to configure. These rules replace any existing rules. See the [AWS documentation](https://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html) for details.
  /// [domainName] The CloudSearch domain name the policy applies to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DomainServiceAccessPolicyArgs({
    required this.accessPolicy,
    required this.domainName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicy': accessPolicy,
      'domainName': domainName,
      'region': ?region,
    };
  }

  factory DomainServiceAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return DomainServiceAccessPolicyArgs(
      accessPolicy: pulumi.Input.fromValue(map['accessPolicy'] as String),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
