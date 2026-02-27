import 'package:pulumi/pulumi.dart' as pulumi;
import '../lb_certificate_domain_validation_record/lb_certificate_domain_validation_record.dart';
import 'lb_certificate_args.dart';

/// Manages a Lightsail Load Balancer Certificate.
///
/// Use this resource to create and manage SSL/TLS certificates for Lightsail Load Balancers. The certificate must be validated before it can be attached to a load balancer to enable HTTPS traffic.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.lightsail.LbCertificate` using the id attribute. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/lbCertificate:LbCertificate example example-load-balancer,example-load-balancer-certificate
/// ```
class LbCertificate extends pulumi.CustomResource {
  /// ARN of the lightsail certificate.
  late final pulumi.Output<String> arn;

  /// Timestamp when the instance was created.
  late final pulumi.Output<String> createdAt;

  /// Domain name (e.g., example.com) for your SSL/TLS certificate.
  late final pulumi.Output<String> domainName;

  /// Set of domain validation objects which can be used to complete certificate validation. Can have more than one element, e.g., if SANs are defined.
  late final pulumi.Output<List<LbCertificateDomainValidationRecord>>
      domainValidationRecords;

  /// Load balancer name where you want to create the SSL/TLS certificate.
  late final pulumi.Output<String> lbName;

  /// SSL/TLS certificate name.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Set of domains that should be SANs in the issued certificate. `domain_name` attribute is automatically added as a Subject Alternative Name.
  late final pulumi.Output<List<String>> subjectAlternativeNames;

  /// Support code for the certificate.
  late final pulumi.Output<String> supportCode;

  LbCertificate(
    String name, {
    LbCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/lbCertificate:LbCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdAt = registerOutput<String>('createdAt');
    this.domainName = registerOutput<String>('domainName');
    this.domainValidationRecords =
        registerOutput<List<LbCertificateDomainValidationRecord>>(
            'domainValidationRecords');
    this.lbName = registerOutput<String>('lbName');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.subjectAlternativeNames =
        registerOutput<List<String>>('subjectAlternativeNames');
    this.supportCode = registerOutput<String>('supportCode');
  }
}
