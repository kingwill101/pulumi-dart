// ignore_for_file: unused_element, unnecessary_cast

class ClusterClusterConfigInitializationAction {
  /// The script to be executed during initialization of the cluster.
  /// The script must be a GCS file with a gs:// prefix.
  final String script;

  /// The maximum duration (in seconds) which <span pulumi-lang-nodejs="`script`" pulumi-lang-dotnet="`Script`" pulumi-lang-go="`script`" pulumi-lang-python="`script`" pulumi-lang-yaml="`script`" pulumi-lang-java="`script`">`script`</span> is
  /// allowed to take to execute its action. GCP will default to a predetermined
  /// computed value if not set (currently 300).
  ///
  /// - - -
  final int? timeoutSec;

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
