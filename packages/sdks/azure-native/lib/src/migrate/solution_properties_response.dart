// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'databases_solution_summary_response.dart';
import 'solution_details_response.dart';

/// Class for solution properties.
class SolutionPropertiesResponse {
  /// Gets or sets the cleanup state of the solution.
  final pulumi.Input<String>? cleanupState;
  /// Gets or sets the details of the solution.
  final pulumi.Input<SolutionDetailsResponse>? details;
  /// Gets or sets the goal of the solution.
  final pulumi.Input<String>? goal;
  /// Gets or sets the purpose of the solution.
  final pulumi.Input<String>? purpose;
  /// Gets or sets the current status of the solution.
  final pulumi.Input<String>? status;
  /// Gets or sets the summary of the solution.
  final pulumi.Input<DatabasesSolutionSummaryResponse>? summary;
  /// Gets or sets the tool being used in the solution.
  final pulumi.Input<String>? tool;

  /// Creates a new [SolutionPropertiesResponse].
  /// [cleanupState] Gets or sets the cleanup state of the solution.
  /// [details] Gets or sets the details of the solution.
  /// [goal] Gets or sets the goal of the solution.
  /// [purpose] Gets or sets the purpose of the solution.
  /// [status] Gets or sets the current status of the solution.
  /// [summary] Gets or sets the summary of the solution.
  /// [tool] Gets or sets the tool being used in the solution.
  SolutionPropertiesResponse({
    this.cleanupState,
    this.details,
    this.goal,
    this.purpose,
    this.status,
    this.summary,
    this.tool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cleanupState': ?cleanupState,
      'details': ?pulumi.Input.mapOptionalInputValue<SolutionDetailsResponse, Map<String, dynamic>>(details, (value) => value.toMap()),
      'goal': ?goal,
      'purpose': ?purpose,
      'status': ?status,
      'summary': ?pulumi.Input.mapOptionalInputValue<DatabasesSolutionSummaryResponse, Map<String, dynamic>>(summary, (value) => value.toMap()),
      'tool': ?tool,
    };
  }

  factory SolutionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SolutionPropertiesResponse(
      cleanupState: map['cleanupState'] == null ? null : (map['cleanupState']! as String).input(),
      details: map['details'] == null ? null : (SolutionDetailsResponse.fromMap((map['details']! as Map).cast<String, dynamic>())).input(),
      goal: map['goal'] == null ? null : (map['goal']! as String).input(),
      purpose: map['purpose'] == null ? null : (map['purpose']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      summary: map['summary'] == null ? null : (DatabasesSolutionSummaryResponse.fromMap((map['summary']! as Map).cast<String, dynamic>())).input(),
      tool: map['tool'] == null ? null : (map['tool']! as String).input(),
    );
  }
}

