// ignore_for_file: unused_element, unnecessary_cast


/// Class representing the details of the solution.
class SolutionDetails {
  /// Gets or sets the count of assessments reported by the solution.
  final int? assessmentCount;
  /// Gets or sets the extended details reported by the solution.
  final Map<String, String>? extendedDetails;
  /// Gets or sets the count of groups reported by the solution.
  final int? groupCount;

  /// Creates a new [SolutionDetails].
  /// [assessmentCount] Gets or sets the count of assessments reported by the solution.
  /// [extendedDetails] Gets or sets the extended details reported by the solution.
  /// [groupCount] Gets or sets the count of groups reported by the solution.
  SolutionDetails({
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

  factory SolutionDetails.fromMap(Map<String, dynamic> map) {
    return SolutionDetails(
      assessmentCount: map['assessmentCount'] == null ? null : map['assessmentCount'] as int,
      extendedDetails: map['extendedDetails'] == null ? null : (map['extendedDetails'] as Map).cast<String, String>(),
      groupCount: map['groupCount'] == null ? null : map['groupCount'] as int,
    );
  }
}

