// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ots_backup_plans_plan.dart';

/// Result data returned by getOtsBackupPlans.
class GetOtsBackupPlansResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final String? planId;
  final String? planName;
  final List<GetOtsBackupPlansPlan> plans;
  final String? vaultId;

  /// Creates a new [GetOtsBackupPlansResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [planId] Optional.
  /// [planName] Optional.
  /// [plans] Required.
  /// [vaultId] Optional.
  GetOtsBackupPlansResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.planId,
    this.planName,
    required this.plans,
    this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'planId': ?planId,
      'planName': ?planName,
      'plans': pulumi.Input.encodeList<GetOtsBackupPlansPlan, Map<String, dynamic>>(plans, (value) => value.toMap()),
      'vaultId': ?vaultId,
    };
  }

  factory GetOtsBackupPlansResult.fromMap(Map<String, dynamic> map) {
    return GetOtsBackupPlansResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      planId: map['planId'] == null ? null : map['planId'] as String,
      planName: map['planName'] == null ? null : map['planName'] as String,
      plans: pulumi.Input.decodeList<GetOtsBackupPlansPlan>(map['plans'], (value) => GetOtsBackupPlansPlan.fromMap((value as Map).cast<String, dynamic>())),
      vaultId: map['vaultId'] == null ? null : map['vaultId'] as String,
    );
  }
}

