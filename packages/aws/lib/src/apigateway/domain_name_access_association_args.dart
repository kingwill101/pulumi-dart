// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_domain_name_access_association_domain_name_access_association_args_doc}
/// The set of arguments for DomainNameAccessAssociation.
/// {@endtemplate}
/// {@macro pulumi_apigateway_domain_name_access_association_domain_name_access_association_args_doc}
class DomainNameAccessAssociationArgs {
  /// The identifier of the domain name access association source. For a `VPCE`, the value is the VPC endpoint ID.
  final pulumi.Input<String> accessAssociationSource;

  /// The type of the domain name access association source. Valid values are `VPCE`.
  final pulumi.Input<String> accessAssociationSourceType;

  /// The ARN of the domain name.
  final pulumi.Input<String> domainNameArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DomainNameAccessAssociationArgs].
  /// [accessAssociationSource] The identifier of the domain name access association source. For a `VPCE`, the value is the VPC endpoint ID.
  /// [accessAssociationSourceType] The type of the domain name access association source. Valid values are `VPCE`.
  /// [domainNameArn] The ARN of the domain name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  DomainNameAccessAssociationArgs({
    required String accessAssociationSource,
    required String accessAssociationSourceType,
    required String domainNameArn,
    String? region,
    Map<String, String>? tags,
  })  : accessAssociationSource =
            pulumi.Input.asInput<String>(accessAssociationSource),
        accessAssociationSourceType =
            pulumi.Input.asInput<String>(accessAssociationSourceType),
        domainNameArn = pulumi.Input.asInput<String>(domainNameArn),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessAssociationSource'] = accessAssociationSource;
    map['accessAssociationSourceType'] = accessAssociationSourceType;
    map['domainNameArn'] = domainNameArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DomainNameAccessAssociationArgs.fromMap(Map<String, dynamic> map) {
    return DomainNameAccessAssociationArgs(
      accessAssociationSource: map['accessAssociationSource'] as String,
      accessAssociationSourceType: map['accessAssociationSourceType'] as String,
      domainNameArn: map['domainNameArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
