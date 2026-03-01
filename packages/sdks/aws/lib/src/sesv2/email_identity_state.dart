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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? configurationSetName,
    pulumi.Output<EmailIdentityDkimSigningAttributes>? dkimSigningAttributes,
    pulumi.Output<String>? emailIdentity,
    pulumi.Output<String>? identityType,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? verificationStatus,
    pulumi.Output<bool>? verifiedForSendingStatus,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      configurationSetName = pulumi.Input.asOptionalInput<String>(configurationSetName),
      dkimSigningAttributes = pulumi.Input.asOptionalInput<EmailIdentityDkimSigningAttributes>(dkimSigningAttributes),
      emailIdentity = pulumi.Input.asOptionalInput<String>(emailIdentity),
      identityType = pulumi.Input.asOptionalInput<String>(identityType),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      verificationStatus = pulumi.Input.asOptionalInput<String>(verificationStatus),
      verifiedForSendingStatus = pulumi.Input.asOptionalInput<bool>(verifiedForSendingStatus);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      configurationSetName: map['configurationSetName'] == null ? null : pulumi.Output.create<String>(map['configurationSetName'] as String),
      dkimSigningAttributes: map['dkimSigningAttributes'] == null ? null : pulumi.Output.create<EmailIdentityDkimSigningAttributes>(EmailIdentityDkimSigningAttributes.fromMap((map['dkimSigningAttributes'] as Map).cast<String, dynamic>())),
      emailIdentity: map['emailIdentity'] == null ? null : pulumi.Output.create<String>(map['emailIdentity'] as String),
      identityType: map['identityType'] == null ? null : pulumi.Output.create<String>(map['identityType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      verificationStatus: map['verificationStatus'] == null ? null : pulumi.Output.create<String>(map['verificationStatus'] as String),
      verifiedForSendingStatus: map['verifiedForSendingStatus'] == null ? null : pulumi.Output.create<bool>(map['verifiedForSendingStatus'] as bool),
    );
  }
}

