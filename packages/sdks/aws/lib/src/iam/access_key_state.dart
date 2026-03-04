// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessKey resources.
class AccessKeyState {
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the access key was created.
  final pulumi.Input<String>? createDate;

  /// Encrypted secret, base64 encoded, if `pgp_key` was specified. This attribute is not available for imported resources. The encrypted secret may be decrypted using the command line.
  final pulumi.Input<String>? encryptedSecret;

  /// Encrypted SES SMTP password, base64 encoded, if `pgp_key` was specified. This attribute is not available for imported resources. The encrypted password may be decrypted using the command line.
  final pulumi.Input<String>? encryptedSesSmtpPasswordV4;

  /// Fingerprint of the PGP key used to encrypt the secret. This attribute is not available for imported resources.
  final pulumi.Input<String>? keyFingerprint;

  /// Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:some_person_that_exists`, for use in the `encrypted_secret` output attribute. If providing a base-64 encoded PGP public key, make sure to provide the "raw" version and not the "armored" one (e.g. avoid passing the `-a` option to `gpg --export`).
  final pulumi.Input<String>? pgpKey;

  /// Secret access key. This attribute is not available for imported resources. Note that this will be written to the state file. If you use this, please protect your backend state file judiciously. Alternatively, you may supply a `pgp_key` instead, which will prevent the secret from being stored in plaintext, at the cost of preventing the use of the secret key in automation.
  final pulumi.Input<String>? secret;

  /// Secret access key converted into an SES SMTP password by applying [AWS's documented Sigv4 conversion algorithm](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/smtp-credentials.html#smtp-credentials-convert). This attribute is not available for imported resources. As SigV4 is region specific, valid Provider regions are `ap-south-1`, `ap-southeast-2`, `eu-central-1`, `eu-west-1`, `us-east-1` and `us-west-2`. See current [AWS SES regions](https://docs.aws.amazon.com/general/latest/gr/rande.html#ses_region).
  final pulumi.Input<String>? sesSmtpPasswordV4;

  /// Access key status to apply. Defaults to `Active`. Valid values are `Active` and `Inactive`.
  final pulumi.Input<String>? status;

  /// IAM user to associate with this access key.
  final pulumi.Input<String>? user;

  /// Creates a new [AccessKeyState].
  /// [createDate] Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the access key was created.
  /// [encryptedSecret] Encrypted secret, base64 encoded, if `pgp_key` was specified. This attribute is not available for imported resources. The encrypted secret may be decrypted using the command line.
  /// [encryptedSesSmtpPasswordV4] Encrypted SES SMTP password, base64 encoded, if `pgp_key` was specified. This attribute is not available for imported resources. The encrypted password may be decrypted using the command line.
  /// [keyFingerprint] Fingerprint of the PGP key used to encrypt the secret. This attribute is not available for imported resources.
  /// [pgpKey] Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:some_person_that_exists`, for use in the `encrypted_secret` output attribute. If providing a base-64 encoded PGP public key, make sure to provide the "raw" version and not the "armored" one (e.g. avoid passing the `-a` option to `gpg --export`).
  /// [secret] Secret access key. This attribute is not available for imported resources. Note that this will be written to the state file. If you use this, please protect your backend state file judiciously. Alternatively, you may supply a `pgp_key` instead, which will prevent the secret from being stored in plaintext, at the cost of preventing the use of the secret key in automation.
  /// [sesSmtpPasswordV4] Secret access key converted into an SES SMTP password by applying [AWS's documented Sigv4 conversion algorithm](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/smtp-credentials.html#smtp-credentials-convert). This attribute is not available for imported resources. As SigV4 is region specific, valid Provider regions are `ap-south-1`, `ap-southeast-2`, `eu-central-1`, `eu-west-1`, `us-east-1` and `us-west-2`. See current [AWS SES regions](https://docs.aws.amazon.com/general/latest/gr/rande.html#ses_region).
  /// [status] Access key status to apply. Defaults to `Active`. Valid values are `Active` and `Inactive`.
  /// [user] IAM user to associate with this access key.
  AccessKeyState({
    this.createDate,
    this.encryptedSecret,
    this.encryptedSesSmtpPasswordV4,
    this.keyFingerprint,
    this.pgpKey,
    this.secret,
    this.sesSmtpPasswordV4,
    this.status,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createDate': ?createDate,
      'encryptedSecret': ?encryptedSecret,
      'encryptedSesSmtpPasswordV4': ?encryptedSesSmtpPasswordV4,
      'keyFingerprint': ?keyFingerprint,
      'pgpKey': ?pgpKey,
      'secret': ?secret,
      'sesSmtpPasswordV4': ?sesSmtpPasswordV4,
      'status': ?status,
      'user': ?user,
    };
  }

  factory AccessKeyState.fromMap(Map<String, dynamic> map) {
    return AccessKeyState(
      createDate: (() {
        final guardedValue = map['createDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptedSecret: (() {
        final guardedValue = map['encryptedSecret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptedSesSmtpPasswordV4: (() {
        final guardedValue = map['encryptedSesSmtpPasswordV4'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyFingerprint: (() {
        final guardedValue = map['keyFingerprint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pgpKey: (() {
        final guardedValue = map['pgpKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secret: (() {
        final guardedValue = map['secret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sesSmtpPasswordV4: (() {
        final guardedValue = map['sesSmtpPasswordV4'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      user: (() {
        final guardedValue = map['user'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
