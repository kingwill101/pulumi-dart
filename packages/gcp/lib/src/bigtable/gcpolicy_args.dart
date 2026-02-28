// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcpolicy_max_age.dart';
import 'gcpolicy_max_version.dart';

/// {@template pulumi_bigtable_g_cpolicy_gcpolicy_args_doc}
/// The set of arguments for GCPolicy.
/// {@endtemplate}
/// {@macro pulumi_bigtable_g_cpolicy_gcpolicy_args_doc}
class GCPolicyArgs {
  /// The name of the column family.
  final pulumi.Input<String> columnFamily;

  /// The deletion policy for the GC policy.
  /// Setting ABANDON allows the resource to be abandoned rather than deleted. This is useful for GC policy as it cannot be deleted in a replicated instance.
  ///
  /// Possible values are: `ABANDON`.
  final pulumi.Input<String>? deletionPolicy;

  /// Serialized JSON object to represent a more complex GC policy. Conflicts with `mode`, `max_age` and `max_version`. Conflicts with `mode`, `max_age` and `max_version`.
  final pulumi.Input<String>? gcRules;

  /// Boolean for whether to allow ignoring warnings when updating the gc policy.
  /// Setting this to `true` allows relaxing the gc policy for replicated clusters by up to 90 days, but keep in mind this may increase how long clusters are inconsistent. Make sure
  /// you understand the risks listed at https://cloud.google.com/bigtable/docs/garbage-collection#increasing before setting this option.
  ///
  /// -----
  final pulumi.Input<bool>? ignoreWarnings;

  /// The name of the Bigtable instance.
  final pulumi.Input<String> instanceName;

  /// GC policy that applies to all cells older than the given age.
  final pulumi.Input<GCPolicyMaxAge>? maxAge;

  /// GC policy that applies to all versions of a cell except for the most recent.
  final pulumi.Input<List<GCPolicyMaxVersion>>? maxVersions;

  /// If multiple policies are set, you should choose between `UNION` OR `INTERSECTION`.
  final pulumi.Input<String>? mode;

  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The name of the table.
  final pulumi.Input<String> table;

  /// Creates a new [GCPolicyArgs].
  /// [columnFamily] The name of the column family.
  /// [deletionPolicy] The deletion policy for the GC policy.
  /// [gcRules] Serialized JSON object to represent a more complex GC policy. Conflicts with `mode`, `max_age` and `max_version`. Conflicts with `mode`, `max_age` and `max_version`.
  /// [ignoreWarnings] Boolean for whether to allow ignoring warnings when updating the gc policy.
  /// [instanceName] The name of the Bigtable instance.
  /// [maxAge] GC policy that applies to all cells older than the given age.
  /// [maxVersions] GC policy that applies to all versions of a cell except for the most recent.
  /// [mode] If multiple policies are set, you should choose between `UNION` OR `INTERSECTION`.
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  /// [table] The name of the table.
  GCPolicyArgs({
    required String columnFamily,
    String? deletionPolicy,
    String? gcRules,
    bool? ignoreWarnings,
    required String instanceName,
    GCPolicyMaxAge? maxAge,
    List<GCPolicyMaxVersion>? maxVersions,
    String? mode,
    String? project,
    required String table,
  })  : columnFamily = pulumi.Input.asInput<String>(columnFamily),
        deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
        gcRules = pulumi.Input.asOptionalInput<String>(gcRules),
        ignoreWarnings = pulumi.Input.asOptionalInput<bool>(ignoreWarnings),
        instanceName = pulumi.Input.asInput<String>(instanceName),
        maxAge = pulumi.Input.asOptionalInput<GCPolicyMaxAge>(maxAge),
        maxVersions =
            pulumi.Input.asOptionalInput<List<GCPolicyMaxVersion>>(maxVersions),
        mode = pulumi.Input.asOptionalInput<String>(mode),
        project = pulumi.Input.asOptionalInput<String>(project),
        table = pulumi.Input.asInput<String>(table);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['columnFamily'] = columnFamily;
    final deletionPolicyValue = deletionPolicy;
    if (deletionPolicyValue != null) {
      map['deletionPolicy'] = deletionPolicyValue;
    }
    final gcRulesValue = gcRules;
    if (gcRulesValue != null) {
      map['gcRules'] = gcRulesValue;
    }
    final ignoreWarningsValue = ignoreWarnings;
    if (ignoreWarningsValue != null) {
      map['ignoreWarnings'] = ignoreWarningsValue;
    }
    map['instanceName'] = instanceName;
    final maxAgeValue = maxAge;
    if (maxAgeValue != null) {
      map['maxAge'] = pulumi.Input.mapOptionalInputValue<GCPolicyMaxAge,
          Map<String, dynamic>>(maxAgeValue, (value) => value.toMap());
    }
    final maxVersionsValue = maxVersions;
    if (maxVersionsValue != null) {
      map['maxVersions'] = pulumi.Input.mapOptionalInputValue<
              List<GCPolicyMaxVersion>, List<Map<String, dynamic>>>(
          maxVersionsValue,
          (value) =>
              pulumi.Input.encodeList<GCPolicyMaxVersion, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['table'] = table;
    return map;
  }

  factory GCPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GCPolicyArgs(
      columnFamily: map['columnFamily'] as String,
      deletionPolicy: map['deletionPolicy'] == null
          ? null
          : map['deletionPolicy'] as String,
      gcRules: map['gcRules'] == null ? null : map['gcRules'] as String,
      ignoreWarnings:
          map['ignoreWarnings'] == null ? null : map['ignoreWarnings'] as bool,
      instanceName: map['instanceName'] as String,
      maxAge: map['maxAge'] == null
          ? null
          : GCPolicyMaxAge.fromMap(
              (map['maxAge'] as Map).cast<String, dynamic>()),
      maxVersions: map['maxVersions'] == null
          ? null
          : pulumi.Input.decodeList<GCPolicyMaxVersion>(
              map['maxVersions'],
              (value) => GCPolicyMaxVersion.fromMap(
                  (value as Map).cast<String, dynamic>())),
      mode: map['mode'] == null ? null : map['mode'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      table: map['table'] as String,
    );
  }
}
