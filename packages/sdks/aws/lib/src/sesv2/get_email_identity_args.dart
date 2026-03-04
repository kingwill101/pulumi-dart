// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sesv2_get_email_identity_get_email_identity_args_doc}
/// Arguments for getEmailIdentity.
/// {@endtemplate}
/// {@macro pulumi_sesv2_get_email_identity_get_email_identity_args_doc}
class GetEmailIdentityArgs {
  /// The name of the email identity.
  final pulumi.Input<String> emailIdentity;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value mapping of resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetEmailIdentityArgs].
  /// [emailIdentity] The name of the email identity.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags.
  GetEmailIdentityArgs({required this.emailIdentity, this.region, this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailIdentity': emailIdentity,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetEmailIdentityArgs.fromMap(Map<String, dynamic> map) {
    return GetEmailIdentityArgs(
      emailIdentity: pulumi.Input.fromValue(map['emailIdentity'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
