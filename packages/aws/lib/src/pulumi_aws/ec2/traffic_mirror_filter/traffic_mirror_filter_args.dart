// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for TrafficMirrorFilter.
class TrafficMirrorFilterArgs {
  /// A description of the filter.
  final Input<String>? description;

  /// List of amazon network services that should be mirrored. Valid values: `amazon-dns`.
  final Input<List<String>>? networkServices;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
      description: Input.asOptionalInput<String>(map['description']),
      networkServices:
          Input.asOptionalInput<List<String>>(map['networkServices']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
