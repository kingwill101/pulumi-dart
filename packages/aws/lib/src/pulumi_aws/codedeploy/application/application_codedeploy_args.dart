// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Application.
class ApplicationCodedeployArgs {
  /// The compute platform can either be `ECS`, `Lambda`, or `Server`. Default is `Server`.
  final pulumi.Input<String>? computePlatform;

  /// The name of the application.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  ApplicationCodedeployArgs({
    this.computePlatform,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final computePlatformValue = computePlatform;
    if (computePlatformValue != null) {
      map['computePlatform'] = computePlatformValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
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

  factory ApplicationCodedeployArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationCodedeployArgs(
      computePlatform:
          pulumi.Input.asOptionalInput<String>(map['computePlatform']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
