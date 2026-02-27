// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for SecurityProfileGroup.
class SecurityProfileGroupArgs {
  /// Optional. An optional description of the profile group. Max length 2048 characters.
  final Input<String>? description;

  /// Optional. Labels as key value pairs.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Immutable. Identifier. Name of the SecurityProfileGroup resource. It matches pattern `projects|organizations/*/locations/{location}/securityProfileGroups/{security_profile_group}`.
  final Input<String>? name;
  final Input<String> organizationId;

  /// Required. Short name of the SecurityProfileGroup resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "security_profile_group1".
  final Input<String> securityProfileGroupId;

  /// Optional. Reference to a SecurityProfile with the threat prevention configuration for the SecurityProfileGroup.
  final Input<String>? threatPreventionProfile;

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
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
      securityProfileGroupId:
          Input.asInput<String>(map['securityProfileGroupId']),
      threatPreventionProfile:
          Input.asOptionalInput<String>(map['threatPreventionProfile']),
    );
  }
}
