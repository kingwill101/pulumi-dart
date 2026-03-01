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
    pulumi.Output<String>? description,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? permissions,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      permissions = pulumi.Input.asOptionalInput<List<String>>(permissions),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      permissions: map['permissions'] == null ? null : pulumi.Output.create<List<String>>((map['permissions'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

