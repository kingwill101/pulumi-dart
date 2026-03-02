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
      databaseName: map['databaseName'] == null ? null : map['databaseName']! as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
      plans: pulumi.Input.decodeList<GetHanaBackupPlansPlan>(map['plans'], (value) => GetHanaBackupPlansPlan.fromMap((value as Map).cast<String, dynamic>())),
      vaultId: map['vaultId'] == null ? null : map['vaultId']! as String,
    );
  }
}

