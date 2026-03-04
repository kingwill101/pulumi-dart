// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_health_response.dart';

/// Additional workflow properties.
class WorkflowEnvelopeResponseProperties {
  /// Gets or sets the files.
  final pulumi.Input<dynamic>? files;

  /// Gets or sets the state of the workflow.
  final pulumi.Input<String>? flowState;

  /// Gets or sets workflow health.
  final pulumi.Input<WorkflowHealthResponse>? health;

  /// Creates a new [WorkflowEnvelopeResponseProperties].
  /// [files] Gets or sets the files.
  /// [flowState] Gets or sets the state of the workflow.
  /// [health] Gets or sets workflow health.
  WorkflowEnvelopeResponseProperties({this.files, this.flowState, this.health});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'files': ?files,
      'flowState': ?flowState,
      'health':
          ?pulumi.Input.mapOptionalInputValue<
            WorkflowHealthResponse,
            Map<String, dynamic>
          >(health, (value) => value.toMap()),
    };
  }

  factory WorkflowEnvelopeResponseProperties.fromMap(Map<String, dynamic> map) {
    return WorkflowEnvelopeResponseProperties(
      files: (() {
        final guardedValue = map['files'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      flowState: (() {
        final guardedValue = map['flowState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      health: (() {
        final guardedValue = map['health'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WorkflowHealthResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
