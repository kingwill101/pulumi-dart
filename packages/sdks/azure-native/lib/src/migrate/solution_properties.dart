// ignore_for_file: unused_element, unnecessary_cast

import 'solution_details.dart';

/// Class for solution properties.
class SolutionProperties {
  /// Gets or sets the cleanup state of the solution.
  final String? cleanupState;
  /// Gets or sets the details of the solution.
  final SolutionDetails? details;
  /// Gets or sets the goal of the solution.
  final String? goal;
  /// Gets or sets the purpose of the solution.
  final String? purpose;
  /// Gets or sets the current status of the solution.
  final String? status;
  /// Gets or sets the tool being used in the solution.
  final String? tool;

  /// Creates a new [SolutionProperties].
  /// [cleanupState] Gets or sets the cleanup state of the solution.
  /// [details] Gets or sets the details of the solution.
  /// [goal] Gets or sets the goal of the solution.
  /// [purpose] Gets or sets the purpose of the solution.
  /// [status] Gets or sets the current status of the solution.
  /// [tool] Gets or sets the tool being used in the solution.
  SolutionProperties({
    this.cleanupState,
    this.details,
    this.goal,
    this.purpose,
    this.status,
    this.tool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cleanupState': ?cleanupState,
      'details': ?details == null ? null : details!.toMap(),
      'goal': ?goal,
      'purpose': ?purpose,
      'status': ?status,
      'tool': ?tool,
    };
  }

  factory SolutionProperties.fromMap(Map<String, dynamic> map) {
    return SolutionProperties(
      cleanupState: map['cleanupState'] == null ? null : map['cleanupState'] as String,
      details: map['details'] == null ? null : SolutionDetails.fromMap((map['details'] as Map).cast<String, dynamic>()),
      goal: map['goal'] == null ? null : map['goal'] as String,
      purpose: map['purpose'] == null ? null : map['purpose'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tool: map['tool'] == null ? null : map['tool'] as String,
    );
  }
}

