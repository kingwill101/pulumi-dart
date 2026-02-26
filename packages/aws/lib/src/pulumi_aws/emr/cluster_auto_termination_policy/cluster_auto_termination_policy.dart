// ignore_for_file: unused_element, unnecessary_cast

class ClusterAutoTerminationPolicy {
  /// Specifies the amount of idle time in seconds after which the cluster automatically terminates. You can specify a minimum of <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span> seconds and a maximum of <span pulumi-lang-nodejs="`604800`" pulumi-lang-dotnet="`604800`" pulumi-lang-go="`604800`" pulumi-lang-python="`604800`" pulumi-lang-yaml="`604800`" pulumi-lang-java="`604800`">`604800`</span> seconds (seven days).
  final int? idleTimeout;

  ClusterAutoTerminationPolicy({
    this.idleTimeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idleTimeoutValue = idleTimeout;
    if (idleTimeoutValue != null) {
      map['idleTimeout'] = idleTimeoutValue;
    }
    return map;
  }

  factory ClusterAutoTerminationPolicy.fromMap(Map<String, dynamic> map) {
    return ClusterAutoTerminationPolicy(
      idleTimeout:
          map['idleTimeout'] == null ? null : map['idleTimeout'] as int,
    );
  }
}
