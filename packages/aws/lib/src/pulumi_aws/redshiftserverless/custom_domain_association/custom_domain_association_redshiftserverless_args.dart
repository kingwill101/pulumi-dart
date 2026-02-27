// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for CustomDomainAssociation.
class CustomDomainAssociationRedshiftserverlessArgs {
  /// ARN of the certificate for the custom domain association.
  final pulumi.Input<String> customDomainCertificateArn;

  /// Custom domain to associate with the workgroup.
  final pulumi.Input<String> customDomainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Name of the workgroup.
  final pulumi.Input<String> workgroupName;

  CustomDomainAssociationRedshiftserverlessArgs({
    required this.customDomainCertificateArn,
    required this.customDomainName,
    this.region,
    required this.workgroupName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customDomainCertificateArn'] = customDomainCertificateArn;
    map['customDomainName'] = customDomainName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['workgroupName'] = workgroupName;
    return map;
  }

  factory CustomDomainAssociationRedshiftserverlessArgs.fromMap(
      Map<String, dynamic> map) {
    return CustomDomainAssociationRedshiftserverlessArgs(
      customDomainCertificateArn:
          pulumi.Input.asInput<String>(map['customDomainCertificateArn']),
      customDomainName: pulumi.Input.asInput<String>(map['customDomainName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      workgroupName: pulumi.Input.asInput<String>(map['workgroupName']),
    );
  }
}
