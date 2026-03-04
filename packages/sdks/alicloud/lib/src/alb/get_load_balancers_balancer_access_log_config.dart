// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancersBalancerAccessLogConfig {
  /// The log service that access logs are shipped to.
  final pulumi.Input<String> logProject;

  /// The logstore that access logs are shipped to.
  final pulumi.Input<String> logStore;

  /// Creates a new [GetLoadBalancersBalancerAccessLogConfig].
  /// [logProject] The log service that access logs are shipped to.
  /// [logStore] The logstore that access logs are shipped to.
  GetLoadBalancersBalancerAccessLogConfig({
    required this.logProject,
    required this.logStore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'logProject': logProject, 'logStore': logStore};
  }

  factory GetLoadBalancersBalancerAccessLogConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLoadBalancersBalancerAccessLogConfig(
      logProject: pulumi.Input.fromValue(map['logProject'] as String),
      logStore: pulumi.Input.fromValue(map['logStore'] as String),
    );
  }
}
