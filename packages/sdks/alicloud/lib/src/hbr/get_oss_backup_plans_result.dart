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
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      plans: pulumi.Input.decodeList<GetOssBackupPlansPlan>(map['plans']!, (value) => GetOssBackupPlansPlan.fromMap((value as Map).cast<String, dynamic>())),
      vaultId: (() { final guardedValue = map['vaultId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

