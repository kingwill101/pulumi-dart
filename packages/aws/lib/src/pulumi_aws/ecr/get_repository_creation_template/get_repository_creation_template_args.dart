// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRepositoryCreationTemplate.
class GetRepositoryCreationTemplateArgs {
  /// The repository name prefix that the template matches against.
  final pulumi.Input<String> prefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to any created repositories.
  final pulumi.Input<Map<String, String>>? resourceTags;

  GetRepositoryCreationTemplateArgs({
    required this.prefix,
    this.region,
    this.resourceTags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['prefix'] = prefix;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourceTagsValue = resourceTags;
    if (resourceTagsValue != null) {
      map['resourceTags'] = resourceTagsValue;
    }
    return map;
  }

  factory GetRepositoryCreationTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetRepositoryCreationTemplateArgs(
      prefix: pulumi.Input.asInput<String>(map['prefix']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceTags: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['resourceTags']),
    );
  }
}
