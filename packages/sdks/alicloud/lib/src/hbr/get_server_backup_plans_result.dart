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
  const GetServerBackupPlansResult({
    this.filters,
    required this.id,
    required this.ids,
    this.outputFile,
    required this.plans,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServerBackupPlansFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'plans': pulumi.Input.encodeList<GetServerBackupPlansPlan, Map<String, dynamic>>(plans, (value) => value.toMap()),
    };
  }

  factory GetServerBackupPlansResult.fromMap(Map<String, dynamic> map) {
    return GetServerBackupPlansResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServerBackupPlansFilter>(guardedValue, (value) => GetServerBackupPlansFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      plans: pulumi.Input.decodeList<GetServerBackupPlansPlan>(map['plans']!, (value) => GetServerBackupPlansPlan.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

