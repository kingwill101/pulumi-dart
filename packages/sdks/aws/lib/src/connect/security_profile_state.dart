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
    this.arn,
    this.description,
    this.instanceId,
    this.name,
    this.organizationResourceId,
    this.permissions,
    this.region,
    this.securityProfileId,
    this.tags,
    this.tagsAll,
  });

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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      instanceId: map['instanceId'] == null ? null : ((map['instanceId'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      organizationResourceId: map['organizationResourceId'] == null ? null : ((map['organizationResourceId'] as String).input()).input(),
      permissions: map['permissions'] == null ? null : (((map['permissions'] as List).cast<String>()).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      securityProfileId: map['securityProfileId'] == null ? null : ((map['securityProfileId'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

