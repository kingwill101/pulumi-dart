// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for TargetPool.
class TargetPoolArgs {
  /// URL to the backup target pool. Must also set
  /// failover_ratio.
  final Input<String>? backupPool;

  /// Textual description field.
  final Input<String>? description;

  /// Ratio (0 to 1) of failed nodes before using the
  /// backup pool (which must also be set).
  final Input<double>? failoverRatio;

  /// List of zero or one health check name or self_link. Only
  /// legacy `gcp.compute.HttpHealthCheck` is supported.
  final Input<String>? healthChecks;

  /// List of instances in the pool. They can be given as
  /// URLs, or in the form of "zone/name". Note that the instances need not exist
  /// at the time of target pool creation, so there is no need to use the
  /// interpolation to create a dependency on the instances from the
  /// target pool.
  final Input<List<String>>? instances;

  /// A unique name for the resource, required by GCE. Changing
  /// this forces a new resource to be created.
  ///
  /// - - -
  final Input<String>? name;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  /// Where the target pool resides. Defaults to project
  /// region.
  final Input<String>? region;

  /// The resource URL for the security policy associated with this target pool.
  final Input<String>? securityPolicy;

  /// How to distribute load. Options are "NONE" (no
  /// affinity). "CLIENT_IP" (hash of the source/dest addresses / ports), and
  /// "CLIENT_IP_PROTO" also includes the protocol (default "NONE").
  final Input<String>? sessionAffinity;

  TargetPoolArgs({
    this.backupPool,
    this.description,
    this.failoverRatio,
    this.healthChecks,
    this.instances,
    this.name,
    this.project,
    this.region,
    this.securityPolicy,
    this.sessionAffinity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backupPoolValue = backupPool;
    if (backupPoolValue != null) {
      map['backupPool'] = backupPoolValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final failoverRatioValue = failoverRatio;
    if (failoverRatioValue != null) {
      map['failoverRatio'] = failoverRatioValue;
    }
    final healthChecksValue = healthChecks;
    if (healthChecksValue != null) {
      map['healthChecks'] = healthChecksValue;
    }
    final instancesValue = instances;
    if (instancesValue != null) {
      map['instances'] = instancesValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityPolicyValue = securityPolicy;
    if (securityPolicyValue != null) {
      map['securityPolicy'] = securityPolicyValue;
    }
    final sessionAffinityValue = sessionAffinity;
    if (sessionAffinityValue != null) {
      map['sessionAffinity'] = sessionAffinityValue;
    }
    return map;
  }

  factory TargetPoolArgs.fromMap(Map<String, dynamic> map) {
    return TargetPoolArgs(
      backupPool: Input.asOptionalInput<String>(map['backupPool']),
      description: Input.asOptionalInput<String>(map['description']),
      failoverRatio: Input.asOptionalInput<double>(map['failoverRatio']),
      healthChecks: Input.asOptionalInput<String>(map['healthChecks']),
      instances: Input.asOptionalInput<List<String>>(map['instances']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      securityPolicy: Input.asOptionalInput<String>(map['securityPolicy']),
      sessionAffinity: Input.asOptionalInput<String>(map['sessionAffinity']),
    );
  }
}
