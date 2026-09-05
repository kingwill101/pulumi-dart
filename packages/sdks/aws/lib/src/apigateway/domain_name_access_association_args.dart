// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_domain_name_access_association_domain_name_access_association_args_doc}
/// The set of arguments for DomainNameAccessAssociation.
/// {@endtemplate}
/// {@macro pulumi_apigateway_domain_name_access_association_domain_name_access_association_args_doc}
class DomainNameAccessAssociationArgs {
  /// Identifier of the domain name access association source. For a `VPCE`, the value is the VPC endpoint ID.
  final pulumi.Input<String> accessAssociationSource;
  /// Type of the domain name access association source. Valid values are `VPCE`.
  final pulumi.Input<String> accessAssociationSourceType;
  /// ARN of the domain name.
  final pulumi.Input<String> domainNameArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [DomainNameAccessAssociationArgs].
  /// [accessAssociationSource] Identifier of the domain name access association source. For a `VPCE`, the value is the VPC endpoint ID.
  /// [accessAssociationSourceType] Type of the domain name access association source. Valid values are `VPCE`.
  /// [domainNameArn] ARN of the domain name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const DomainNameAccessAssociationArgs({
    required this.accessAssociationSource,
    required this.accessAssociationSourceType,
    required this.domainNameArn,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessAssociationSource': accessAssociationSource,
      'accessAssociationSourceType': accessAssociationSourceType,
      'domainNameArn': domainNameArn,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory DomainNameAccessAssociationArgs.fromMap(Map<String, dynamic> map) {
    return DomainNameAccessAssociationArgs(
      accessAssociationSource: pulumi.Input.fromValue(map['accessAssociationSource'] as String),
      accessAssociationSourceType: pulumi.Input.fromValue(map['accessAssociationSourceType'] as String),
      domainNameArn: pulumi.Input.fromValue(map['domainNameArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
