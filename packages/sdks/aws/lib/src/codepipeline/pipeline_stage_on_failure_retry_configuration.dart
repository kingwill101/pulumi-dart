// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineStageOnFailureRetryConfiguration {
  /// The method that you want to configure for automatic stage retry on stage failure. You can specify to retry only failed action in the stage or all actions in the stage. Possible values are `FAILED_ACTIONS` and `ALL_ACTIONS`.
  final pulumi.Input<String>? retryMode;

  /// Creates a new [PipelineStageOnFailureRetryConfiguration].
  /// [retryMode] The method that you want to configure for automatic stage retry on stage failure. You can specify to retry only failed action in the stage or all actions in the stage. Possible values are `FAILED_ACTIONS` and `ALL_ACTIONS`.
  PipelineStageOnFailureRetryConfiguration({
    this.retryMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retryMode': ?retryMode,
    };
  }

  factory PipelineStageOnFailureRetryConfiguration.fromMap(Map<String, dynamic> map) {
    return PipelineStageOnFailureRetryConfiguration(
      retryMode: (() { final guardedValue = map['retryMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

