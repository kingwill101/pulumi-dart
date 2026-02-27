import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_login_profile_args.dart';

/// Manages an IAM User Login Profile with limited support for password creation during this provider resource creation. Uses PGP to encrypt the password for safe transport to the user. PGP keys can be obtained from Keybase.
///
/// > To reset an IAM User login password via this provider, you can use delete and recreate this resource or change any of the arguments.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IAM User Login Profiles without password information via the IAM User name. For example:
///
/// ```sh
/// $ pulumi import aws:iam/userLoginProfile:UserLoginProfile example myusername
/// ```
///
/// Since Pulumi has no method to read the PGP or password information during import, use the resource options `ignore_changes` argument to ignore them (unless you want to recreate a password). For example:
class UserLoginProfile extends pulumi.CustomResource {
  /// The encrypted password, base64 encoded. Only available if password was handled on resource creation, not import.
  late final pulumi.Output<String> encryptedPassword;

  /// The fingerprint of the PGP key used to encrypt the password. Only available if password was handled on this provider resource creation, not import.
  late final pulumi.Output<String> keyFingerprint;

  /// The plain text password, only available when `pgp_key` is not provided.
  late final pulumi.Output<String> password;

  /// The length of the generated password on resource creation. Only applies on resource creation. Drift detection is not possible with this argument. Default value is `20`.
  late final pulumi.Output<int?> passwordLength;

  /// Whether the user should be forced to reset the generated password on resource creation. Only applies on resource creation.
  late final pulumi.Output<bool> passwordResetRequired;

  /// Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:username`. Only applies on resource creation. Drift detection is not possible with this argument.
  late final pulumi.Output<String?> pgpKey;

  /// The IAM user's name.
  late final pulumi.Output<String> user;

  UserLoginProfile(
    String name, {
    UserLoginProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/userLoginProfile:UserLoginProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.encryptedPassword = registerOutput<String>('encryptedPassword');
    this.keyFingerprint = registerOutput<String>('keyFingerprint');
    this.password = registerOutput<String>('password');
    this.passwordLength = registerOutput<int?>('passwordLength');
    this.passwordResetRequired = registerOutput<bool>('passwordResetRequired');
    this.pgpKey = registerOutput<String?>('pgpKey');
    this.user = registerOutput<String>('user');
  }
}
