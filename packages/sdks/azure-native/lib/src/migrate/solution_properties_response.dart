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
      'details':
          ?pulumi.Input.mapOptionalInputValue<
            SolutionDetailsResponse,
            Map<String, dynamic>
          >(details, (value) => value.toMap()),
      'goal': ?goal,
      'purpose': ?purpose,
      'status': ?status,
      'summary':
          ?pulumi.Input.mapOptionalInputValue<
            DatabasesSolutionSummaryResponse,
            Map<String, dynamic>
          >(summary, (value) => value.toMap()),
      'tool': ?tool,
    };
  }

  factory SolutionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SolutionPropertiesResponse(
      cleanupState: (() {
        final guardedValue = map['cleanupState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      details: (() {
        final guardedValue = map['details'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SolutionDetailsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      goal: (() {
        final guardedValue = map['goal'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      purpose: (() {
        final guardedValue = map['purpose'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      summary: (() {
        final guardedValue = map['summary'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DatabasesSolutionSummaryResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tool: (() {
        final guardedValue = map['tool'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
