// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The sequencer action details.
class SequencerActionResponse {
  /// The unique identifier of the sequencer action.
  final pulumi.Input<String?>? actionId;
  /// The result of the sequencer action.
  final pulumi.Input<String?>? result;
  /// The state of the sequencer action.
  final pulumi.Input<String?>? state;

  /// Creates a new [SequencerActionResponse].
  /// [actionId] The unique identifier of the sequencer action.
  /// [result] The result of the sequencer action.
  /// [state] The state of the sequencer action.
  const SequencerActionResponse({
    this.actionId,
    this.result,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionId': ?actionId,
      'result': ?result,
      'state': ?state,
    };
  }

  factory SequencerActionResponse.fromMap(Map<String, dynamic> map) {
    return SequencerActionResponse(
      actionId: (() { final guardedValue = map['actionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      result: (() { final guardedValue = map['result']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
