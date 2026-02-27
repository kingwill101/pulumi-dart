// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ProjectDefaultNetworkTier.
class ProjectDefaultNetworkTierArgs {
  /// The default network tier to be configured for the project.
  /// This field can take the following values: `PREMIUM` or `STANDARD`.
  ///
  /// - - -
  final pulumi.Input<String> networkTier;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  ProjectDefaultNetworkTierArgs({
    required this.networkTier,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkTier'] = networkTier;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ProjectDefaultNetworkTierArgs.fromMap(Map<String, dynamic> map) {
    return ProjectDefaultNetworkTierArgs(
      networkTier: pulumi.Input.asInput<String>(map['networkTier']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
