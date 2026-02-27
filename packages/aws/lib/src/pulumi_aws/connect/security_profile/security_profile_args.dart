// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SecurityProfile.
class SecurityProfileArgs {
  /// Specifies the description of the Security Profile.
  final pulumi.Input<String>? description;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String> instanceId;

  /// Specifies the name of the Security Profile.
  final pulumi.Input<String>? name;

  /// Specifies a list of permissions assigned to the security profile.
  final pulumi.Input<List<String>>? permissions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Tags to apply to the Security Profile. If configured with a provider
  /// `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

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
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      permissions:
          pulumi.Input.asOptionalInput<List<String>>(map['permissions']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
