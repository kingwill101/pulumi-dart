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
    this.apiId,
    this.domainName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'domainName': ?domainName,
      'region': ?region,
    };
  }

  factory DomainNameApiAssociationState.fromMap(Map<String, dynamic> map) {
    return DomainNameApiAssociationState(
      apiId: map['apiId'] == null ? null : ((map['apiId'] as String).input()).input(),
      domainName: map['domainName'] == null ? null : ((map['domainName'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

