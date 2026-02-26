// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ProjectCloudArmorTier.
class ProjectCloudArmorTierArgs {
  /// Managed protection tier to be set.
  /// Possible values are: `CA_STANDARD`, `CA_ENTERPRISE_PAYGO`, `CA_ENTERPRISE_ANNUAL`.
  final Input<String> cloudArmorTier;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  ProjectCloudArmorTierArgs({
    required this.cloudArmorTier,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudArmorTier'] = cloudArmorTier;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ProjectCloudArmorTierArgs.fromMap(Map<String, dynamic> map) {
    return ProjectCloudArmorTierArgs(
      cloudArmorTier: Input.asInput<String>(map['cloudArmorTier']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
