// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SecurityProfileGroup.
class SecurityProfileGroupArgs {
  /// Reference to a SecurityProfile with the CustomIntercept configuration.
  final Input<String>? customInterceptProfile;

  /// Reference to a SecurityProfile with the custom mirroring configuration for the SecurityProfileGroup.
  final Input<String>? customMirroringProfile;

  /// An optional description of the profile. The Max length is 512 characters.
  final Input<String>? description;

  /// A map of key/value label pairs to assign to the resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location of the security profile group.
  /// The default value is `global`.
  final Input<String>? location;

  /// The name of the security profile group resource.
  final Input<String>? name;

  /// The name of the parent this security profile group belongs to.
  /// Format: organizations/{organization_id}.
  final Input<String>? parent;

  /// Reference to a SecurityProfile with the threat prevention configuration for the SecurityProfileGroup.
  final Input<String>? threatPreventionProfile;

  /// Reference to a SecurityProfile with the URL filtering configuration for the SecurityProfileGroup.
  final Input<String>? urlFilteringProfile;

  SecurityProfileGroupArgs({
    this.customInterceptProfile,
    this.customMirroringProfile,
    this.description,
    this.labels,
    this.location,
    this.name,
    this.parent,
    this.threatPreventionProfile,
    this.urlFilteringProfile,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customInterceptProfileValue = customInterceptProfile;
    if (customInterceptProfileValue != null) {
      map['customInterceptProfile'] = customInterceptProfileValue;
    }
    final customMirroringProfileValue = customMirroringProfile;
    if (customMirroringProfileValue != null) {
      map['customMirroringProfile'] = customMirroringProfileValue;
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
      map['threatPreventionProfile'] = threatPreventionProfileValue;
    }
    final urlFilteringProfileValue = urlFilteringProfile;
    if (urlFilteringProfileValue != null) {
      map['urlFilteringProfile'] = urlFilteringProfileValue;
    }
    return map;
  }

  factory SecurityProfileGroupArgs.fromMap(Map<String, dynamic> map) {
    return SecurityProfileGroupArgs(
      customInterceptProfile:
          Input.asOptionalInput<String>(map['customInterceptProfile']),
      customMirroringProfile:
          Input.asOptionalInput<String>(map['customMirroringProfile']),
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      parent: Input.asOptionalInput<String>(map['parent']),
      threatPreventionProfile:
          Input.asOptionalInput<String>(map['threatPreventionProfile']),
      urlFilteringProfile:
          Input.asOptionalInput<String>(map['urlFilteringProfile']),
    );
  }
}
