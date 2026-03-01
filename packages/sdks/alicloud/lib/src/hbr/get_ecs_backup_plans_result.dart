// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_backup_plans_plan.dart';

/// Result data returned by getEcsBackupPlans.
class GetEcsBackupPlansResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? instanceId;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetEcsBackupPlansPlan> plans;
  final String? vaultId;

  /// Creates a new [GetEcsBackupPlansResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [instanceId] Optional.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [plans] Required.
  /// [vaultId] Optional.
  GetEcsBackupPlansResult({
    required this.id,
    required this.ids,
    this.instanceId,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.plans,
    this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'instanceId': ?instanceId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'plans': pulumi.Input.encodeList<GetEcsBackupPlansPlan, Map<String, dynamic>>(plans, (value) => value.toMap()),
      'vaultId': ?vaultId,
    };
  }

  factory GetEcsBackupPlansResult.fromMap(Map<String, dynamic> map) {
    return GetEcsBackupPlansResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      plans: pulumi.Input.decodeList<GetEcsBackupPlansPlan>(map['plans'], (value) => GetEcsBackupPlansPlan.fromMap((value as Map).cast<String, dynamic>())),
      vaultId: map['vaultId'] == null ? null : map['vaultId'] as String,
    );
  }
}

