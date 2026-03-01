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
    pulumi.Output<String>? accessAssociationSource,
    pulumi.Output<String>? accessAssociationSourceType,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? domainNameArn,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      accessAssociationSource = pulumi.Input.asOptionalInput<String>(accessAssociationSource),
      accessAssociationSourceType = pulumi.Input.asOptionalInput<String>(accessAssociationSourceType),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      domainNameArn = pulumi.Input.asOptionalInput<String>(domainNameArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      accessAssociationSource: map['accessAssociationSource'] == null ? null : pulumi.Output.create<String>(map['accessAssociationSource'] as String),
      accessAssociationSourceType: map['accessAssociationSourceType'] == null ? null : pulumi.Output.create<String>(map['accessAssociationSourceType'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      domainNameArn: map['domainNameArn'] == null ? null : pulumi.Output.create<String>(map['domainNameArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

