// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DomainName.
class DomainNameAppsyncArgs {
  /// ARN of the certificate. This can be an Certificate Manager (ACM) certificate or an Identity and Access Management (IAM) server certificate. The certifiacte must reside in us-east-1.
  final pulumi.Input<String> certificateArn;

  /// A description of the Domain Name.
  final pulumi.Input<String>? description;

  /// Domain name.
  final pulumi.Input<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  DomainNameAppsyncArgs({
    required this.certificateArn,
    this.description,
    required this.domainName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateArn'] = certificateArn;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['domainName'] = domainName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory DomainNameAppsyncArgs.fromMap(Map<String, dynamic> map) {
    return DomainNameAppsyncArgs(
      certificateArn: pulumi.Input.asInput<String>(map['certificateArn']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      domainName: pulumi.Input.asInput<String>(map['domainName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
