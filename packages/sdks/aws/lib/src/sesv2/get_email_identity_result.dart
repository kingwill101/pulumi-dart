// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_identity_dkim_signing_attribute.dart';

/// Result data returned by getEmailIdentity.
class GetEmailIdentityResult {
  /// ARN of the Email Identity.
  final String arn;
  final String configurationSetName;

  /// A list of objects that contains at most one element with information about the private key and selector that you want to use to configure DKIM for the identity for Bring Your Own DKIM (BYODKIM) for the identity, or, configures the key length to be used for Easy DKIM.
  final List<GetEmailIdentityDkimSigningAttribute> dkimSigningAttributes;
  final String emailIdentity;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The email identity type. Valid values: `EMAIL_ADDRESS`, `DOMAIN`.
  final String identityType;
  final String region;

  /// Key-value mapping of resource tags.
  final Map<String, String> tags;

  /// The verification status of the identity. The status can be one of the following: `PENDING`, `SUCCESS`, `FAILED`, `TEMPORARY_FAILURE`, and `NOT_STARTED`.
  final String verificationStatus;

  /// Specifies whether or not the identity is verified.
  final bool verifiedForSendingStatus;

  /// Creates a new [GetEmailIdentityResult].
  /// [arn] ARN of the Email Identity.
  /// [configurationSetName] Required.
  /// [dkimSigningAttributes] A list of objects that contains at most one element with information about the private key and selector that you want to use to configure DKIM for the identity for Bring Your Own DKIM (BYODKIM) for the identity, or, configures the key length to be used for Easy DKIM.
  /// [emailIdentity] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityType] The email identity type. Valid values: `EMAIL_ADDRESS`, `DOMAIN`.
  /// [region] Required.
  /// [tags] Key-value mapping of resource tags.
  /// [verificationStatus] The verification status of the identity. The status can be one of the following: `PENDING`, `SUCCESS`, `FAILED`, `TEMPORARY_FAILURE`, and `NOT_STARTED`.
  /// [verifiedForSendingStatus] Specifies whether or not the identity is verified.
  GetEmailIdentityResult({
    required this.arn,
    required this.configurationSetName,
    required this.dkimSigningAttributes,
    required this.emailIdentity,
    required this.id,
    required this.identityType,
    required this.region,
    required this.tags,
    required this.verificationStatus,
    required this.verifiedForSendingStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'configurationSetName': configurationSetName,
      'dkimSigningAttributes':
          pulumi.Input.encodeList<
            GetEmailIdentityDkimSigningAttribute,
            Map<String, dynamic>
          >(dkimSigningAttributes, (value) => value.toMap()),
      'emailIdentity': emailIdentity,
      'id': id,
      'identityType': identityType,
      'region': region,
      'tags': tags,
      'verificationStatus': verificationStatus,
      'verifiedForSendingStatus': verifiedForSendingStatus,
    };
  }

  factory GetEmailIdentityResult.fromMap(Map<String, dynamic> map) {
    return GetEmailIdentityResult(
      arn: map['arn'] as String,
      configurationSetName: map['configurationSetName'] as String,
      dkimSigningAttributes:
          pulumi.Input.decodeList<GetEmailIdentityDkimSigningAttribute>(
            map['dkimSigningAttributes']!,
            (value) => GetEmailIdentityDkimSigningAttribute.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      emailIdentity: map['emailIdentity'] as String,
      id: map['id'] as String,
      identityType: map['identityType'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      verificationStatus: map['verificationStatus'] as String,
      verifiedForSendingStatus: map['verifiedForSendingStatus'] as bool,
    );
  }
}
