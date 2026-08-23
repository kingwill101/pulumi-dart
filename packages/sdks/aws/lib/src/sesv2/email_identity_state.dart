// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_identity_dkim_signing_attributes.dart';

/// Input properties used for looking up and filtering EmailIdentity resources.
class EmailIdentityState {
  /// ARN of the Email Identity.
  final pulumi.Input<String>? arn;
  /// The configuration set to use by default when sending from this identity. Note that any configuration set defined in the email sending request takes precedence.
  final pulumi.Input<String>? configurationSetName;
  /// The configuration of the DKIM authentication settings for an email domain identity.
  final pulumi.Input<EmailIdentityDkimSigningAttributes>? dkimSigningAttributes;
  /// The email address or domain to verify.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? emailIdentity;
  /// The email identity type. Valid values: `EMAIL_ADDRESS`, `DOMAIN`.
  final pulumi.Input<String>? identityType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The verification status of the identity. The status can be one of the following: `PENDING`, `SUCCESS`, `FAILED`, `TEMPORARY_FAILURE`, and `NOT_STARTED`.
  final pulumi.Input<String>? verificationStatus;
  /// Specifies whether or not the identity is verified.
  final pulumi.Input<bool>? verifiedForSendingStatus;

  /// Creates a new [EmailIdentityState].
  /// [arn] ARN of the Email Identity.
  /// [configurationSetName] The configuration set to use by default when sending from this identity. Note that any configuration set defined in the email sending request takes precedence.
  /// [dkimSigningAttributes] The configuration of the DKIM authentication settings for an email domain identity.
  /// [emailIdentity] The email address or domain to verify.
  /// [identityType] The email identity type. Valid values: `EMAIL_ADDRESS`, `DOMAIN`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [verificationStatus] The verification status of the identity. The status can be one of the following: `PENDING`, `SUCCESS`, `FAILED`, `TEMPORARY_FAILURE`, and `NOT_STARTED`.
  /// [verifiedForSendingStatus] Specifies whether or not the identity is verified.
  const EmailIdentityState({
    this.arn,
    this.configurationSetName,
    this.dkimSigningAttributes,
    this.emailIdentity,
    this.identityType,
    this.region,
    this.tags,
    this.tagsAll,
    this.verificationStatus,
    this.verifiedForSendingStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'configurationSetName': ?configurationSetName,
      'dkimSigningAttributes': ?pulumi.Input.mapOptionalInputValue<EmailIdentityDkimSigningAttributes, Map<String, dynamic>>(dkimSigningAttributes, (value) => value.toMap()),
      'emailIdentity': ?emailIdentity,
      'identityType': ?identityType,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'verificationStatus': ?verificationStatus,
      'verifiedForSendingStatus': ?verifiedForSendingStatus,
    };
  }

  factory EmailIdentityState.fromMap(Map<String, dynamic> map) {
    return EmailIdentityState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configurationSetName: (() { final guardedValue = map['configurationSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dkimSigningAttributes: (() { final guardedValue = map['dkimSigningAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EmailIdentityDkimSigningAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emailIdentity: (() { final guardedValue = map['emailIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityType: (() { final guardedValue = map['identityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      verificationStatus: (() { final guardedValue = map['verificationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      verifiedForSendingStatus: (() { final guardedValue = map['verifiedForSendingStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
