// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DomainName resources.
class DomainNameState {
  /// Domain name that AppSync provides.
  final pulumi.Input<String>? appsyncDomainName;
  /// ARN of the certificate. This can be an Certificate Manager (ACM) certificate or an Identity and Access Management (IAM) server certificate. The certifiacte must reside in us-east-1.
  final pulumi.Input<String>? certificateArn;
  /// A description of the Domain Name.
  final pulumi.Input<String>? description;
  /// Domain name.
  final pulumi.Input<String>? domainName;
  /// ID of your Amazon Route 53 hosted zone.
  final pulumi.Input<String>? hostedZoneId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DomainNameState].
  /// [appsyncDomainName] Domain name that AppSync provides.
  /// [certificateArn] ARN of the certificate. This can be an Certificate Manager (ACM) certificate or an Identity and Access Management (IAM) server certificate. The certifiacte must reside in us-east-1.
  /// [description] A description of the Domain Name.
  /// [domainName] Domain name.
  /// [hostedZoneId] ID of your Amazon Route 53 hosted zone.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DomainNameState({
    this.appsyncDomainName,
    this.certificateArn,
    this.description,
    this.domainName,
    this.hostedZoneId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appsyncDomainName': ?appsyncDomainName,
      'certificateArn': ?certificateArn,
      'description': ?description,
      'domainName': ?domainName,
      'hostedZoneId': ?hostedZoneId,
      'region': ?region,
    };
  }

  factory DomainNameState.fromMap(Map<String, dynamic> map) {
    return DomainNameState(
      appsyncDomainName: map['appsyncDomainName'] == null ? null : (map['appsyncDomainName'] as String).input(),
      certificateArn: map['certificateArn'] == null ? null : (map['certificateArn'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
      hostedZoneId: map['hostedZoneId'] == null ? null : (map['hostedZoneId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

