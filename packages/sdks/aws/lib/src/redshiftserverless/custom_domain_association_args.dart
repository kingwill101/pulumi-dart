// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshiftserverless_custom_domain_association_custom_domain_association_args_doc}
/// The set of arguments for CustomDomainAssociation.
/// {@endtemplate}
/// {@macro pulumi_redshiftserverless_custom_domain_association_custom_domain_association_args_doc}
class CustomDomainAssociationArgs {
  /// ARN of the certificate for the custom domain association.
  final pulumi.Input<String> customDomainCertificateArn;
  /// Custom domain to associate with the workgroup.
  final pulumi.Input<String> customDomainName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the workgroup.
  final pulumi.Input<String> workgroupName;

  /// Creates a new [CustomDomainAssociationArgs].
  /// [customDomainCertificateArn] ARN of the certificate for the custom domain association.
  /// [customDomainName] Custom domain to associate with the workgroup.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [workgroupName] Name of the workgroup.
  CustomDomainAssociationArgs({
    required this.customDomainCertificateArn,
    required this.customDomainName,
    this.region,
    required this.workgroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDomainCertificateArn': customDomainCertificateArn,
      'customDomainName': customDomainName,
      'region': ?region,
      'workgroupName': workgroupName,
    };
  }

  factory CustomDomainAssociationArgs.fromMap(Map<String, dynamic> map) {
    return CustomDomainAssociationArgs(
      customDomainCertificateArn: (map['customDomainCertificateArn'] as String).input(),
      customDomainName: (map['customDomainName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      workgroupName: (map['workgroupName'] as String).input(),
    );
  }
}

