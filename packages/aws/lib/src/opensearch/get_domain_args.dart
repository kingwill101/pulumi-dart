// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_opensearch_get_domain_get_domain_args_doc}
/// Arguments for getDomain.
/// {@endtemplate}
/// {@macro pulumi_opensearch_get_domain_get_domain_args_doc}
class GetDomainArgs {
  /// Name of the domain.
  final pulumi.Input<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Tags assigned to the domain.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetDomainArgs].
  /// [domainName] Name of the domain.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags assigned to the domain.
  GetDomainArgs({
    required String domainName,
    String? region,
    Map<String, String>? tags,
  })  : domainName = pulumi.Input.asInput<String>(domainName),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
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

  factory GetDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainArgs(
      domainName: map['domainName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
