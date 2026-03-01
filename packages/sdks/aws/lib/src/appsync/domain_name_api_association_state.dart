// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DomainNameApiAssociation resources.
class DomainNameApiAssociationState {
  /// API ID.
  final pulumi.Input<String>? apiId;
  /// Appsync domain name.
  final pulumi.Input<String>? domainName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DomainNameApiAssociationState].
  /// [apiId] API ID.
  /// [domainName] Appsync domain name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DomainNameApiAssociationState({
    pulumi.Output<String>? apiId,
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? region,
  }) :
      apiId = pulumi.Input.asOptionalInput<String>(apiId),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'domainName': ?domainName,
      'region': ?region,
    };
  }

  factory DomainNameApiAssociationState.fromMap(Map<String, dynamic> map) {
    return DomainNameApiAssociationState(
      apiId: map['apiId'] == null ? null : pulumi.Output.create<String>(map['apiId'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

