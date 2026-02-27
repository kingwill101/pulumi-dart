// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_profile_type.dart';
import 'threat_prevention_profile.dart';

/// The set of arguments for SecurityProfile.
class SecurityProfileNetworksecurityV1beta1Args {
  /// Optional. An optional description of the profile. Max length 512 characters.
  final pulumi.Input<String>? description;

  /// Optional. Labels as key value pairs.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Immutable. Identifier. Name of the SecurityProfile resource. It matches pattern `projects|organizations/*/locations/{location}/securityProfiles/{security_profile}`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Required. Short name of the SecurityProfile resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "security_profile1".
  final pulumi.Input<String> securityProfileId;

  /// The threat prevention configuration for the SecurityProfile.
  final pulumi.Input<ThreatPreventionProfile>? threatPreventionProfile;

  /// Immutable. The single ProfileType that the SecurityProfile resource configures.
  final pulumi.Input<SecurityProfileType>? type;

  SecurityProfileNetworksecurityV1beta1Args({
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
      map['threatPreventionProfile'] = pulumi.Input.mapOptionalInputValue<
              ThreatPreventionProfile, Map<String, dynamic>>(
          threatPreventionProfileValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] =
          pulumi.Input.mapOptionalInputValue<SecurityProfileType, String>(
              typeValue, (value) => value.value);
    }
    return map;
  }

  factory SecurityProfileNetworksecurityV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return SecurityProfileNetworksecurityV1beta1Args(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      securityProfileId: pulumi.Input.asInput<String>(map['securityProfileId']),
      threatPreventionProfile:
          pulumi.Input.asOptionalInput<ThreatPreventionProfile>(
              map['threatPreventionProfile']),
      type: pulumi.Input.asOptionalInput<SecurityProfileType>(map['type']),
    );
  }
}
