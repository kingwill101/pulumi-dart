// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DomainNameApiAssociation.
class DomainNameApiAssociationArgs {
  /// API ID.
  final pulumi.Input<String> apiId;

  /// Appsync domain name.
  final pulumi.Input<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  DomainNameApiAssociationArgs({
    required this.apiId,
    required this.domainName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    map['domainName'] = domainName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory DomainNameApiAssociationArgs.fromMap(Map<String, dynamic> map) {
    return DomainNameApiAssociationArgs(
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      domainName: pulumi.Input.asInput<String>(map['domainName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
