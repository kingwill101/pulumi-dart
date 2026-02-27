// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DomainServiceAccessPolicy.
class DomainServiceAccessPolicyArgs {
  /// The access rules you want to configure. These rules replace any existing rules. See the [AWS documentation](https://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html) for details.
  final pulumi.Input<String> accessPolicy;

  /// The CloudSearch domain name the policy applies to.
  final pulumi.Input<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  DomainServiceAccessPolicyArgs({
    required this.accessPolicy,
    required this.domainName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessPolicy'] = accessPolicy;
    map['domainName'] = domainName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory DomainServiceAccessPolicyArgs.fromMap(Map<String, dynamic> map) {
    return DomainServiceAccessPolicyArgs(
      accessPolicy: pulumi.Input.asInput<String>(map['accessPolicy']),
      domainName: pulumi.Input.asInput<String>(map['domainName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
