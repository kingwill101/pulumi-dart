// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the security posture to be used for all virtual machines in the scale
/// set. Minimum api-version: 2023-03-01
class SecurityPostureReferenceResponse {
  /// List of virtual machine extension names to exclude when applying the security
  /// posture.
  final pulumi.Input<List<String>>? excludeExtensions;
  /// The security posture reference id in the form of
  /// /CommunityGalleries/{communityGalleryName}/securityPostures/{securityPostureName}/versions/{major.minor.patch}|{major.*}|latest
  final pulumi.Input<String>? id;
  /// Whether the security posture can be overridden by the user.
  final pulumi.Input<bool>? isOverridable;

  /// Creates a new [SecurityPostureReferenceResponse].
  /// [excludeExtensions] List of virtual machine extension names to exclude when applying the security
  /// [id] The security posture reference id in the form of
  /// [isOverridable] Whether the security posture can be overridden by the user.
  SecurityPostureReferenceResponse({
    this.excludeExtensions,
    this.id,
    this.isOverridable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeExtensions': ?excludeExtensions,
      'id': ?id,
      'isOverridable': ?isOverridable,
    };
  }

  factory SecurityPostureReferenceResponse.fromMap(Map<String, dynamic> map) {
    return SecurityPostureReferenceResponse(
      excludeExtensions: map['excludeExtensions'] == null ? null : ((map['excludeExtensions'] as List).cast<String>()).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      isOverridable: map['isOverridable'] == null ? null : (map['isOverridable'] as bool).input(),
    );
  }
}

