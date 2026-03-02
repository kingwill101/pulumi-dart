// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DomainNameAccessAssociation resources.
class DomainNameAccessAssociationState {
  /// The identifier of the domain name access association source. For a `VPCE`, the value is the VPC endpoint ID.
  final pulumi.Input<String>? accessAssociationSource;
  /// The type of the domain name access association source. Valid values are `VPCE`.
  final pulumi.Input<String>? accessAssociationSourceType;
  /// ARN of the domain name access association.
  final pulumi.Input<String>? arn;
  /// The ARN of the domain name.
  final pulumi.Input<String>? domainNameArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [DomainNameAccessAssociationState].
  /// [accessAssociationSource] The identifier of the domain name access association source. For a `VPCE`, the value is the VPC endpoint ID.
  /// [accessAssociationSourceType] The type of the domain name access association source. Valid values are `VPCE`.
  /// [arn] ARN of the domain name access association.
  /// [domainNameArn] The ARN of the domain name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  DomainNameAccessAssociationState({
    this.accessAssociationSource,
    this.accessAssociationSourceType,
    this.arn,
    this.domainNameArn,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessAssociationSource': ?accessAssociationSource,
      'accessAssociationSourceType': ?accessAssociationSourceType,
      'arn': ?arn,
      'domainNameArn': ?domainNameArn,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory DomainNameAccessAssociationState.fromMap(Map<String, dynamic> map) {
    return DomainNameAccessAssociationState(
      accessAssociationSource: map['accessAssociationSource'] == null ? null : (map['accessAssociationSource'] as String).input(),
      accessAssociationSourceType: map['accessAssociationSourceType'] == null ? null : (map['accessAssociationSourceType'] as String).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      domainNameArn: map['domainNameArn'] == null ? null : (map['domainNameArn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

