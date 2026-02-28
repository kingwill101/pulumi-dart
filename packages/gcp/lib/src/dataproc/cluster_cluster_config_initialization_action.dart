// ignore_for_file: unused_element, unnecessary_cast

class ClusterClusterConfigInitializationAction {
  /// The script to be executed during initialization of the cluster.
  /// The script must be a GCS file with a gs:// prefix.
  final String script;

  /// The maximum duration (in seconds) which `script` is
  /// allowed to take to execute its action. GCP will default to a predetermined
  /// computed value if not set (currently 300).
  ///
  /// - - -
  final int? timeoutSec;

  /// Creates a new [ClusterClusterConfigInitializationAction].
  /// [script] The script to be executed during initialization of the cluster.
  /// [timeoutSec] The maximum duration (in seconds) which `script` is
  ClusterClusterConfigInitializationAction({
    required this.script,
    this.timeoutSec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['script'] = script;
    final timeoutSecValue = timeoutSec;
    if (timeoutSecValue != null) {
      map['timeoutSec'] = timeoutSecValue;
    }
    return map;
  }

  factory ClusterClusterConfigInitializationAction.fromMap(
      Map<String, dynamic> map) {
    return ClusterClusterConfigInitializationAction(
      script: map['script'] as String,
      timeoutSec: map['timeoutSec'] == null ? null : map['timeoutSec'] as int,
    );
  }
}
