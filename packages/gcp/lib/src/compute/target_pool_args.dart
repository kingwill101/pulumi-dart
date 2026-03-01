// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_target_pool_target_pool_args_doc}
/// The set of arguments for TargetPool.
/// {@endtemplate}
/// {@macro pulumi_compute_target_pool_target_pool_args_doc}
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

  /// Creates a new [TargetPoolArgs].
  /// [backupPool] URL to the backup target pool. Must also set
  /// [description] Textual description field.
  /// [failoverRatio] Ratio (0 to 1) of failed nodes before using the
  /// [healthChecks] List of zero or one health check name or self_link. Only
  /// [instances] List of instances in the pool. They can be given as
  /// [name] A unique name for the resource, required by GCE. Changing
  /// [project] The ID of the project in which the resource belongs. If it
  /// [region] Where the target pool resides. Defaults to project
  /// [securityPolicy] The resource URL for the security policy associated with this target pool.
  /// [sessionAffinity] How to distribute load. Options are "NONE" (no
  TargetPoolArgs({
    String? backupPool,
    String? description,
    double? failoverRatio,
    String? healthChecks,
    List<String>? instances,
    String? name,
    String? project,
    String? region,
    String? securityPolicy,
    String? sessionAffinity,
  }) : backupPool = pulumi.Input.asOptionalInput<String>(backupPool),
       description = pulumi.Input.asOptionalInput<String>(description),
       failoverRatio = pulumi.Input.asOptionalInput<double>(failoverRatio),
       healthChecks = pulumi.Input.asOptionalInput<String>(healthChecks),
       instances = pulumi.Input.asOptionalInput<List<String>>(instances),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asOptionalInput<String>(region),
       securityPolicy = pulumi.Input.asOptionalInput<String>(securityPolicy),
       sessionAffinity = pulumi.Input.asOptionalInput<String>(sessionAffinity);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPool': ?backupPool,
      'description': ?description,
      'failoverRatio': ?failoverRatio,
      'healthChecks': ?healthChecks,
      'instances': ?instances,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'securityPolicy': ?securityPolicy,
      'sessionAffinity': ?sessionAffinity,
    };
  }

  factory TargetPoolArgs.fromMap(Map<String, dynamic> map) {
    return TargetPoolArgs(
      backupPool: map['backupPool'] == null
          ? null
          : map['backupPool'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      failoverRatio: map['failoverRatio'] == null
          ? null
          : map['failoverRatio'] as double,
      healthChecks: map['healthChecks'] == null
          ? null
          : map['healthChecks'] as String,
      instances: map['instances'] == null
          ? null
          : (map['instances'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      securityPolicy: map['securityPolicy'] == null
          ? null
          : map['securityPolicy'] as String,
      sessionAffinity: map['sessionAffinity'] == null
          ? null
          : map['sessionAffinity'] as String,
    );
  }
}
