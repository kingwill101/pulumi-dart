// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SecurityProfile resources.
class SecurityProfileState {
  /// The Amazon Resource Name (ARN) of the Security Profile.
  final pulumi.Input<String>? arn;
  /// Specifies the description of the Security Profile.
  final pulumi.Input<String>? description;
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String>? instanceId;
  /// Specifies the name of the Security Profile.
  final pulumi.Input<String>? name;
  /// The organization resource identifier for the security profile.
  final pulumi.Input<String>? organizationResourceId;
  /// Specifies a list of permissions assigned to the security profile.
  final pulumi.Input<List<String>>? permissions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The identifier for the Security Profile.
  final pulumi.Input<String>? securityProfileId;
  /// Tags to apply to the Security Profile. If configured with a provider
  /// `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [SecurityProfileState].
  /// [arn] The Amazon Resource Name (ARN) of the Security Profile.
  /// [description] Specifies the description of the Security Profile.
  /// [instanceId] Specifies the identifier of the hosting Amazon Connect Instance.
  /// [name] Specifies the name of the Security Profile.
  /// [organizationResourceId] The organization resource identifier for the security profile.
  /// [permissions] Specifies a list of permissions assigned to the security profile.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityProfileId] The identifier for the Security Profile.
  /// [tags] Tags to apply to the Security Profile. If configured with a provider
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  SecurityProfileState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? organizationResourceId,
    pulumi.Output<List<String>>? permissions,
    pulumi.Output<String>? region,
    pulumi.Output<String>? securityProfileId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      organizationResourceId = pulumi.Input.asOptionalInput<String>(organizationResourceId),
      permissions = pulumi.Input.asOptionalInput<List<String>>(permissions),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityProfileId = pulumi.Input.asOptionalInput<String>(securityProfileId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'instanceId': ?instanceId,
      'name': ?name,
      'organizationResourceId': ?organizationResourceId,
      'permissions': ?permissions,
      'region': ?region,
      'securityProfileId': ?securityProfileId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory SecurityProfileState.fromMap(Map<String, dynamic> map) {
    return SecurityProfileState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      organizationResourceId: map['organizationResourceId'] == null ? null : pulumi.Output.create<String>(map['organizationResourceId'] as String),
      permissions: map['permissions'] == null ? null : pulumi.Output.create<List<String>>((map['permissions'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityProfileId: map['securityProfileId'] == null ? null : pulumi.Output.create<String>(map['securityProfileId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

