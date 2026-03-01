// ignore_for_file: unused_element, unnecessary_cast


class LoadBalancerAccessLogConfig {
  /// The project to which the access log is shipped.
  final String? logProject;
  /// The Logstore to which the access log is shipped.
  final String? logStore;

  /// Creates a new [LoadBalancerAccessLogConfig].
  /// [logProject] The project to which the access log is shipped.
  /// [logStore] The Logstore to which the access log is shipped.
  LoadBalancerAccessLogConfig({
    this.logProject,
    this.logStore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logProject': ?logProject,
      'logStore': ?logStore,
    };
  }

  factory LoadBalancerAccessLogConfig.fromMap(Map<String, dynamic> map) {
    return LoadBalancerAccessLogConfig(
      logProject: map['logProject'] == null ? null : map['logProject'] as String,
      logStore: map['logStore'] == null ? null : map['logStore'] as String,
    );
  }
}

