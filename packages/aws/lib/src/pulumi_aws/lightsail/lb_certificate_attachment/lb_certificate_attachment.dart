import 'package:pulumi/pulumi.dart';
import 'lb_certificate_attachment_args.dart';

/// Manages a Lightsail Load Balancer Certificate attachment to a Lightsail Load Balancer.
///
/// Use this resource to attach a validated SSL/TLS certificate to a Lightsail Load Balancer to enable HTTPS traffic. The certificate must be validated before it can be attached to the load balancer.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.lightsail.LbCertificateAttachment` using the name attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/lbCertificateAttachment:LbCertificateAttachment example example-load-balancer,example-certificate
/// ```
class LbCertificateAttachment extends CustomResource {
  /// Name of your SSL/TLS certificate.
  late final Output<String> certificateName;

  /// Name of the load balancer to which you want to associate the SSL/TLS certificate.
  ///
  /// The following arguments are optional:
  late final Output<String> lbName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  LbCertificateAttachment(
    String name, {
    LbCertificateAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/lbCertificateAttachment:LbCertificateAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.certificateName = registerOutput<String>('certificateName');
    this.lbName = registerOutput<String>('lbName');
    this.region = registerOutput<String>('region');
  }
}
