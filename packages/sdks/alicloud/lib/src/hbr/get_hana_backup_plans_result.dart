// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hana_backup_plans_plan.dart';

/// Result data returned by getHanaBackupPlans.
class GetHanaBackupPlansResult {
  final String clusterId;
  final String? databaseName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final List<GetHanaBackupPlansPlan> plans;
  final String? vaultId;

  /// Creates a new [GetHanaBackupPlansResult].
  /// [clusterId] Required.
  /// [databaseName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [plans] Required.
  /// [vaultId] Optional.
  GetHanaBackupPlansResult({
    required this.clusterId,
    this.databaseName,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    required this.plans,
    this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'databaseName': ?databaseName,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'plans': pulumi.Input.encodeList<GetHanaBackupPlansPlan, Map<String, dynamic>>(plans, (value) => value.toMap()),
      'vaultId': ?vaultId,
    };
  }

  factory GetHanaBackupPlansResult.fromMap(Map<String, dynamic> map) {
    return GetHanaBackupPlansResult(
      clusterId: map['clusterId'] as String,
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      plans: pulumi.Input.decodeList<GetHanaBackupPlansPlan>(map['plans']!, (value) => GetHanaBackupPlansPlan.fromMap((value as Map).cast<String, dynamic>())),
      vaultId: (() { final guardedValue = map['vaultId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

