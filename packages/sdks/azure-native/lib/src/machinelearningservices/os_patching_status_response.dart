// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_response_response.dart';

/// Returns metadata about the os patching.
class OsPatchingStatusResponse {
  /// Time of the latest os patching.
  final pulumi.Input<String>? latestPatchTime;
  /// Collection of errors encountered when doing os patching.
  final pulumi.Input<List<ErrorResponseResponse>>? osPatchingErrors;
  /// The os patching status.
  final pulumi.Input<String>? patchStatus;
  /// Specifies whether this compute instance is pending for reboot to finish os patching.
  final pulumi.Input<bool>? rebootPending;
  /// Time of scheduled reboot.
  final pulumi.Input<String>? scheduledRebootTime;

  /// Creates a new [OsPatchingStatusResponse].
  /// [latestPatchTime] Time of the latest os patching.
  /// [osPatchingErrors] Collection of errors encountered when doing os patching.
  /// [patchStatus] The os patching status.
  /// [rebootPending] Specifies whether this compute instance is pending for reboot to finish os patching.
  /// [scheduledRebootTime] Time of scheduled reboot.
  const OsPatchingStatusResponse({
    this.latestPatchTime,
    this.osPatchingErrors,
    this.patchStatus,
    this.rebootPending,
    this.scheduledRebootTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latestPatchTime': ?latestPatchTime,
      'osPatchingErrors': ?pulumi.Input.mapOptionalInputValue<List<ErrorResponseResponse>, List<Map<String, dynamic>>>(osPatchingErrors, (value) => pulumi.Input.encodeList<ErrorResponseResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'patchStatus': ?patchStatus,
      'rebootPending': ?rebootPending,
      'scheduledRebootTime': ?scheduledRebootTime,
    };
  }

  factory OsPatchingStatusResponse.fromMap(Map<String, dynamic> map) {
    return OsPatchingStatusResponse(
      latestPatchTime: (() { final guardedValue = map['latestPatchTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osPatchingErrors: (() { final guardedValue = map['osPatchingErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ErrorResponseResponse>(guardedValue, (value) => ErrorResponseResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      patchStatus: (() { final guardedValue = map['patchStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rebootPending: (() { final guardedValue = map['rebootPending']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scheduledRebootTime: (() { final guardedValue = map['scheduledRebootTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
