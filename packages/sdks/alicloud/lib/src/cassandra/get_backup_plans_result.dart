// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_plans_plan.dart';

/// Result data returned by getBackupPlans.
class GetBackupPlansResult {
  final String clusterId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final List<GetBackupPlansPlan> plans;

  /// Creates a new [GetBackupPlansResult].
  /// [clusterId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [plans] Required.
  const GetBackupPlansResult({
    required this.clusterId,
    required this.id,
    required this.ids,
    this.outputFile,
    required this.plans,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'plans': pulumi.Input.encodeList<GetBackupPlansPlan, Map<String, dynamic>>(plans, (value) => value.toMap()),
    };
  }

  factory GetBackupPlansResult.fromMap(Map<String, dynamic> map) {
    return GetBackupPlansResult(
      clusterId: map['clusterId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      plans: pulumi.Input.decodeList<GetBackupPlansPlan>(map['plans']!, (value) => GetBackupPlansPlan.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

