// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'android_device_response.dart';
import 'session_state_event_response.dart';

/// Result data returned by getDeviceSession.
class GetDeviceSessionResult {
  /// The timestamp that the session first became ACTIVE.
  final String activeStartTime;

  /// The requested device
  final AndroidDeviceResponse androidDevice;

  /// The time that the Session was created.
  final String createTime;

  /// The title of the DeviceSession to be presented in the UI.
  final String displayName;

  /// Optional. If the device is still in use at this time, any connections will be ended and the SessionState will transition from ACTIVE to FINISHED.
  final String expireTime;

  /// The interval of time that this device must be interacted with before it transitions from ACTIVE to TIMEOUT_INACTIVITY.
  final String inactivityTimeout;

  /// Optional. Name of the DeviceSession, e.g. "projects/{project_id}/deviceSessions/{session_id}"
  final String name;

  /// Current state of the DeviceSession.
  final String state;

  /// The historical state transitions of the session_state message including the current session state.
  final List<SessionStateEventResponse> stateHistories;

  /// Optional. The amount of time that a device will be initially allocated for. This can eventually be extended with the UpdateDeviceSession RPC. Default: 30 minutes.
  final String ttl;

  GetDeviceSessionResult({
    required this.activeStartTime,
    required this.androidDevice,
    required this.createTime,
    required this.displayName,
    required this.expireTime,
    required this.inactivityTimeout,
    required this.name,
    required this.state,
    required this.stateHistories,
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['activeStartTime'] = activeStartTime;
    map['androidDevice'] = androidDevice.toMap();
    map['createTime'] = createTime;
    map['displayName'] = displayName;
    map['expireTime'] = expireTime;
    map['inactivityTimeout'] = inactivityTimeout;
    map['name'] = name;
    map['state'] = state;
    map['stateHistories'] =
        Input.encodeList<SessionStateEventResponse, Map<String, dynamic>>(
            stateHistories, (value) => value.toMap());
    map['ttl'] = ttl;
    return map;
  }

  factory GetDeviceSessionResult.fromMap(Map<String, dynamic> map) {
    return GetDeviceSessionResult(
      activeStartTime: map['activeStartTime'] as String,
      androidDevice: AndroidDeviceResponse.fromMap(
          (map['androidDevice'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      expireTime: map['expireTime'] as String,
      inactivityTimeout: map['inactivityTimeout'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      stateHistories: Input.decodeList<SessionStateEventResponse>(
          map['stateHistories'],
          (value) => SessionStateEventResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      ttl: map['ttl'] as String,
    );
  }
}
