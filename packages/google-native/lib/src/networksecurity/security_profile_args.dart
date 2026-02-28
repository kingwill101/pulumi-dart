// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_profile_type.dart';
import 'threat_prevention_profile.dart';

/// {@template pulumi_networksecurity_v1beta1_security_profile_args_doc}
/// The set of arguments for SecurityProfile.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_security_profile_args_doc}
class SecurityProfileArgs {
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

  /// Creates a new [SecurityProfileArgs].
  /// [description] Optional. An optional description of the profile. Max length 512 characters.
  /// [labels] Optional. Labels as key value pairs.
  /// [location] Optional.
  /// [name] Immutable. Identifier. Name of the SecurityProfile resource. It matches pattern `projects|organizations/*/locations/{location}/securityProfiles/{security_profile}`.
  /// [organizationId] Required.
  /// [securityProfileId] Required. Short name of the SecurityProfile resource to be created. This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. "security_profile1".
  /// [threatPreventionProfile] The threat prevention configuration for the SecurityProfile.
  /// [type] Immutable. The single ProfileType that the SecurityProfile resource configures.
  SecurityProfileArgs({
    String? description,
    Map<String, String>? labels,
    String? location,
    String? name,
    required String organizationId,
    required String securityProfileId,
    ThreatPreventionProfile? threatPreventionProfile,
    SecurityProfileType? type,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      securityProfileId = pulumi.Input.asInput<String>(securityProfileId),
      threatPreventionProfile = pulumi.Input.asOptionalInput<ThreatPreventionProfile>(threatPreventionProfile),
      type = pulumi.Input.asOptionalInput<SecurityProfileType>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'organizationId': organizationId,
      'securityProfileId': securityProfileId,
      'threatPreventionProfile': ?pulumi.Input.mapOptionalInputValue<ThreatPreventionProfile, Map<String, dynamic>>(threatPreventionProfile, (value) => value.toMap()),
      'type': ?pulumi.Input.mapOptionalInputValue<SecurityProfileType, String>(type, (value) => value.value),
    };
  }

  factory SecurityProfileArgs.fromMap(Map<String, dynamic> map) {
    return SecurityProfileArgs(
      description: map['description'] == null ? null : map['description'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      organizationId: map['organizationId'] as String,
      securityProfileId: map['securityProfileId'] as String,
      threatPreventionProfile: map['threatPreventionProfile'] == null ? null : ThreatPreventionProfile.fromMap((map['threatPreventionProfile'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : SecurityProfileType.fromValue(map['type'] as String),
    );
  }
}

