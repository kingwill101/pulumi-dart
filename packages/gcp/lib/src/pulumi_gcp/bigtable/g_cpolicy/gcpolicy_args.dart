// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../gcpolicy_max_age/gcpolicy_max_age.dart';
import '../gcpolicy_max_version/gcpolicy_max_version.dart';

/// The set of arguments for GCPolicy.
class GCPolicyArgs {
  /// The name of the column family.
  final Input<String> columnFamily;

  /// The deletion policy for the GC policy.
  /// Setting ABANDON allows the resource to be abandoned rather than deleted. This is useful for GC policy as it cannot be deleted in a replicated instance.
  ///
  /// Possible values are: `ABANDON`.
  final Input<String>? deletionPolicy;

  /// Serialized JSON object to represent a more complex GC policy. Conflicts with `mode`, `max_age` and `max_version`. Conflicts with `mode`, `max_age` and `max_version`.
  final Input<String>? gcRules;

  /// Boolean for whether to allow ignoring warnings when updating the gc policy.
  /// Setting this to `true` allows relaxing the gc policy for replicated clusters by up to 90 days, but keep in mind this may increase how long clusters are inconsistent. Make sure
  /// you understand the risks listed at https://cloud.google.com/bigtable/docs/garbage-collection#increasing before setting this option.
  ///
  /// -----
  final Input<bool>? ignoreWarnings;

  /// The name of the Bigtable instance.
  final Input<String> instanceName;

  /// GC policy that applies to all cells older than the given age.
  final Input<GCPolicyMaxAge>? maxAge;

  /// GC policy that applies to all versions of a cell except for the most recent.
  final Input<List<GCPolicyMaxVersion>>? maxVersions;

  /// If multiple policies are set, you should choose between `UNION` OR `INTERSECTION`.
  final Input<String>? mode;

  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The name of the table.
  final Input<String> table;

  GCPolicyArgs({
    required this.columnFamily,
    this.deletionPolicy,
    this.gcRules,
    this.ignoreWarnings,
    required this.instanceName,
    this.maxAge,
    this.maxVersions,
    this.mode,
    this.project,
    required this.table,
  });

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
      map['maxAge'] =
          Input.mapOptionalInputValue<GCPolicyMaxAge, Map<String, dynamic>>(
              maxAgeValue, (value) => value.toMap());
    }
    final maxVersionsValue = maxVersions;
    if (maxVersionsValue != null) {
      map['maxVersions'] = Input.mapOptionalInputValue<List<GCPolicyMaxVersion>,
              List<Map<String, dynamic>>>(
          maxVersionsValue,
          (value) => Input.encodeList<GCPolicyMaxVersion, Map<String, dynamic>>(
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
      columnFamily: Input.asInput<String>(map['columnFamily']),
      deletionPolicy: Input.asOptionalInput<String>(map['deletionPolicy']),
      gcRules: Input.asOptionalInput<String>(map['gcRules']),
      ignoreWarnings: Input.asOptionalInput<bool>(map['ignoreWarnings']),
      instanceName: Input.asInput<String>(map['instanceName']),
      maxAge: Input.asOptionalInput<GCPolicyMaxAge>(map['maxAge']),
      maxVersions:
          Input.asOptionalInput<List<GCPolicyMaxVersion>>(map['maxVersions']),
      mode: Input.asOptionalInput<String>(map['mode']),
      project: Input.asOptionalInput<String>(map['project']),
      table: Input.asInput<String>(map['table']),
    );
  }
}
