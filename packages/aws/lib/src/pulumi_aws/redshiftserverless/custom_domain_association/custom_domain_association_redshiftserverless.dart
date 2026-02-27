import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_association_redshiftserverless_args.dart';

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
class CustomDomainAssociationRedshiftserverless extends pulumi.CustomResource {
  /// ARN of the certificate for the custom domain association.
  late final pulumi.Output<String> customDomainCertificateArn;

  /// Expiration time for the certificate.
  late final pulumi.Output<String> customDomainCertificateExpiryTime;

  /// Custom domain to associate with the workgroup.
  late final pulumi.Output<String> customDomainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Name of the workgroup.
  late final pulumi.Output<String> workgroupName;

  CustomDomainAssociationRedshiftserverless(
    String name, {
    CustomDomainAssociationRedshiftserverlessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshiftserverless/customDomainAssociation:CustomDomainAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
