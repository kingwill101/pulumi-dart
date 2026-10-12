// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyGrantDetailCreateProjectFromProjectProfile {
  /// Whether to include child domain units.
  final pulumi.Input<bool?>? includeChildDomainUnits;
  /// List of project profile identifiers.
  final pulumi.Input<List<String>?>? projectProfiles;

  /// Creates a new [PolicyGrantDetailCreateProjectFromProjectProfile].
  /// [includeChildDomainUnits] Whether to include child domain units.
  /// [projectProfiles] List of project profile identifiers.
  const PolicyGrantDetailCreateProjectFromProjectProfile({
    this.includeChildDomainUnits,
    this.projectProfiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeChildDomainUnits': ?includeChildDomainUnits,
      'projectProfiles': ?projectProfiles,
    };
  }

  factory PolicyGrantDetailCreateProjectFromProjectProfile.fromMap(Map<String, dynamic> map) {
    return PolicyGrantDetailCreateProjectFromProjectProfile(
      includeChildDomainUnits: (() { final guardedValue = map['includeChildDomainUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      projectProfiles: (() { final guardedValue = map['projectProfiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
