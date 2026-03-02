// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_oss_backup_plans_plan.dart';

/// Result data returned by getOssBackupPlans.
class GetOssBackupPlansResult {
  final String? bucket;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetOssBackupPlansPlan> plans;
  final String? vaultId;

  /// Creates a new [GetOssBackupPlansResult].
  /// [bucket] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [plans] Required.
  /// [vaultId] Optional.
  GetOssBackupPlansResult({
    this.bucket,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    required this.plans,
    this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'plans': pulumi.Input.encodeList<GetOssBackupPlansPlan, Map<String, dynamic>>(plans, (value) => value.toMap()),
      'vaultId': ?vaultId,
    };
  }

  factory GetOssBackupPlansResult.fromMap(Map<String, dynamic> map) {
    return GetOssBackupPlansResult(
      bucket: map['bucket'] == null ? null : map['bucket']! as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      plans: pulumi.Input.decodeList<GetOssBackupPlansPlan>(map['plans'], (value) => GetOssBackupPlansPlan.fromMap((value as Map).cast<String, dynamic>())),
      vaultId: map['vaultId'] == null ? null : map['vaultId']! as String,
    );
  }
}

