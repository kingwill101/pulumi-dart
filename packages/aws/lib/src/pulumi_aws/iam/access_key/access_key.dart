import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_key_args.dart';

/// Provides an IAM access key. This is a set of credentials that allow API requests to be made as an IAM user.
///
/// ## Example Usage
///
///
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IAM Access Keys using the identifier. For example:
///
/// ```sh
/// $ pulumi import aws:iam/accessKey:AccessKey example AKIA1234567890
/// ```
///
/// Resource attributes such as `encrypted_secret`, `key_fingerprint`, `pgp_key`, `secret`, `ses_smtp_password_v4`, and `encrypted_ses_smtp_password_v4` are not available for imported resources as this information cannot be read from the IAM API.
class AccessKey extends pulumi.CustomResource {
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) that the access key was created.
  late final pulumi.Output<String> createDate;

  /// Encrypted secret, base64 encoded, if `pgp_key` was specified. This attribute is not available for imported resources. The encrypted secret may be decrypted using the command line.
  late final pulumi.Output<String> encryptedSecret;

  /// Encrypted SES SMTP password, base64 encoded, if `pgp_key` was specified. This attribute is not available for imported resources. The encrypted password may be decrypted using the command line.
  late final pulumi.Output<String> encryptedSesSmtpPasswordV4;

  /// Fingerprint of the PGP key used to encrypt the secret. This attribute is not available for imported resources.
  late final pulumi.Output<String> keyFingerprint;

  /// Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:some_person_that_exists`, for use in the `encrypted_secret` output attribute. If providing a base-64 encoded PGP public key, make sure to provide the "raw" version and not the "armored" one (e.g. avoid passing the `-a` option to `gpg --export`).
  late final pulumi.Output<String?> pgpKey;

  /// Secret access key. This attribute is not available for imported resources. Note that this will be written to the state file. If you use this, please protect your backend state file judiciously. Alternatively, you may supply a `pgp_key` instead, which will prevent the secret from being stored in plaintext, at the cost of preventing the use of the secret key in automation.
  late final pulumi.Output<String> secret;

  /// Secret access key converted into an SES SMTP password by applying [AWS's documented Sigv4 conversion algorithm](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/smtp-credentials.html#smtp-credentials-convert). This attribute is not available for imported resources. As SigV4 is region specific, valid Provider regions are `ap-south-1`, `ap-southeast-2`, `eu-central-1`, `eu-west-1`, `us-east-1` and `us-west-2`. See current [AWS SES regions](https://docs.aws.amazon.com/general/latest/gr/rande.html#ses_region).
  late final pulumi.Output<String> sesSmtpPasswordV4;

  /// Access key status to apply. Defaults to `Active`. Valid values are `Active` and `Inactive`.
  late final pulumi.Output<String?> status;

  /// IAM user to associate with this access key.
  late final pulumi.Output<String> user;

  AccessKey(
    String name, {
    AccessKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/accessKey:AccessKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createDate = registerOutput<String>('createDate');
    this.encryptedSecret = registerOutput<String>('encryptedSecret');
    this.encryptedSesSmtpPasswordV4 =
        registerOutput<String>('encryptedSesSmtpPasswordV4');
    this.keyFingerprint = registerOutput<String>('keyFingerprint');
    this.pgpKey = registerOutput<String?>('pgpKey');
    this.secret = registerOutput<String>('secret');
    this.sesSmtpPasswordV4 = registerOutput<String>('sesSmtpPasswordV4');
    this.status = registerOutput<String?>('status');
    this.user = registerOutput<String>('user');
  }
}
