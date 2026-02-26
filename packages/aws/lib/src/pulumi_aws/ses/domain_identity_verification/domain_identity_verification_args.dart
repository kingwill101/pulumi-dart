// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for DomainIdentityVerification.
class DomainIdentityVerificationArgs {
  /// The domain name of the SES domain identity to verify.
  final Input<String> domain;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  DomainIdentityVerificationArgs({
    required this.domain,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domain'] = domain;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory DomainIdentityVerificationArgs.fromMap(Map<String, dynamic> map) {
    return DomainIdentityVerificationArgs(
      domain: Input.asInput<String>(map['domain']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
