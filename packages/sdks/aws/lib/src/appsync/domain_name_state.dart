// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DomainName resources.
class DomainNameState {
  /// Domain name that AppSync provides.
  final pulumi.Input<String?>? appsyncDomainName;
  /// ARN of the certificate. This can be an Certificate Manager (ACM) certificate or an Identity and Access Management (IAM) server certificate. The certifiacte must reside in us-east-1.
  final pulumi.Input<String?>? certificateArn;
  /// Description of the Domain Name.
  final pulumi.Input<String?>? description;
  /// Domain name.
  final pulumi.Input<String?>? domainName;
  /// ID of your Amazon Route 53 hosted zone.
  final pulumi.Input<String?>? hostedZoneId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [DomainNameState].
  /// [appsyncDomainName] Domain name that AppSync provides.
  /// [certificateArn] ARN of the certificate. This can be an Certificate Manager (ACM) certificate or an Identity and Access Management (IAM) server certificate. The certifiacte must reside in us-east-1.
  /// [description] Description of the Domain Name.
  /// [domainName] Domain name.
  /// [hostedZoneId] ID of your Amazon Route 53 hosted zone.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const DomainNameState({
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
      appsyncDomainName: (() { final guardedValue = map['appsyncDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateArn: (() { final guardedValue = map['certificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostedZoneId: (() { final guardedValue = map['hostedZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
