// ignore_for_file: unused_element, unnecessary_cast

import 'threat_prevention_profile_response.dart';

/// Result data returned by getSecurityProfile.
class GetSecurityProfileResult2 {
  /// Resource creation timestamp.
  final String createTime;

  /// Optional. An optional description of the profile. Max length 512 characters.
  final String description;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String etag;

  /// Optional. Labels as key value pairs.
  final Map<String, String> labels;

  /// Immutable. Identifier. Name of the SecurityProfile resource. It matches pattern `projects|organizations/*/locations/{location}/securityProfiles/{security_profile}`.
  final String name;

  /// The threat prevention configuration for the SecurityProfile.
  final ThreatPreventionProfileResponse threatPreventionProfile;

  /// Immutable. The single ProfileType that the SecurityProfile resource configures.
  final String type;

  /// Last resource update timestamp.
  final String updateTime;

  GetSecurityProfileResult2({
    required this.createTime,
    required this.description,
    required this.etag,
    required this.labels,
    required this.name,
    required this.threatPreventionProfile,
    required this.type,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['etag'] = etag;
    map['labels'] = labels;
    map['name'] = name;
    map['threatPreventionProfile'] = threatPreventionProfile.toMap();
    map['type'] = type;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetSecurityProfileResult2.fromMap(Map<String, dynamic> map) {
    return GetSecurityProfileResult2(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      threatPreventionProfile: ThreatPreventionProfileResponse.fromMap(
          (map['threatPreventionProfile'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
