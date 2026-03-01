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
    required pulumi.Output<String> accessAssociationSource,
    required pulumi.Output<String> accessAssociationSourceType,
    required pulumi.Output<String> domainNameArn,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accessAssociationSource = pulumi.Input.asInput<String>(accessAssociationSource),
      accessAssociationSourceType = pulumi.Input.asInput<String>(accessAssociationSourceType),
      domainNameArn = pulumi.Input.asInput<String>(domainNameArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      accessAssociationSource: pulumi.Output.create<String>(map['accessAssociationSource'] as String),
      accessAssociationSourceType: pulumi.Output.create<String>(map['accessAssociationSourceType'] as String),
      domainNameArn: pulumi.Output.create<String>(map['domainNameArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

