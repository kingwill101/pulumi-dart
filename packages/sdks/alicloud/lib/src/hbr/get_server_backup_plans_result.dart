// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_backup_plans_filter.dart';
import 'get_server_backup_plans_plan.dart';

/// Result data returned by getServerBackupPlans.
class GetServerBackupPlansResult {
  final List<GetServerBackupPlansFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final List<GetServerBackupPlansPlan> plans;

  /// Creates a new [GetServerBackupPlansResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [plans] Required.
  GetServerBackupPlansResult({
    this.filters,
    required this.id,
    required this.ids,
    this.outputFile,
    required this.plans,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetServerBackupPlansFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'plans': pulumi.Input.encodeList<GetServerBackupPlansPlan, Map<String, dynamic>>(plans, (value) => value.toMap()),
    };
  }

  factory GetServerBackupPlansResult.fromMap(Map<String, dynamic> map) {
    return GetServerBackupPlansResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetServerBackupPlansFilter>(map['filters']!, (value) => GetServerBackupPlansFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      plans: pulumi.Input.decodeList<GetServerBackupPlansPlan>(map['plans'], (value) => GetServerBackupPlansPlan.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

