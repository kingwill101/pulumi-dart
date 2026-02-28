// ignore_for_file: unused_element, unnecessary_cast

import 'extensions_instance_runtime_data_fatal_error.dart';
import 'extensions_instance_runtime_data_processing_state.dart';

class ExtensionsInstanceRuntimeData {
  /// The fatal error state for the extension instance
  /// Structure is documented below.
  final ExtensionsInstanceRuntimeDataFatalError? fatalError;

  /// The processing state for the extension instance
  /// Structure is documented below.
  final ExtensionsInstanceRuntimeDataProcessingState? processingState;

  /// The time of the last state update.
  final String? stateUpdateTime;

  /// Creates a new [ExtensionsInstanceRuntimeData].
  /// [fatalError] The fatal error state for the extension instance
  /// [processingState] The processing state for the extension instance
  /// [stateUpdateTime] The time of the last state update.
  ExtensionsInstanceRuntimeData({
    this.fatalError,
    this.processingState,
    this.stateUpdateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fatalErrorValue = fatalError;
    if (fatalErrorValue != null) {
      map['fatalError'] = fatalErrorValue.toMap();
    }
    final processingStateValue = processingState;
    if (processingStateValue != null) {
      map['processingState'] = processingStateValue.toMap();
    }
    final stateUpdateTimeValue = stateUpdateTime;
    if (stateUpdateTimeValue != null) {
      map['stateUpdateTime'] = stateUpdateTimeValue;
    }
    return map;
  }

  factory ExtensionsInstanceRuntimeData.fromMap(Map<String, dynamic> map) {
    return ExtensionsInstanceRuntimeData(
      fatalError: map['fatalError'] == null
          ? null
          : ExtensionsInstanceRuntimeDataFatalError.fromMap(
              (map['fatalError'] as Map).cast<String, dynamic>()),
      processingState: map['processingState'] == null
          ? null
          : ExtensionsInstanceRuntimeDataProcessingState.fromMap(
              (map['processingState'] as Map).cast<String, dynamic>()),
      stateUpdateTime: map['stateUpdateTime'] == null
          ? null
          : map['stateUpdateTime'] as String,
    );
  }
}
