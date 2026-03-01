// ignore_for_file: unused_element, unnecessary_cast

import 'application_post_start_v2_exec.dart';

class ApplicationPostStartV2 {
  /// Execute. See `exec` below.
  final ApplicationPostStartV2Exec? exec;

  /// Creates a new [ApplicationPostStartV2].
  /// [exec] Execute. See `exec` below.
  ApplicationPostStartV2({
    this.exec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exec': ?exec == null ? null : exec!.toMap(),
    };
  }

  factory ApplicationPostStartV2.fromMap(Map<String, dynamic> map) {
    return ApplicationPostStartV2(
      exec: map['exec'] == null ? null : ApplicationPostStartV2Exec.fromMap((map['exec'] as Map).cast<String, dynamic>()),
    );
  }
}

