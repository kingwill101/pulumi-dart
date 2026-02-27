// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for TrafficMirrorFilter.
class TrafficMirrorFilterArgs {
  /// A description of the filter.
  final pulumi.Input<String>? description;

  /// List of amazon network services that should be mirrored. Valid values: `amazon-dns`.
  final pulumi.Input<List<String>>? networkServices;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  TrafficMirrorFilterArgs({
    this.description,
    this.networkServices,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final networkServicesValue = networkServices;
    if (networkServicesValue != null) {
      map['networkServices'] = networkServicesValue;
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

  factory TrafficMirrorFilterArgs.fromMap(Map<String, dynamic> map) {
    return TrafficMirrorFilterArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      networkServices:
          pulumi.Input.asOptionalInput<List<String>>(map['networkServices']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
