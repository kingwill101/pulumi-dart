// ignore_for_file: unused_element, unnecessary_cast


class GetLoadBalancersBalancerAccessLogConfig {
  /// The log service that access logs are shipped to.
  final String logProject;
  /// The logstore that access logs are shipped to.
  final String logStore;

  /// Creates a new [GetLoadBalancersBalancerAccessLogConfig].
  /// [logProject] The log service that access logs are shipped to.
  /// [logStore] The logstore that access logs are shipped to.
  GetLoadBalancersBalancerAccessLogConfig({
    required this.logProject,
    required this.logStore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logProject': logProject,
      'logStore': logStore,
    };
  }

  factory GetLoadBalancersBalancerAccessLogConfig.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancersBalancerAccessLogConfig(
      logProject: map['logProject'] as String,
      logStore: map['logStore'] as String,
    );
  }
}

