import 'package:pulumi/pulumi.dart';
import 'custom_domain_association_args2.dart';

/// Resource for managing an AWS Redshift Serverless Custom Domain Association.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Serverless Custom Domain Association using the `workgroup_name` and `custom_domain_name`, separated by the coma. For example:
///
/// ```sh
/// $ pulumi import aws:redshiftserverless/customDomainAssociation:CustomDomainAssociation example example-workgroup,example.com
/// ```
class CustomDomainAssociation2 extends CustomResource {
  /// ARN of the certificate for the custom domain association.
  late final Output<String> customDomainCertificateArn;

  /// Expiration time for the certificate.
  late final Output<String> customDomainCertificateExpiryTime;

  /// Custom domain to associate with the workgroup.
  late final Output<String> customDomainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Name of the workgroup.
  late final Output<String> workgroupName;

  CustomDomainAssociation2(
    String name, {
    CustomDomainAssociationArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshiftserverless/customDomainAssociation:CustomDomainAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.customDomainCertificateArn =
        registerOutput<String>('customDomainCertificateArn');
    this.customDomainCertificateExpiryTime =
        registerOutput<String>('customDomainCertificateExpiryTime');
    this.customDomainName = registerOutput<String>('customDomainName');
    this.region = registerOutput<String>('region');
    this.workgroupName = registerOutput<String>('workgroupName');
  }
}
