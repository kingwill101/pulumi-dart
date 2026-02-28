// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'script_stack_frame_response.dart';

class ScriptStatisticsResponse {
  /// Whether this child job was a statement or expression.
  final String evaluationKind;
  /// Stack trace showing the line/column/procedure name of each frame on the stack at the point where the current evaluation happened. The leaf frame is first, the primary script is last. Never empty.
  final List<ScriptStackFrameResponse> stackFrames;

  /// Creates a new [ScriptStatisticsResponse].
  /// [evaluationKind] Whether this child job was a statement or expression.
  /// [stackFrames] Stack trace showing the line/column/procedure name of each frame on the stack at the point where the current evaluation happened. The leaf frame is first, the primary script is last. Never empty.
  ScriptStatisticsResponse({
    required this.evaluationKind,
    required this.stackFrames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationKind': evaluationKind,
      'stackFrames': pulumi.Input.encodeList<ScriptStackFrameResponse, Map<String, dynamic>>(stackFrames, (value) => value.toMap()),
    };
  }

  factory ScriptStatisticsResponse.fromMap(Map<String, dynamic> map) {
    return ScriptStatisticsResponse(
      evaluationKind: map['evaluationKind'] as String,
      stackFrames: pulumi.Input.decodeList<ScriptStackFrameResponse>(map['stackFrames'], (value) => ScriptStackFrameResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

