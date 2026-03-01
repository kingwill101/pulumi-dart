// ignore_for_file: unused_element, unnecessary_cast

import 'rolling_update_daemon_set.dart';

class DaemonSetUpdateStrategy {
  /// Rolling update config params. Present only if type = "RollingUpdate".
  final RollingUpdateDaemonSet? rollingUpdate;
  /// Type of daemon set update. Can be "RollingUpdate" or "OnDelete". Default is OnDelete.
  final String? type;

  /// Creates a new [DaemonSetUpdateStrategy].
  /// [rollingUpdate] Rolling update config params. Present only if type = "RollingUpdate".
  /// [type] Type of daemon set update. Can be "RollingUpdate" or "OnDelete". Default is OnDelete.
  DaemonSetUpdateStrategy({
    this.rollingUpdate,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rollingUpdate': ?rollingUpdate == null ? null : rollingUpdate!.toMap(),
      'type': ?type,
    };
  }

  factory DaemonSetUpdateStrategy.fromMap(Map<String, dynamic> map) {
    return DaemonSetUpdateStrategy(
      rollingUpdate: map['rollingUpdate'] == null ? null : RollingUpdateDaemonSet.fromMap((map['rollingUpdate'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

