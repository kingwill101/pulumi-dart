// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for DomainNameAccessAssociation.
class DomainNameAccessAssociationArgs {
  /// The identifier of the domain name access association source. For a `VPCE`, the value is the VPC endpoint ID.
  final Input<String> accessAssociationSource;

  /// The type of the domain name access association source. Valid values are `VPCE`.
  final Input<String> accessAssociationSourceType;

  /// The ARN of the domain name.
  final Input<String> domainNameArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  DomainNameAccessAssociationArgs({
    required this.accessAssociationSource,
    required this.accessAssociationSourceType,
    required this.domainNameArn,
    this.region,
    this.tags,
  });

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
      accessAssociationSource:
          Input.asInput<String>(map['accessAssociationSource']),
      accessAssociationSourceType:
          Input.asInput<String>(map['accessAssociationSourceType']),
      domainNameArn: Input.asInput<String>(map['domainNameArn']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
