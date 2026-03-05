// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A class represent the control record synchronized from app compliance.
class ControlSyncRecordResponse {
  /// The Id of the control. e.g. "Operational_Security_10"
  final pulumi.Input<String>? controlId;
  /// Control status synchronized from app compliance.
  final pulumi.Input<String>? controlStatus;

  /// Creates a new [ControlSyncRecordResponse].
  /// [controlId] The Id of the control. e.g. "Operational_Security_10"
  /// [controlStatus] Control status synchronized from app compliance.
  ControlSyncRecordResponse({
    this.controlId,
    this.controlStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlId': ?controlId,
      'controlStatus': ?controlStatus,
    };
  }

  factory ControlSyncRecordResponse.fromMap(Map<String, dynamic> map) {
    return ControlSyncRecordResponse(
      controlId: (() { final guardedValue = map['controlId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      controlStatus: (() { final guardedValue = map['controlStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

