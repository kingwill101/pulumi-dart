// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerAccessLogConfig {
  /// The project to which the access log is shipped.
  final pulumi.Input<String>? logProject;
  /// The Logstore to which the access log is shipped.
  final pulumi.Input<String>? logStore;

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
      logProject: (() { final guardedValue = map['logProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logStore: (() { final guardedValue = map['logStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

