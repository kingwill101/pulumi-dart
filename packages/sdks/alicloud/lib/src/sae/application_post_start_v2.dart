// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_post_start_v2_exec.dart';

class ApplicationPostStartV2 {
  /// Execute. See `exec` below.
  final pulumi.Input<ApplicationPostStartV2Exec>? exec;

  /// Creates a new [ApplicationPostStartV2].
  /// [exec] Execute. See `exec` below.
  ApplicationPostStartV2({this.exec});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exec':
          ?pulumi.Input.mapOptionalInputValue<
            ApplicationPostStartV2Exec,
            Map<String, dynamic>
          >(exec, (value) => value.toMap()),
    };
  }

  factory ApplicationPostStartV2.fromMap(Map<String, dynamic> map) {
    return ApplicationPostStartV2(
      exec: (() {
        final guardedValue = map['exec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ApplicationPostStartV2Exec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
