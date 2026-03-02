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
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
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
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [verificationStatus] The verification status of the identity. The status can be one of the following: `PENDING`, `SUCCESS`, `FAILED`, `TEMPORARY_FAILURE`, and `NOT_STARTED`.
  /// [verifiedForSendingStatus] Specifies whether or not the identity is verified.
  EmailIdentityState({
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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      configurationSetName: map['configurationSetName'] == null ? null : (map['configurationSetName'] as String).input(),
      dkimSigningAttributes: map['dkimSigningAttributes'] == null ? null : (EmailIdentityDkimSigningAttributes.fromMap((map['dkimSigningAttributes'] as Map).cast<String, dynamic>())).input(),
      emailIdentity: map['emailIdentity'] == null ? null : (map['emailIdentity'] as String).input(),
      identityType: map['identityType'] == null ? null : (map['identityType'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      verificationStatus: map['verificationStatus'] == null ? null : (map['verificationStatus'] as String).input(),
      verifiedForSendingStatus: map['verifiedForSendingStatus'] == null ? null : (map['verifiedForSendingStatus'] as bool).input(),
    );
  }
}

