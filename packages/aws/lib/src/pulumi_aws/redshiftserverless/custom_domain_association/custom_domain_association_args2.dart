// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for CustomDomainAssociation.
class CustomDomainAssociationArgs2 {
  /// ARN of the certificate for the custom domain association.
  final Input<String> customDomainCertificateArn;

  /// Custom domain to associate with the workgroup.
  final Input<String> customDomainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name of the workgroup.
  final Input<String> workgroupName;

  CustomDomainAssociationArgs2({
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

  factory CustomDomainAssociationArgs2.fromMap(Map<String, dynamic> map) {
    return CustomDomainAssociationArgs2(
      customDomainCertificateArn:
          Input.asInput<String>(map['customDomainCertificateArn']),
      customDomainName: Input.asInput<String>(map['customDomainName']),
      region: Input.asOptionalInput<String>(map['region']),
      workgroupName: Input.asInput<String>(map['workgroupName']),
    );
  }
}
