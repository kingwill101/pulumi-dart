// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getService.
class GetServiceServicediscoveryArgs {
  /// Name of the service.
  final pulumi.Input<String> name;

  /// ID of the namespace that the service belongs to.
  final pulumi.Input<String> namespaceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assign to the service. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  GetServiceServicediscoveryArgs({
    required this.name,
    required this.namespaceId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['namespaceId'] = namespaceId;
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

  factory GetServiceServicediscoveryArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceServicediscoveryArgs(
      name: pulumi.Input.asInput<String>(map['name']),
      namespaceId: pulumi.Input.asInput<String>(map['namespaceId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
