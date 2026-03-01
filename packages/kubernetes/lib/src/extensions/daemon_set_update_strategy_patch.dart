// ignore_for_file: unused_element, unnecessary_cast

import 'rolling_update_daemon_set_patch.dart';

class DaemonSetUpdateStrategyPatch {
  /// Rolling update config params. Present only if type = "RollingUpdate".
  final RollingUpdateDaemonSetPatch? rollingUpdate;
  /// Type of daemon set update. Can be "RollingUpdate" or "OnDelete". Default is OnDelete.
  final String? type;

  /// Creates a new [DaemonSetUpdateStrategyPatch].
  /// [rollingUpdate] Rolling update config params. Present only if type = "RollingUpdate".
  /// [type] Type of daemon set update. Can be "RollingUpdate" or "OnDelete". Default is OnDelete.
  DaemonSetUpdateStrategyPatch({
    this.rollingUpdate,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rollingUpdate': ?rollingUpdate == null ? null : rollingUpdate!.toMap(),
      'type': ?type,
    };
  }

  factory DaemonSetUpdateStrategyPatch.fromMap(Map<String, dynamic> map) {
    return DaemonSetUpdateStrategyPatch(
      rollingUpdate: map['rollingUpdate'] == null ? null : RollingUpdateDaemonSetPatch.fromMap((map['rollingUpdate'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

