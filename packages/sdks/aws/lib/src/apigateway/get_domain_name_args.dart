// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_get_domain_name_get_domain_name_args_doc}
/// Arguments for getDomainName.
/// {@endtemplate}
/// {@macro pulumi_apigateway_get_domain_name_get_domain_name_args_doc}
class GetDomainNameArgs {
  /// Fully-qualified domain name to look up. If no domain name is found, an error will be returned.
  final pulumi.Input<String> domainName;
  /// The identifier for the domain name resource. Supported only for private custom domain names.
  final pulumi.Input<String>? domainNameId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of tags for the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetDomainNameArgs].
  /// [domainName] Fully-qualified domain name to look up. If no domain name is found, an error will be returned.
  /// [domainNameId] The identifier for the domain name resource. Supported only for private custom domain names.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of tags for the resource.
  GetDomainNameArgs({
    required this.domainName,
    this.domainNameId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'domainNameId': ?domainNameId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetDomainNameArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainNameArgs(
      domainName: (map['domainName'] as String).input(),
      domainNameId: map['domainNameId'] == null ? null : ((map['domainNameId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

