// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../connection_eventing_runtime_data_status/connection_eventing_runtime_data_status.dart';

class ConnectionEventingRuntimeData {
  /// Events listener endpoint. The value will populated after provisioning the events listener.
  final String? eventsListenerEndpoint;

  /// (Output)
  /// Current status of eventing.
  /// Structure is documented below.
  final List<ConnectionEventingRuntimeDataStatus>? statuses;

  ConnectionEventingRuntimeData({
    this.eventsListenerEndpoint,
    this.statuses,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final eventsListenerEndpointValue = eventsListenerEndpoint;
    if (eventsListenerEndpointValue != null) {
      map['eventsListenerEndpoint'] = eventsListenerEndpointValue;
    }
    final statusesValue = statuses;
    if (statusesValue != null) {
      map['statuses'] = Input.encodeList<ConnectionEventingRuntimeDataStatus,
          Map<String, dynamic>>(statusesValue, (value) => value.toMap());
    }
    return map;
  }

  factory ConnectionEventingRuntimeData.fromMap(Map<String, dynamic> map) {
    return ConnectionEventingRuntimeData(
      eventsListenerEndpoint: map['eventsListenerEndpoint'] == null
          ? null
          : map['eventsListenerEndpoint'] as String,
      statuses: map['statuses'] == null
          ? null
          : Input.decodeList<ConnectionEventingRuntimeDataStatus>(
              map['statuses'],
              (value) => ConnectionEventingRuntimeDataStatus.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
