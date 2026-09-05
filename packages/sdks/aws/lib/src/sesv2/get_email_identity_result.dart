// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_identity_dkim_signing_attribute.dart';

/// Result data returned by getEmailIdentity.
class GetEmailIdentityResult {
  /// ARN of the Email Identity.
  final String? arn;
  /// Configuration set associated with the email identity.
  final String? configurationSetName;
  /// List of objects that contains at most one element with information about the private key and selector that you want to use to configure DKIM for the identity for Bring Your Own DKIM (BYODKIM) for the identity, or, configures the key length to be used for Easy DKIM.
  final List<GetEmailIdentityDkimSigningAttribute>? dkimSigningAttributes;
  final String? emailIdentity;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Email identity type. Valid values: `EMAIL_ADDRESS`, `DOMAIN`.
  final String? identityType;
  final String? region;
  /// Key-value mapping of resource tags.
  final Map<String, String>? tags;
  /// Verification status of the identity. The status can be one of the following: `PENDING`, `SUCCESS`, `FAILED`, `TEMPORARY_FAILURE`, and `NOT_STARTED`.
  final String? verificationStatus;
  /// Whether or not the identity is verified.
  final bool? verifiedForSendingStatus;

  /// Creates a new [GetEmailIdentityResult].
  /// [arn] ARN of the Email Identity.
  /// [configurationSetName] Configuration set associated with the email identity.
  /// [dkimSigningAttributes] List of objects that contains at most one element with information about the private key and selector that you want to use to configure DKIM for the identity for Bring Your Own DKIM (BYODKIM) for the identity, or, configures the key length to be used for Easy DKIM.
  /// [emailIdentity] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityType] Email identity type. Valid values: `EMAIL_ADDRESS`, `DOMAIN`.
  /// [region] Optional.
  /// [tags] Key-value mapping of resource tags.
  /// [verificationStatus] Verification status of the identity. The status can be one of the following: `PENDING`, `SUCCESS`, `FAILED`, `TEMPORARY_FAILURE`, and `NOT_STARTED`.
  /// [verifiedForSendingStatus] Whether or not the identity is verified.
  const GetEmailIdentityResult({
    this.arn,
    this.configurationSetName,
    this.dkimSigningAttributes,
    this.emailIdentity,
    this.id,
    this.identityType,
    this.region,
    this.tags,
    this.verificationStatus,
    this.verifiedForSendingStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'configurationSetName': ?configurationSetName,
      'dkimSigningAttributes': ?(() { final guardedValue = dkimSigningAttributes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetEmailIdentityDkimSigningAttribute, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'emailIdentity': ?emailIdentity,
      'id': ?id,
      'identityType': ?identityType,
      'region': ?region,
      'tags': ?tags,
      'verificationStatus': ?verificationStatus,
      'verifiedForSendingStatus': ?verifiedForSendingStatus,
    };
  }

  factory GetEmailIdentityResult.fromMap(Map<String, dynamic> map) {
    return GetEmailIdentityResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configurationSetName: (() { final guardedValue = map['configurationSetName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dkimSigningAttributes: (() { final guardedValue = map['dkimSigningAttributes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetEmailIdentityDkimSigningAttribute>(guardedValue, (value) => GetEmailIdentityDkimSigningAttribute.fromMap((value as Map).cast<String, dynamic>())); })(),
      emailIdentity: (() { final guardedValue = map['emailIdentity']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identityType: (() { final guardedValue = map['identityType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      verificationStatus: (() { final guardedValue = map['verificationStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      verifiedForSendingStatus: (() { final guardedValue = map['verifiedForSendingStatus']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
