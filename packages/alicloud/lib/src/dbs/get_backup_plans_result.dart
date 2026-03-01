// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_plans_plan.dart';

/// Result data returned by getBackupPlans.
class GetBackupPlansResult {
  final String? backupPlanName;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final List<GetBackupPlansPlan> plans;
  final String? status;

  /// Creates a new [GetBackupPlansResult].
  /// [backupPlanName] Optional.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [plans] Required.
  /// [status] Optional.
  GetBackupPlansResult({
    this.backupPlanName,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    required this.plans,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPlanName': ?backupPlanName,
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'plans': pulumi.Input.encodeList<GetBackupPlansPlan, Map<String, dynamic>>(plans, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetBackupPlansResult.fromMap(Map<String, dynamic> map) {
    return GetBackupPlansResult(
      backupPlanName: map['backupPlanName'] == null ? null : map['backupPlanName'] as String,
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      plans: pulumi.Input.decodeList<GetBackupPlansPlan>(map['plans'], (value) => GetBackupPlansPlan.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

