// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_identity_dkim_signing_attributes.dart';

/// {@template pulumi_sesv2_email_identity_email_identity_args_doc}
/// The set of arguments for EmailIdentity.
/// {@endtemplate}
/// {@macro pulumi_sesv2_email_identity_email_identity_args_doc}
class EmailIdentityArgs {
  /// The configuration set to use by default when sending from this identity. Note that any configuration set defined in the email sending request takes precedence.
  final pulumi.Input<String>? configurationSetName;
  /// The configuration of the DKIM authentication settings for an email domain identity.
  final pulumi.Input<EmailIdentityDkimSigningAttributes>? dkimSigningAttributes;
  /// The email address or domain to verify.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> emailIdentity;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EmailIdentityArgs].
  /// [configurationSetName] The configuration set to use by default when sending from this identity. Note that any configuration set defined in the email sending request takes precedence.
  /// [dkimSigningAttributes] The configuration of the DKIM authentication settings for an email domain identity.
  /// [emailIdentity] The email address or domain to verify.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  EmailIdentityArgs({
    String? configurationSetName,
    EmailIdentityDkimSigningAttributes? dkimSigningAttributes,
    required String emailIdentity,
    String? region,
    Map<String, String>? tags,
  }) :
      configurationSetName = pulumi.Input.asOptionalInput<String>(configurationSetName),
      dkimSigningAttributes = pulumi.Input.asOptionalInput<EmailIdentityDkimSigningAttributes>(dkimSigningAttributes),
      emailIdentity = pulumi.Input.asInput<String>(emailIdentity),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationSetName': ?configurationSetName,
      'dkimSigningAttributes': ?pulumi.Input.mapOptionalInputValue<EmailIdentityDkimSigningAttributes, Map<String, dynamic>>(dkimSigningAttributes, (value) => value.toMap()),
      'emailIdentity': emailIdentity,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory EmailIdentityArgs.fromMap(Map<String, dynamic> map) {
    return EmailIdentityArgs(
      configurationSetName: map['configurationSetName'] == null ? null : map['configurationSetName'] as String,
      dkimSigningAttributes: map['dkimSigningAttributes'] == null ? null : EmailIdentityDkimSigningAttributes.fromMap((map['dkimSigningAttributes'] as Map).cast<String, dynamic>()),
      emailIdentity: map['emailIdentity'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

