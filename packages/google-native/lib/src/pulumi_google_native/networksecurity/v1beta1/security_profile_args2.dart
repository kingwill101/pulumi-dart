// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'security_profile_type.dart';
import 'threat_prevention_profile.dart';

/// The set of arguments for SecurityProfile.
class SecurityProfileArgs2 {
  /// Optional. An optional description of the profile. Max length 512 characters.
  final Input<String>? description;

  /// Optional. Labels as key value pairs.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Immutable. Identifier. Name of the SecurityProfile resource. It matches pattern `projects|organizations/*/locations/{location}/securityProfiles/{security_profile}`.
  final Input<String>? name;
  final Input<String> organizationId;

  /// Required. Short name of the SecurityProfile resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "security_profile1".
  final Input<String> securityProfileId;

  /// The threat prevention configuration for the SecurityProfile.
  final Input<ThreatPreventionProfile>? threatPreventionProfile;

  /// Immutable. The single ProfileType that the SecurityProfile resource configures.
  final Input<SecurityProfileType>? type;

  SecurityProfileArgs2({
    this.description,
    this.labels,
    this.location,
    this.name,
    required this.organizationId,
    required this.securityProfileId,
    this.threatPreventionProfile,
    this.type,
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
    map['securityProfileId'] = securityProfileId;
    final threatPreventionProfileValue = threatPreventionProfile;
    if (threatPreventionProfileValue != null) {
      map['threatPreventionProfile'] = Input.mapOptionalInputValue<
              ThreatPreventionProfile, Map<String, dynamic>>(
          threatPreventionProfileValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = Input.mapOptionalInputValue<SecurityProfileType, String>(
          typeValue, (value) => value.value);
    }
    return map;
  }

  factory SecurityProfileArgs2.fromMap(Map<String, dynamic> map) {
    return SecurityProfileArgs2(
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
      securityProfileId: Input.asInput<String>(map['securityProfileId']),
      threatPreventionProfile: Input.asOptionalInput<ThreatPreventionProfile>(
          map['threatPreventionProfile']),
      type: Input.asOptionalInput<SecurityProfileType>(map['type']),
    );
  }
}
