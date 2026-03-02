// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connect_security_profile_security_profile_args_doc}
/// The set of arguments for SecurityProfile.
/// {@endtemplate}
/// {@macro pulumi_connect_security_profile_security_profile_args_doc}
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

  /// Creates a new [SecurityProfileArgs].
  /// [description] Specifies the description of the Security Profile.
  /// [instanceId] Specifies the identifier of the hosting Amazon Connect Instance.
  /// [name] Specifies the name of the Security Profile.
  /// [permissions] Specifies a list of permissions assigned to the security profile.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the Security Profile. If configured with a provider
  SecurityProfileArgs({
    this.description,
    required this.instanceId,
    this.name,
    this.permissions,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'instanceId': instanceId,
      'name': ?name,
      'permissions': ?permissions,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory SecurityProfileArgs.fromMap(Map<String, dynamic> map) {
    return SecurityProfileArgs(
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      instanceId: (map['instanceId'] as String).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      permissions: map['permissions'] == null ? null : (((map['permissions'] as List).cast<String>()).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

