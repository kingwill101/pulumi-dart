// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_get_backup_policies_get_backup_policies_args_doc}
/// Arguments for getBackupPolicies.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_get_backup_policies_get_backup_policies_args_doc}
class GetBackupPoliciesArgs {
  final pulumi.Input<int>? currentPage;
  /// A list of Threat Detection Backup Policies IDs.
  final pulumi.Input<List<String>>? ids;
  /// The information that you want to use to identify the servers protected by the anti-ransomware policy. You can enter the IP address or ID of a server.
  final pulumi.Input<String>? machineRemark;
  /// The name of the anti-ransomware policy that you want to query.
  final pulumi.Input<String>? name;
  /// A regex string to filter results by Threat Detection Backup Policies name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageSize;
  /// The status of the anti-ransomware policy. Valid Value: `enabled`, `disabled`, `closed`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetBackupPoliciesArgs].
  /// [currentPage] Optional.
  /// [ids] A list of Threat Detection Backup Policies IDs.
  /// [machineRemark] The information that you want to use to identify the servers protected by the anti-ransomware policy. You can enter the IP address or ID of a server.
  /// [name] The name of the anti-ransomware policy that you want to query.
  /// [nameRegex] A regex string to filter results by Threat Detection Backup Policies name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageSize] Optional.
  /// [status] The status of the anti-ransomware policy. Valid Value: `enabled`, `disabled`, `closed`.
  GetBackupPoliciesArgs({
    pulumi.Output<int>? currentPage,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? machineRemark,
    pulumi.Output<String>? name,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? status,
  }) :
      currentPage = pulumi.Input.asOptionalInput<int>(currentPage),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      machineRemark = pulumi.Input.asOptionalInput<String>(machineRemark),
      name = pulumi.Input.asOptionalInput<String>(name),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentPage': ?currentPage,
      'ids': ?ids,
      'machineRemark': ?machineRemark,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageSize': ?pageSize,
      'status': ?status,
    };
  }

  factory GetBackupPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupPoliciesArgs(
      currentPage: map['currentPage'] == null ? null : pulumi.Output.create<int>(map['currentPage'] as int),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      machineRemark: map['machineRemark'] == null ? null : pulumi.Output.create<String>(map['machineRemark'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

