// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDomainName.
class GetDomainNameArgs {
  /// Fully-qualified domain name to look up. If no domain name is found, an error will be returned.
  final pulumi.Input<String> domainName;

  /// The identifier for the domain name resource. Supported only for private custom domain names.
  final pulumi.Input<String>? domainNameId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of tags for the resource.
  final pulumi.Input<Map<String, String>>? tags;

  GetDomainNameArgs({
    required this.domainName,
    this.domainNameId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    final domainNameIdValue = domainNameId;
    if (domainNameIdValue != null) {
      map['domainNameId'] = domainNameIdValue;
    }
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

  factory GetDomainNameArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainNameArgs(
      domainName: pulumi.Input.asInput<String>(map['domainName']),
      domainNameId: pulumi.Input.asOptionalInput<String>(map['domainNameId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
