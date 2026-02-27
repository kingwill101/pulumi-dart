import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_rds_args.dart';

/// Provides a resource to override the system-default Secure Sockets Layer/Transport Layer Security (SSL/TLS) certificate for Amazon RDS for new DB instances in the current AWS region.
///
/// > **NOTE:** Removing this Terraform resource removes the override. New DB instances will use the system-default certificate for the current AWS region.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import the RDS certificate override using the `region`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/certificate:Certificate example us-west-2
/// ```
class CertificateRds extends pulumi.CustomResource {
  /// Certificate identifier. For example, `rds-ca-rsa4096-g1`. Refer to [AWS RDS (Relational Database) Certificate Identifier](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL.html#UsingWithRDS.SSL.CertificateIdentifier) for more information.
  late final pulumi.Output<String> certificateIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  CertificateRds(
    String name, {
    CertificateRdsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/certificate:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.certificateIdentifier =
        registerOutput<String>('certificateIdentifier');
    this.region = registerOutput<String>('region');
  }
}
