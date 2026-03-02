// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The status of a blueprint assignment. This field is readonly.
class AssignmentStatusResponse {
  /// Last modified time of this blueprint definition.
  final pulumi.Input<String> lastModified;
  /// List of resources that were created by the blueprint assignment.
  final pulumi.Input<List<String>> managedResources;
  /// Creation time of this blueprint definition.
  final pulumi.Input<String> timeCreated;

  /// Creates a new [AssignmentStatusResponse].
  /// [lastModified] Last modified time of this blueprint definition.
  /// [managedResources] List of resources that were created by the blueprint assignment.
  /// [timeCreated] Creation time of this blueprint definition.
  AssignmentStatusResponse({
    required this.lastModified,
    required this.managedResources,
    required this.timeCreated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastModified': lastModified,
      'managedResources': managedResources,
      'timeCreated': timeCreated,
    };
  }

  factory AssignmentStatusResponse.fromMap(Map<String, dynamic> map) {
    return AssignmentStatusResponse(
      lastModified: (map['lastModified'] as String).input(),
      managedResources: ((map['managedResources'] as List).cast<String>()).input(),
      timeCreated: (map['timeCreated'] as String).input(),
    );
  }
}

