// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'solution_details.dart';

/// Class for solution properties.
class SolutionProperties {
  /// Gets or sets the cleanup state of the solution.
  final pulumi.Input<String>? cleanupState;
  /// Gets or sets the details of the solution.
  final pulumi.Input<SolutionDetails>? details;
  /// Gets or sets the goal of the solution.
  final pulumi.Input<String>? goal;
  /// Gets or sets the purpose of the solution.
  final pulumi.Input<String>? purpose;
  /// Gets or sets the current status of the solution.
  final pulumi.Input<String>? status;
  /// Gets or sets the tool being used in the solution.
  final pulumi.Input<String>? tool;

  /// Creates a new [SolutionProperties].
  /// [cleanupState] Gets or sets the cleanup state of the solution.
  /// [details] Gets or sets the details of the solution.
  /// [goal] Gets or sets the goal of the solution.
  /// [purpose] Gets or sets the purpose of the solution.
  /// [status] Gets or sets the current status of the solution.
  /// [tool] Gets or sets the tool being used in the solution.
  const SolutionProperties({
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
      'details': ?pulumi.Input.mapOptionalInputValue<SolutionDetails, Map<String, dynamic>>(details, (value) => value.toMap()),
      'goal': ?goal,
      'purpose': ?purpose,
      'status': ?status,
      'tool': ?tool,
    };
  }

  factory SolutionProperties.fromMap(Map<String, dynamic> map) {
    return SolutionProperties(
      cleanupState: (() { final guardedValue = map['cleanupState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SolutionDetails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      goal: (() { final guardedValue = map['goal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      purpose: (() { final guardedValue = map['purpose']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tool: (() { final guardedValue = map['tool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

