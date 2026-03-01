// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_type_health_policy.dart';

/// Defines a health policy used to evaluate the health of an application or one of its children entities.
class ApplicationHealthPolicy {
  /// Indicates whether warnings are treated with the same severity as errors.
  final bool considerWarningAsError;
  /// The health policy used by default to evaluate the health of a service type.
  final ServiceTypeHealthPolicy? defaultServiceTypeHealthPolicy;
  /// The maximum allowed percentage of unhealthy deployed applications. Allowed values are Byte values from zero to 100.
  /// The percentage represents the maximum tolerated percentage of deployed applications that can be unhealthy before the application is considered in error.
  /// This is calculated by dividing the number of unhealthy deployed applications over the number of nodes where the application is currently deployed on in the cluster.
  /// The computation rounds up to tolerate one failure on small numbers of nodes. Default percentage is zero.
  final int maxPercentUnhealthyDeployedApplications;
  /// The map with service type health policy per service type name. The map is empty by default.
  final Map<String, ServiceTypeHealthPolicy>? serviceTypeHealthPolicyMap;

  /// Creates a new [ApplicationHealthPolicy].
  /// [considerWarningAsError] Indicates whether warnings are treated with the same severity as errors.
  /// [defaultServiceTypeHealthPolicy] The health policy used by default to evaluate the health of a service type.
  /// [maxPercentUnhealthyDeployedApplications] The maximum allowed percentage of unhealthy deployed applications. Allowed values are Byte values from zero to 100.
  /// [serviceTypeHealthPolicyMap] The map with service type health policy per service type name. The map is empty by default.
  ApplicationHealthPolicy({
    required this.considerWarningAsError,
    this.defaultServiceTypeHealthPolicy,
    required this.maxPercentUnhealthyDeployedApplications,
    this.serviceTypeHealthPolicyMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'considerWarningAsError': considerWarningAsError,
      'defaultServiceTypeHealthPolicy': ?defaultServiceTypeHealthPolicy == null ? null : defaultServiceTypeHealthPolicy!.toMap(),
      'maxPercentUnhealthyDeployedApplications': maxPercentUnhealthyDeployedApplications,
      'serviceTypeHealthPolicyMap': ?serviceTypeHealthPolicyMap == null ? null : pulumi.Input.encodeMapValues<ServiceTypeHealthPolicy, Map<String, dynamic>>(serviceTypeHealthPolicyMap!, (value) => value.toMap()),
    };
  }

  factory ApplicationHealthPolicy.fromMap(Map<String, dynamic> map) {
    return ApplicationHealthPolicy(
      considerWarningAsError: map['considerWarningAsError'] as bool,
      defaultServiceTypeHealthPolicy: map['defaultServiceTypeHealthPolicy'] == null ? null : ServiceTypeHealthPolicy.fromMap((map['defaultServiceTypeHealthPolicy'] as Map).cast<String, dynamic>()),
      maxPercentUnhealthyDeployedApplications: map['maxPercentUnhealthyDeployedApplications'] as int,
      serviceTypeHealthPolicyMap: map['serviceTypeHealthPolicyMap'] == null ? null : pulumi.Input.decodeMapValues<ServiceTypeHealthPolicy>(map['serviceTypeHealthPolicyMap'], (value) => ServiceTypeHealthPolicy.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

