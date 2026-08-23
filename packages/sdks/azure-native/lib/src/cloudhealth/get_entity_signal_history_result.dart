// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'signal_history_data_point_response.dart';

/// Result data returned by getEntitySignalHistory.
class GetEntitySignalHistoryResult {
  /// Name of the entity
  final String entityName;
  /// Signal history data points
  final List<SignalHistoryDataPointResponse> history;
  /// Name of the signal
  final String signalName;

  /// Creates a new [GetEntitySignalHistoryResult].
  /// [entityName] Name of the entity
  /// [history] Signal history data points
  /// [signalName] Name of the signal
  const GetEntitySignalHistoryResult({
    required this.entityName,
    required this.history,
    required this.signalName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityName': entityName,
      'history': pulumi.Input.encodeList<SignalHistoryDataPointResponse, Map<String, dynamic>>(history, (value) => value.toMap()),
      'signalName': signalName,
    };
  }

  factory GetEntitySignalHistoryResult.fromMap(Map<String, dynamic> map) {
    return GetEntitySignalHistoryResult(
      entityName: map['entityName'] as String,
      history: pulumi.Input.decodeList<SignalHistoryDataPointResponse>(map['history']!, (value) => SignalHistoryDataPointResponse.fromMap((value as Map).cast<String, dynamic>())),
      signalName: map['signalName'] as String,
    );
  }
}
