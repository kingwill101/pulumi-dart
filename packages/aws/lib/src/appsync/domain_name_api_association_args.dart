// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appsync_domain_name_api_association_domain_name_api_association_args_doc}
/// The set of arguments for DomainNameApiAssociation.
/// {@endtemplate}
/// {@macro pulumi_appsync_domain_name_api_association_domain_name_api_association_args_doc}
class DomainNameApiAssociationArgs {
  /// API ID.
  final pulumi.Input<String> apiId;
  /// Appsync domain name.
  final pulumi.Input<String> domainName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DomainNameApiAssociationArgs].
  /// [apiId] API ID.
  /// [domainName] Appsync domain name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DomainNameApiAssociationArgs({
    required String apiId,
    required String domainName,
    String? region,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      domainName = pulumi.Input.asInput<String>(domainName),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'domainName': domainName,
      'region': ?region,
    };
  }

  factory DomainNameApiAssociationArgs.fromMap(Map<String, dynamic> map) {
    return DomainNameApiAssociationArgs(
      apiId: map['apiId'] as String,
      domainName: map['domainName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

