import 'package:pulumi/pulumi.dart';
import 'server_certificate_args.dart';

/// Provides an IAM Server Certificate resource to upload Server Certificates.
/// Certs uploaded to IAM can easily work with other AWS services such as:
///
/// - AWS Elastic Beanstalk
/// - Elastic Load Balancing
/// - CloudFront
/// - AWS OpsWorks
///
/// For information about server certificates in IAM, see [Managing Server
/// Certificates][2] in AWS Documentation.
///
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
/// **Use in combination with an AWS ELB resource:**
///
/// Some properties of an IAM Server Certificates cannot be updated while they are
/// in use. In order for the provider to effectively manage a Certificate in this situation, it is
/// recommended you utilize the `name_prefix` attribute and enable the
/// `create_before_destroy`. This will allow this provider
/// to create a new, updated `aws.iam.ServerCertificate` resource and replace it in
/// dependant resources before attempting to destroy the old version.
///
/// ## Import
///
/// Using `pulumi import`, import IAM Server Certificates using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/serverCertificate:ServerCertificate certificate example.com-certificate-until-2018
/// ```
///
/// [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
/// [2]: https://docs.aws.amazon.com/IAM/latest/UserGuide/ManagingServerCerts.html
class ServerCertificate extends CustomResource {
  /// The Amazon Resource Name (ARN) specifying the server certificate.
  late final Output<String> arn;

  /// The contents of the public key certificate in
  /// PEM-encoded format.
  late final Output<String> certificateBody;

  /// The contents of the certificate chain.
  /// This is typically a concatenation of the PEM-encoded public key certificates
  /// of the chain.
  late final Output<String?> certificateChain;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) on which the certificate is set to expire.
  late final Output<String> expiration;

  /// The name of the Server Certificate. Do not include the path in this value. If omitted, the provider will assign a random, unique name.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified
  /// prefix. Conflicts with `name`.
  late final Output<String> namePrefix;

  /// The IAM path for the server certificate.  If it is not
  /// included, it defaults to a slash (/). If this certificate is for use with
  /// AWS CloudFront, the path must be in format `/cloudfront/your_path_here`.
  /// See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more details on IAM Paths.
  late final Output<String?> path;

  /// The contents of the private key in PEM-encoded format.
  late final Output<String> privateKey;

  /// Map of resource tags for the server certificate. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **NOTE:** AWS performs behind-the-scenes modifications to some certificate files if they do not adhere to a specific format. These modifications will result in this provider forever believing that it needs to update the resources since the local and AWS file contents will not match after theses modifications occur. In order to prevent this from happening you must ensure that all your PEM-encoded files use UNIX line-breaks and that `certificate_body` contains only one certificate. All other certificates should go in `certificate_chain`. It is common for some Certificate Authorities to issue certificate files that have DOS line-breaks and that are actually multiple certificates concatenated together in order to form a full certificate chain.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) when the server certificate was uploaded.
  late final Output<String> uploadDate;

  ServerCertificate(
    String name, {
    ServerCertificateArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/serverCertificate:ServerCertificate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.certificateBody = registerOutput<String>('certificateBody');
    this.certificateChain = registerOutput<String?>('certificateChain');
    this.expiration = registerOutput<String>('expiration');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.path = registerOutput<String?>('path');
    this.privateKey = registerOutput<String>('privateKey');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uploadDate = registerOutput<String>('uploadDate');
  }
}
