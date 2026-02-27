import 'package:pulumi/pulumi.dart' as pulumi;
import 'signing_certificate_args.dart';

/// Provides an IAM Signing Certificate resource to upload Signing Certificates.
///
/// > **Note:** All arguments including the certificate body will be stored in the raw state as plain-text.
/// ## Example Usage
///
/// **Using certs on file:**
///
///
///
/// **Example with cert in-line:**
///
///
///
/// ## Import
///
/// Using `pulumi import`, import IAM Signing Certificates using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/signingCertificate:SigningCertificate certificate IDIDIDIDID:user-name
/// ```
class SigningCertificate extends pulumi.CustomResource {
  /// The contents of the signing certificate in PEM-encoded format.
  late final pulumi.Output<String> certificateBody;

  /// The ID for the signing certificate.
  late final pulumi.Output<String> certificateId;

  /// The status you want to assign to the certificate. `Active` means that the certificate can be used for programmatic calls to Amazon Web Services `Inactive` means that the certificate cannot be used.
  late final pulumi.Output<String?> status;

  /// The name of the user the signing certificate is for.
  late final pulumi.Output<String> userName;

  SigningCertificate(
    String name, {
    SigningCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/signingCertificate:SigningCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.certificateBody = registerOutput<String>('certificateBody');
    this.certificateId = registerOutput<String>('certificateId');
    this.status = registerOutput<String?>('status');
    this.userName = registerOutput<String>('userName');
  }
}
