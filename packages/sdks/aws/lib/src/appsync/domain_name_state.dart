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
    pulumi.Output<String>? appsyncDomainName,
    pulumi.Output<String>? certificateArn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? hostedZoneId,
    pulumi.Output<String>? region,
  }) :
      appsyncDomainName = pulumi.Input.asOptionalInput<String>(appsyncDomainName),
      certificateArn = pulumi.Input.asOptionalInput<String>(certificateArn),
      description = pulumi.Input.asOptionalInput<String>(description),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      hostedZoneId = pulumi.Input.asOptionalInput<String>(hostedZoneId),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      appsyncDomainName: map['appsyncDomainName'] == null ? null : pulumi.Output.create<String>(map['appsyncDomainName'] as String),
      certificateArn: map['certificateArn'] == null ? null : pulumi.Output.create<String>(map['certificateArn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      hostedZoneId: map['hostedZoneId'] == null ? null : pulumi.Output.create<String>(map['hostedZoneId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

