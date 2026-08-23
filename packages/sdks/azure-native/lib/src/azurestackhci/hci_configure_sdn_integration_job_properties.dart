// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties for configuring SDN integration intent for the cluster.
class HciConfigureSdnIntegrationJobProperties {
  /// Deployment mode to trigger job.
  final pulumi.Input<String>? deploymentMode;
  /// ClusterJob Type supported.
  /// Expected value is 'ConfigureSdnIntegration'.
  final pulumi.Input<String> jobType;
  /// Defines the customer's intent for configuring SDN integration
  final pulumi.Input<String> sdnIntegrationIntent;
  /// A string identifier used to construct the Network Controller (NC) REST resource name. This prefix helps group and distinguish SDN-managed network components and must follow specific formatting rules.
  final pulumi.Input<String>? sdnPrefix;

  /// Creates a new [HciConfigureSdnIntegrationJobProperties].
  /// [deploymentMode] Deployment mode to trigger job.
  /// [jobType] ClusterJob Type supported.
  /// [sdnIntegrationIntent] Defines the customer's intent for configuring SDN integration
  /// [sdnPrefix] A string identifier used to construct the Network Controller (NC) REST resource name. This prefix helps group and distinguish SDN-managed network components and must follow specific formatting rules.
  const HciConfigureSdnIntegrationJobProperties({
    this.deploymentMode,
    required this.jobType,
    required this.sdnIntegrationIntent,
    this.sdnPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentMode': ?deploymentMode,
      'jobType': jobType,
      'sdnIntegrationIntent': sdnIntegrationIntent,
      'sdnPrefix': ?sdnPrefix,
    };
  }

  factory HciConfigureSdnIntegrationJobProperties.fromMap(Map<String, dynamic> map) {
    return HciConfigureSdnIntegrationJobProperties(
      deploymentMode: (() { final guardedValue = map['deploymentMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobType: pulumi.Input.fromValue(map['jobType'] as String),
      sdnIntegrationIntent: pulumi.Input.fromValue(map['sdnIntegrationIntent'] as String),
      sdnPrefix: (() { final guardedValue = map['sdnPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
