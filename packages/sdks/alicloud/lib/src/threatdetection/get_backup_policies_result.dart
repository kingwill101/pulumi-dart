// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_policies_policy.dart';

/// Result data returned by getBackupPolicies.
class GetBackupPoliciesResult {
  final int? currentPage;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? machineRemark;
  final String? name;
  final String? nameRegex;
  /// A list of Threat Detection Backup Policy names.
  final List<String> names;
  final String? outputFile;
  final int? pageSize;
  /// A list of Threat Detection Backup policies. Each element contains the following attributes:
  final List<GetBackupPoliciesPolicy> policies;
  /// The status of the anti-ransomware policy.
  final String? status;

  /// Creates a new [GetBackupPoliciesResult].
  /// [currentPage] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [machineRemark] Optional.
  /// [name] Optional.
  /// [nameRegex] Optional.
  /// [names] A list of Threat Detection Backup Policy names.
  /// [outputFile] Optional.
  /// [pageSize] Optional.
  /// [policies] A list of Threat Detection Backup policies. Each element contains the following attributes:
  /// [status] The status of the anti-ransomware policy.
  const GetBackupPoliciesResult({
    this.currentPage,
    required this.id,
    required this.ids,
    this.machineRemark,
    this.name,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageSize,
    required this.policies,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentPage': ?currentPage,
      'id': id,
      'ids': ids,
      'machineRemark': ?machineRemark,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageSize': ?pageSize,
      'policies': pulumi.Input.encodeList<GetBackupPoliciesPolicy, Map<String, dynamic>>(policies, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetBackupPoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetBackupPoliciesResult(
      currentPage: (() { final guardedValue = map['currentPage']; if (guardedValue == null) return null; return guardedValue as int; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      machineRemark: (() { final guardedValue = map['machineRemark']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return guardedValue as int; })(),
      policies: pulumi.Input.decodeList<GetBackupPoliciesPolicy>(map['policies']!, (value) => GetBackupPoliciesPolicy.fromMap((value as Map).cast<String, dynamic>())),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

