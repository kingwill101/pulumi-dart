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
  GetEmailIdentityArgs({
    required String emailIdentity,
    String? region,
    Map<String, String>? tags,
  })  : emailIdentity = pulumi.Input.asInput<String>(emailIdentity),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['emailIdentity'] = emailIdentity;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetEmailIdentityArgs.fromMap(Map<String, dynamic> map) {
    return GetEmailIdentityArgs(
      emailIdentity: map['emailIdentity'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
