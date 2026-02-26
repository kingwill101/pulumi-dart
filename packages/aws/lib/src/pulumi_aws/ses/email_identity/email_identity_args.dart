// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for EmailIdentity.
class EmailIdentityArgs {
  /// The email address to assign to SES.
  final Input<String> email;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  EmailIdentityArgs({
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

  factory EmailIdentityArgs.fromMap(Map<String, dynamic> map) {
    return EmailIdentityArgs(
      email: Input.asInput<String>(map['email']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
