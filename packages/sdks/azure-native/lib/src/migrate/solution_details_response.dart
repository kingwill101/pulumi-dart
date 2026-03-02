// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Class representing the details of the solution.
class SolutionDetailsResponse {
  /// Gets or sets the count of assessments reported by the solution.
  final pulumi.Input<int>? assessmentCount;
  /// Gets or sets the extended details reported by the solution.
  final pulumi.Input<Map<String, String>>? extendedDetails;
  /// Gets or sets the count of groups reported by the solution.
  final pulumi.Input<int>? groupCount;

  /// Creates a new [SolutionDetailsResponse].
  /// [assessmentCount] Gets or sets the count of assessments reported by the solution.
  /// [extendedDetails] Gets or sets the extended details reported by the solution.
  /// [groupCount] Gets or sets the count of groups reported by the solution.
  SolutionDetailsResponse({
    this.assessmentCount,
    this.extendedDetails,
    this.groupCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentCount': ?assessmentCount,
      'extendedDetails': ?extendedDetails,
      'groupCount': ?groupCount,
    };
  }

  factory SolutionDetailsResponse.fromMap(Map<String, dynamic> map) {
    return SolutionDetailsResponse(
      assessmentCount: map['assessmentCount'] == null ? null : (map['assessmentCount'] as int).input(),
      extendedDetails: map['extendedDetails'] == null ? null : ((map['extendedDetails'] as Map).cast<String, String>()).input(),
      groupCount: map['groupCount'] == null ? null : (map['groupCount'] as int).input(),
    );
  }
}

