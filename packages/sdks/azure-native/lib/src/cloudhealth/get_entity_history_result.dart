// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_state_transition_response.dart';

/// Result data returned by getEntityHistory.
class GetEntityHistoryResult {
  /// Name of the entity
  final String? entityName;
  /// List of health state transitions
  final List<HealthStateTransitionResponse>? history;

  /// Creates a new [GetEntityHistoryResult].
  /// [entityName] Name of the entity
  /// [history] List of health state transitions
  const GetEntityHistoryResult({
    this.entityName,
    this.history,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityName': ?entityName,
      'history': ?(() { final guardedValue = history; if (guardedValue == null) return null; return pulumi.Input.encodeList<HealthStateTransitionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetEntityHistoryResult.fromMap(Map<String, dynamic> map) {
    return GetEntityHistoryResult(
      entityName: (() { final guardedValue = map['entityName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      history: (() { final guardedValue = map['history']; if (guardedValue == null) return null; return pulumi.Input.decodeList<HealthStateTransitionResponse>(guardedValue, (value) => HealthStateTransitionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
