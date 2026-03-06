// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nas_backup_plans_plan.dart';

/// Result data returned by getNasBackupPlans.
class GetNasBackupPlansResult {
  final String? fileSystemId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final List<GetNasBackupPlansPlan> plans;
  final String? vaultId;

  /// Creates a new [GetNasBackupPlansResult].
  /// [fileSystemId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [plans] Required.
  /// [vaultId] Optional.
  const GetNasBackupPlansResult({
    this.fileSystemId,
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
      'fileSystemId': ?fileSystemId,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'plans': pulumi.Input.encodeList<GetNasBackupPlansPlan, Map<String, dynamic>>(plans, (value) => value.toMap()),
      'vaultId': ?vaultId,
    };
  }

  factory GetNasBackupPlansResult.fromMap(Map<String, dynamic> map) {
    return GetNasBackupPlansResult(
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      plans: pulumi.Input.decodeList<GetNasBackupPlansPlan>(map['plans']!, (value) => GetNasBackupPlansPlan.fromMap((value as Map).cast<String, dynamic>())),
      vaultId: (() { final guardedValue = map['vaultId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

