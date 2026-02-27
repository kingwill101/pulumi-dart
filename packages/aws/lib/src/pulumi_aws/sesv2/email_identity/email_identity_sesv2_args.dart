// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../email_identity_dkim_signing_attributes/email_identity_dkim_signing_attributes.dart';

/// The set of arguments for EmailIdentity.
class EmailIdentitySesv2Args {
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

  EmailIdentitySesv2Args({
    this.configurationSetName,
    this.dkimSigningAttributes,
    required this.emailIdentity,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configurationSetNameValue = configurationSetName;
    if (configurationSetNameValue != null) {
      map['configurationSetName'] = configurationSetNameValue;
    }
    final dkimSigningAttributesValue = dkimSigningAttributes;
    if (dkimSigningAttributesValue != null) {
      map['dkimSigningAttributes'] = pulumi.Input.mapOptionalInputValue<
              EmailIdentityDkimSigningAttributes, Map<String, dynamic>>(
          dkimSigningAttributesValue, (value) => value.toMap());
    }
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

  factory EmailIdentitySesv2Args.fromMap(Map<String, dynamic> map) {
    return EmailIdentitySesv2Args(
      configurationSetName:
          pulumi.Input.asOptionalInput<String>(map['configurationSetName']),
      dkimSigningAttributes:
          pulumi.Input.asOptionalInput<EmailIdentityDkimSigningAttributes>(
              map['dkimSigningAttributes']),
      emailIdentity: pulumi.Input.asInput<String>(map['emailIdentity']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
