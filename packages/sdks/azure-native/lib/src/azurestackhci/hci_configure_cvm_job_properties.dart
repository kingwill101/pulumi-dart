// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the customer's intent for updating confidential VM properties
class HciConfigureCvmJobProperties {
  /// Defines the customer's intent for updating confidential VM properties
  final pulumi.Input<String> confidentialVmIntent;
  /// Deployment mode to trigger job.
  final pulumi.Input<String>? deploymentMode;
  /// ClusterJob Type supported.
  /// Expected value is 'ConfigureCVM'.
  final pulumi.Input<String> jobType;

  /// Creates a new [HciConfigureCvmJobProperties].
  /// [confidentialVmIntent] Defines the customer's intent for updating confidential VM properties
  /// [deploymentMode] Deployment mode to trigger job.
  /// [jobType] ClusterJob Type supported.
  const HciConfigureCvmJobProperties({
    required this.confidentialVmIntent,
    this.deploymentMode,
    required this.jobType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialVmIntent': confidentialVmIntent,
      'deploymentMode': ?deploymentMode,
      'jobType': jobType,
    };
  }

  factory HciConfigureCvmJobProperties.fromMap(Map<String, dynamic> map) {
    return HciConfigureCvmJobProperties(
      confidentialVmIntent: pulumi.Input.fromValue(map['confidentialVmIntent'] as String),
      deploymentMode: (() { final guardedValue = map['deploymentMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobType: pulumi.Input.fromValue(map['jobType'] as String),
    );
  }
}
