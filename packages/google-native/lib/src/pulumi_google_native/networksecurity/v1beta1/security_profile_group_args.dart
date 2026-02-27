// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SecurityProfileGroup.
class SecurityProfileGroupArgs {
  /// Optional. An optional description of the profile group. Max length 2048 characters.
  final pulumi.Input<String>? description;

  /// Optional. Labels as key value pairs.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Immutable. Identifier. Name of the SecurityProfileGroup resource. It matches pattern `projects|organizations/*/locations/{location}/securityProfileGroups/{security_profile_group}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Required. Short name of the SecurityProfileGroup resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "security_profile_group1".
  final pulumi.Input<String> securityProfileGroupId;

  /// Optional. Reference to a SecurityProfile with the threat prevention configuration for the SecurityProfileGroup.
  final pulumi.Input<String>? threatPreventionProfile;

  SecurityProfileGroupArgs({
    this.description,
    this.labels,
    this.location,
    this.name,
    required this.organizationId,
    required this.securityProfileGroupId,
    this.threatPreventionProfile,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    map['securityProfileGroupId'] = securityProfileGroupId;
    final threatPreventionProfileValue = threatPreventionProfile;
    if (threatPreventionProfileValue != null) {
      map['threatPreventionProfile'] = threatPreventionProfileValue;
    }
    return map;
  }

  factory SecurityProfileGroupArgs.fromMap(Map<String, dynamic> map) {
    return SecurityProfileGroupArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      securityProfileGroupId:
          pulumi.Input.asInput<String>(map['securityProfileGroupId']),
      threatPreventionProfile:
          pulumi.Input.asOptionalInput<String>(map['threatPreventionProfile']),
    );
  }
}
