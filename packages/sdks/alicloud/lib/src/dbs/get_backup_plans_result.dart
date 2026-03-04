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
      'plans':
          pulumi.Input.encodeList<GetBackupPlansPlan, Map<String, dynamic>>(
            plans,
            (value) => value.toMap(),
          ),
      'status': ?status,
    };
  }

  factory GetBackupPlansResult.fromMap(Map<String, dynamic> map) {
    return GetBackupPlansResult(
      backupPlanName: (() {
        final guardedValue = map['backupPlanName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      pageNumber: (() {
        final guardedValue = map['pageNumber'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      pageSize: (() {
        final guardedValue = map['pageSize'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      plans: pulumi.Input.decodeList<GetBackupPlansPlan>(
        map['plans']!,
        (value) =>
            GetBackupPlansPlan.fromMap((value as Map).cast<String, dynamic>()),
      ),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
