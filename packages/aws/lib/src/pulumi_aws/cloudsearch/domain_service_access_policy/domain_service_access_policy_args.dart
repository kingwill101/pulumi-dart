// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for DomainServiceAccessPolicy.
class DomainServiceAccessPolicyArgs {
  /// The access rules you want to configure. These rules replace any existing rules. See the [AWS documentation](https://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html) for details.
  final Input<String> accessPolicy;

  /// The CloudSearch domain name the policy applies to.
  final Input<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

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
      accessPolicy: Input.asInput<String>(map['accessPolicy']),
      domainName: Input.asInput<String>(map['domainName']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
