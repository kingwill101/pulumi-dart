// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getEmailIdentity.
class GetEmailIdentityArgs {
  /// Email identity.
  final Input<String> email;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetEmailIdentityArgs({
    required this.email,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['email'] = email;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetEmailIdentityArgs.fromMap(Map<String, dynamic> map) {
    return GetEmailIdentityArgs(
      email: Input.asInput<String>(map['email']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
