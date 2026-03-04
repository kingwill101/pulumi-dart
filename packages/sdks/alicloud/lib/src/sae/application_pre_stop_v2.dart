// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_pre_stop_v2_exec.dart';

class ApplicationPreStopV2 {
  /// Execute. See `exec` below.
  final pulumi.Input<ApplicationPreStopV2Exec>? exec;

  /// Creates a new [ApplicationPreStopV2].
  /// [exec] Execute. See `exec` below.
  ApplicationPreStopV2({this.exec});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exec':
          ?pulumi.Input.mapOptionalInputValue<
            ApplicationPreStopV2Exec,
            Map<String, dynamic>
          >(exec, (value) => value.toMap()),
    };
  }

  factory ApplicationPreStopV2.fromMap(Map<String, dynamic> map) {
    return ApplicationPreStopV2(
      exec: (() {
        final guardedValue = map['exec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApplicationPreStopV2Exec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
