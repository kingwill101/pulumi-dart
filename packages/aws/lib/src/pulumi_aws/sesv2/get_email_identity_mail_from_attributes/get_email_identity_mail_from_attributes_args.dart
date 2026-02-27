// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEmailIdentityMailFromAttributes.
class GetEmailIdentityMailFromAttributesArgs {
  /// The name of the email identity.
  final pulumi.Input<String> emailIdentity;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetEmailIdentityMailFromAttributesArgs({
    required this.emailIdentity,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['emailIdentity'] = emailIdentity;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetEmailIdentityMailFromAttributesArgs.fromMap(
      Map<String, dynamic> map) {
    return GetEmailIdentityMailFromAttributesArgs(
      emailIdentity: pulumi.Input.asInput<String>(map['emailIdentity']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
