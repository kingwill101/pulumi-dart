// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the security posture to be used in the scale set. Minimum api-version: 2023-03-01
class SecurityPostureReference {
  /// The list of virtual machine extension names to exclude when applying the security posture.
  final pulumi.Input<List<String>>? excludeExtensions;
  /// The security posture reference id in the form of /CommunityGalleries/{communityGalleryName}/securityPostures/{securityPostureName}/versions/{major.minor.patch}|latest
  final pulumi.Input<String> id;
  /// Whether the security posture can be overridden by the user.
  final pulumi.Input<bool>? isOverridable;

  /// Creates a new [SecurityPostureReference].
  /// [excludeExtensions] The list of virtual machine extension names to exclude when applying the security posture.
  /// [id] The security posture reference id in the form of /CommunityGalleries/{communityGalleryName}/securityPostures/{securityPostureName}/versions/{major.minor.patch}|latest
  /// [isOverridable] Whether the security posture can be overridden by the user.
  SecurityPostureReference({
    this.excludeExtensions,
    required this.id,
    this.isOverridable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeExtensions': ?excludeExtensions,
      'id': id,
      'isOverridable': ?isOverridable,
    };
  }

  factory SecurityPostureReference.fromMap(Map<String, dynamic> map) {
    return SecurityPostureReference(
      excludeExtensions: (() { final guardedValue = map['excludeExtensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      isOverridable: (() { final guardedValue = map['isOverridable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

