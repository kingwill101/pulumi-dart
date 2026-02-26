// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../email_identity_dkim_signing_attributes/email_identity_dkim_signing_attributes.dart';

/// The set of arguments for EmailIdentity.
class EmailIdentityArgs2 {
  /// The configuration set to use by default when sending from this identity. Note that any configuration set defined in the email sending request takes precedence.
  final Input<String>? configurationSetName;

  /// The configuration of the DKIM authentication settings for an email domain identity.
  final Input<EmailIdentityDkimSigningAttributes>? dkimSigningAttributes;

  /// The email address or domain to verify.
  ///
  /// The following arguments are optional:
  final Input<String> emailIdentity;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  EmailIdentityArgs2({
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
      map['dkimSigningAttributes'] = Input.mapOptionalInputValue<
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

  factory EmailIdentityArgs2.fromMap(Map<String, dynamic> map) {
    return EmailIdentityArgs2(
      configurationSetName:
          Input.asOptionalInput<String>(map['configurationSetName']),
      dkimSigningAttributes:
          Input.asOptionalInput<EmailIdentityDkimSigningAttributes>(
              map['dkimSigningAttributes']),
      emailIdentity: Input.asInput<String>(map['emailIdentity']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
