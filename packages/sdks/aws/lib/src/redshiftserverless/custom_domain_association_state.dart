// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomDomainAssociation resources.
class CustomDomainAssociationState {
  /// ARN of the certificate for the custom domain association.
  final pulumi.Input<String>? customDomainCertificateArn;
  /// Expiration time for the certificate.
  final pulumi.Input<String>? customDomainCertificateExpiryTime;
  /// Custom domain to associate with the workgroup.
  final pulumi.Input<String>? customDomainName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the workgroup.
  final pulumi.Input<String>? workgroupName;

  /// Creates a new [CustomDomainAssociationState].
  /// [customDomainCertificateArn] ARN of the certificate for the custom domain association.
  /// [customDomainCertificateExpiryTime] Expiration time for the certificate.
  /// [customDomainName] Custom domain to associate with the workgroup.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [workgroupName] Name of the workgroup.
  const CustomDomainAssociationState({
    this.customDomainCertificateArn,
    this.customDomainCertificateExpiryTime,
    this.customDomainName,
    this.region,
    this.workgroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDomainCertificateArn': ?customDomainCertificateArn,
      'customDomainCertificateExpiryTime': ?customDomainCertificateExpiryTime,
      'customDomainName': ?customDomainName,
      'region': ?region,
      'workgroupName': ?workgroupName,
    };
  }

  factory CustomDomainAssociationState.fromMap(Map<String, dynamic> map) {
    return CustomDomainAssociationState(
      customDomainCertificateArn: (() { final guardedValue = map['customDomainCertificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customDomainCertificateExpiryTime: (() { final guardedValue = map['customDomainCertificateExpiryTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customDomainName: (() { final guardedValue = map['customDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workgroupName: (() { final guardedValue = map['workgroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
