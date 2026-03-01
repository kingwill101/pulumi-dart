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
  CustomDomainAssociationState({
    pulumi.Output<String>? customDomainCertificateArn,
    pulumi.Output<String>? customDomainCertificateExpiryTime,
    pulumi.Output<String>? customDomainName,
    pulumi.Output<String>? region,
    pulumi.Output<String>? workgroupName,
  }) :
      customDomainCertificateArn = pulumi.Input.asOptionalInput<String>(customDomainCertificateArn),
      customDomainCertificateExpiryTime = pulumi.Input.asOptionalInput<String>(customDomainCertificateExpiryTime),
      customDomainName = pulumi.Input.asOptionalInput<String>(customDomainName),
      region = pulumi.Input.asOptionalInput<String>(region),
      workgroupName = pulumi.Input.asOptionalInput<String>(workgroupName);

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
      customDomainCertificateArn: map['customDomainCertificateArn'] == null ? null : pulumi.Output.create<String>(map['customDomainCertificateArn'] as String),
      customDomainCertificateExpiryTime: map['customDomainCertificateExpiryTime'] == null ? null : pulumi.Output.create<String>(map['customDomainCertificateExpiryTime'] as String),
      customDomainName: map['customDomainName'] == null ? null : pulumi.Output.create<String>(map['customDomainName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      workgroupName: map['workgroupName'] == null ? null : pulumi.Output.create<String>(map['workgroupName'] as String),
    );
  }
}

