// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Discoverer.
class DiscovererArgs {
  /// The description of the discoverer. Maximum of 256 characters.
  final Input<String>? description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ARN of the event bus to discover event schemas on.
  final Input<String> sourceArn;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  DiscovererArgs({
    this.description,
    this.region,
    required this.sourceArn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['sourceArn'] = sourceArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DiscovererArgs.fromMap(Map<String, dynamic> map) {
    return DiscovererArgs(
      description: Input.asOptionalInput<String>(map['description']),
      region: Input.asOptionalInput<String>(map['region']),
      sourceArn: Input.asInput<String>(map['sourceArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
