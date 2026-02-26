// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'script_stack_frame_response.dart';

class ScriptStatisticsResponse {
  /// Whether this child job was a statement or expression.
  final String evaluationKind;

  /// Stack trace showing the line/column/procedure name of each frame on the stack at the point where the current evaluation happened. The leaf frame is first, the primary script is last. Never empty.
  final List<ScriptStackFrameResponse> stackFrames;

  ScriptStatisticsResponse({
    required this.evaluationKind,
    required this.stackFrames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['evaluationKind'] = evaluationKind;
    map['stackFrames'] =
        Input.encodeList<ScriptStackFrameResponse, Map<String, dynamic>>(
            stackFrames, (value) => value.toMap());
    return map;
  }

  factory ScriptStatisticsResponse.fromMap(Map<String, dynamic> map) {
    return ScriptStatisticsResponse(
      evaluationKind: map['evaluationKind'] as String,
      stackFrames: Input.decodeList<ScriptStackFrameResponse>(
          map['stackFrames'],
          (value) => ScriptStackFrameResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
