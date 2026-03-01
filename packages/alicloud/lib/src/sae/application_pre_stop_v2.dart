// ignore_for_file: unused_element, unnecessary_cast

import 'application_pre_stop_v2_exec.dart';

class ApplicationPreStopV2 {
  /// Execute. See `exec` below.
  final ApplicationPreStopV2Exec? exec;

  /// Creates a new [ApplicationPreStopV2].
  /// [exec] Execute. See `exec` below.
  ApplicationPreStopV2({
    this.exec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exec': ?exec == null ? null : exec!.toMap(),
    };
  }

  factory ApplicationPreStopV2.fromMap(Map<String, dynamic> map) {
    return ApplicationPreStopV2(
      exec: map['exec'] == null ? null : ApplicationPreStopV2Exec.fromMap((map['exec'] as Map).cast<String, dynamic>()),
    );
  }
}

