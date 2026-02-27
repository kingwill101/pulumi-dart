// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../security_profile_custom_intercept_profile/security_profile_custom_intercept_profile.dart';
import '../security_profile_custom_mirroring_profile/security_profile_custom_mirroring_profile.dart';
import '../security_profile_threat_prevention_profile/security_profile_threat_prevention_profile.dart';
import '../security_profile_url_filtering_profile/security_profile_url_filtering_profile.dart';

/// The set of arguments for SecurityProfile.
class SecurityProfileArgs {
  /// The configuration for defining the Intercept Endpoint Group used to
  /// intercept traffic to third-party firewall appliances.
  /// Structure is documented below.
  final pulumi.Input<SecurityProfileCustomInterceptProfile>?
      customInterceptProfile;

  /// The configuration for defining the Mirroring Endpoint Group used to
  /// mirror traffic to third-party collectors.
  /// Structure is documented below.
  final pulumi.Input<SecurityProfileCustomMirroringProfile>?
      customMirroringProfile;

  /// An optional description of the security profile. The Max length is 512 characters.
  final pulumi.Input<String>? description;

  /// A map of key/value label pairs to assign to the resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location of the security profile.
  /// The default value is `global`.
  final pulumi.Input<String>? location;

  /// The name of the security profile resource.
  final pulumi.Input<String>? name;

  /// The name of the parent this security profile belongs to.
  /// Format: organizations/{organization_id}.
  final pulumi.Input<String>? parent;

  /// The threat prevention configuration for the security profile.
  /// Structure is documented below.
  final pulumi.Input<SecurityProfileThreatPreventionProfile>?
      threatPreventionProfile;

  /// The type of security profile.
  /// Possible values are: `THREAT_PREVENTION`, `URL_FILTERING`, `CUSTOM_MIRRORING`, `CUSTOM_INTERCEPT`.
  final pulumi.Input<String> type;

  /// The url filtering configuration for the security profile.
  /// Structure is documented below.
  final pulumi.Input<SecurityProfileUrlFilteringProfile>? urlFilteringProfile;

  SecurityProfileArgs({
    this.customInterceptProfile,
    this.customMirroringProfile,
    this.description,
    this.labels,
    this.location,
    this.name,
    this.parent,
    this.threatPreventionProfile,
    required this.type,
    this.urlFilteringProfile,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customInterceptProfileValue = customInterceptProfile;
    if (customInterceptProfileValue != null) {
      map['customInterceptProfile'] = pulumi.Input.mapOptionalInputValue<
              SecurityProfileCustomInterceptProfile, Map<String, dynamic>>(
          customInterceptProfileValue, (value) => value.toMap());
    }
    final customMirroringProfileValue = customMirroringProfile;
    if (customMirroringProfileValue != null) {
      map['customMirroringProfile'] = pulumi.Input.mapOptionalInputValue<
              SecurityProfileCustomMirroringProfile, Map<String, dynamic>>(
          customMirroringProfileValue, (value) => value.toMap());
    }
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
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    final threatPreventionProfileValue = threatPreventionProfile;
    if (threatPreventionProfileValue != null) {
      map['threatPreventionProfile'] = pulumi.Input.mapOptionalInputValue<
              SecurityProfileThreatPreventionProfile, Map<String, dynamic>>(
          threatPreventionProfileValue, (value) => value.toMap());
    }
    map['type'] = type;
    final urlFilteringProfileValue = urlFilteringProfile;
    if (urlFilteringProfileValue != null) {
      map['urlFilteringProfile'] = pulumi.Input.mapOptionalInputValue<
              SecurityProfileUrlFilteringProfile, Map<String, dynamic>>(
          urlFilteringProfileValue, (value) => value.toMap());
    }
    return map;
  }

  factory SecurityProfileArgs.fromMap(Map<String, dynamic> map) {
    return SecurityProfileArgs(
      customInterceptProfile:
          pulumi.Input.asOptionalInput<SecurityProfileCustomInterceptProfile>(
              map['customInterceptProfile']),
      customMirroringProfile:
          pulumi.Input.asOptionalInput<SecurityProfileCustomMirroringProfile>(
              map['customMirroringProfile']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parent: pulumi.Input.asOptionalInput<String>(map['parent']),
      threatPreventionProfile:
          pulumi.Input.asOptionalInput<SecurityProfileThreatPreventionProfile>(
              map['threatPreventionProfile']),
      type: pulumi.Input.asInput<String>(map['type']),
      urlFilteringProfile:
          pulumi.Input.asOptionalInput<SecurityProfileUrlFilteringProfile>(
              map['urlFilteringProfile']),
    );
  }
}
