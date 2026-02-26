// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SecurityProfile.
class SecurityProfileArgs {
  /// Specifies the description of the Security Profile.
  final Input<String>? description;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final Input<String> instanceId;

  /// Specifies the name of the Security Profile.
  final Input<String>? name;

  /// Specifies a list of permissions assigned to the security profile.
  final Input<List<String>>? permissions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Tags to apply to the Security Profile. If configured with a provider
  /// <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  SecurityProfileArgs({
    this.description,
    required this.instanceId,
    this.name,
    this.permissions,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['instanceId'] = instanceId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final permissionsValue = permissions;
    if (permissionsValue != null) {
      map['permissions'] = permissionsValue;
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

  factory SecurityProfileArgs.fromMap(Map<String, dynamic> map) {
    return SecurityProfileArgs(
      description: Input.asOptionalInput<String>(map['description']),
      instanceId: Input.asInput<String>(map['instanceId']),
      name: Input.asOptionalInput<String>(map['name']),
      permissions: Input.asOptionalInput<List<String>>(map['permissions']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
