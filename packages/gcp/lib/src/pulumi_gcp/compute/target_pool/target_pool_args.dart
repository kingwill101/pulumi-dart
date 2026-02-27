// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for TargetPool.
class TargetPoolArgs {
  /// URL to the backup target pool. Must also set
  /// failover_ratio.
  final pulumi.Input<String>? backupPool;

  /// Textual description field.
  final pulumi.Input<String>? description;

  /// Ratio (0 to 1) of failed nodes before using the
  /// backup pool (which must also be set).
  final pulumi.Input<double>? failoverRatio;

  /// List of zero or one health check name or self_link. Only
  /// legacy `gcp.compute.HttpHealthCheck` is supported.
  final pulumi.Input<String>? healthChecks;

  /// List of instances in the pool. They can be given as
  /// URLs, or in the form of "zone/name". Note that the instances need not exist
  /// at the time of target pool creation, so there is no need to use the
  /// interpolation to create a dependency on the instances from the
  /// target pool.
  final pulumi.Input<List<String>>? instances;

  /// A unique name for the resource, required by GCE. Changing
  /// this forces a new resource to be created.
  ///
  /// - - -
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Where the target pool resides. Defaults to project
  /// region.
  final pulumi.Input<String>? region;

  /// The resource URL for the security policy associated with this target pool.
  final pulumi.Input<String>? securityPolicy;

  /// How to distribute load. Options are "NONE" (no
  /// affinity). "CLIENT_IP" (hash of the source/dest addresses / ports), and
  /// "CLIENT_IP_PROTO" also includes the protocol (default "NONE").
  final pulumi.Input<String>? sessionAffinity;

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
      backupPool: pulumi.Input.asOptionalInput<String>(map['backupPool']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      failoverRatio: pulumi.Input.asOptionalInput<double>(map['failoverRatio']),
      healthChecks: pulumi.Input.asOptionalInput<String>(map['healthChecks']),
      instances: pulumi.Input.asOptionalInput<List<String>>(map['instances']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      securityPolicy:
          pulumi.Input.asOptionalInput<String>(map['securityPolicy']),
      sessionAffinity:
          pulumi.Input.asOptionalInput<String>(map['sessionAffinity']),
    );
  }
}
