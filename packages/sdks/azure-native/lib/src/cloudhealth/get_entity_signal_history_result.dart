// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'signal_history_data_point_response.dart';

/// Result data returned by getEntitySignalHistory.
class GetEntitySignalHistoryResult {
  /// Name of the entity
  final String? entityName;
  /// Signal history data points
  final List<SignalHistoryDataPointResponse>? history;
  /// Name of the signal
  final String? signalName;

  /// Creates a new [GetEntitySignalHistoryResult].
  /// [entityName] Name of the entity
  /// [history] Signal history data points
  /// [signalName] Name of the signal
  const GetEntitySignalHistoryResult({
    this.entityName,
    this.history,
    this.signalName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityName': ?entityName,
      'history': ?(() { final guardedValue = history; if (guardedValue == null) return null; return pulumi.Input.encodeList<SignalHistoryDataPointResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'signalName': ?signalName,
    };
  }

  factory GetEntitySignalHistoryResult.fromMap(Map<String, dynamic> map) {
    return GetEntitySignalHistoryResult(
      entityName: (() { final guardedValue = map['entityName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      history: (() { final guardedValue = map['history']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SignalHistoryDataPointResponse>(guardedValue, (value) => SignalHistoryDataPointResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      signalName: (() { final guardedValue = map['signalName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
