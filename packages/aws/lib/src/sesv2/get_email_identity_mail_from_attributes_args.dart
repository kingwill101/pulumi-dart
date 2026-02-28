// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sesv2_get_email_identity_mail_from_attributes_get_email_identity_mail_from_attributes_args_doc}
/// Arguments for getEmailIdentityMailFromAttributes.
/// {@endtemplate}
/// {@macro pulumi_sesv2_get_email_identity_mail_from_attributes_get_email_identity_mail_from_attributes_args_doc}
class GetEmailIdentityMailFromAttributesArgs {
  /// The name of the email identity.
  final pulumi.Input<String> emailIdentity;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetEmailIdentityMailFromAttributesArgs].
  /// [emailIdentity] The name of the email identity.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetEmailIdentityMailFromAttributesArgs({
    required String emailIdentity,
    String? region,
  })  : emailIdentity = pulumi.Input.asInput<String>(emailIdentity),
        region = pulumi.Input.asOptionalInput<String>(region);

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
      emailIdentity: map['emailIdentity'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
