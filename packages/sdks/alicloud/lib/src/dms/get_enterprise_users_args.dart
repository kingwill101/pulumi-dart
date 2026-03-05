// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dms_get_enterprise_users_get_enterprise_users_args_doc}
/// Arguments for getEnterpriseUsers.
/// {@endtemplate}
/// {@macro pulumi_dms_get_enterprise_users_get_enterprise_users_args_doc}
class GetEnterpriseUsersArgs {
  /// A list of DMS Enterprise User IDs (UID).
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter the results by the DMS Enterprise User nick_name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The role of the user to query.
  final pulumi.Input<String>? role;
  /// The keyword used to query users.
  final pulumi.Input<String>? searchKey;
  /// The status of the user.
  final pulumi.Input<String>? status;
  /// The ID of the tenant in DMS Enterprise.
  final pulumi.Input<int>? tid;

  /// Creates a new [GetEnterpriseUsersArgs].
  /// [ids] A list of DMS Enterprise User IDs (UID).
  /// [nameRegex] A regex string to filter the results by the DMS Enterprise User nick_name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [role] The role of the user to query.
  /// [searchKey] The keyword used to query users.
  /// [status] The status of the user.
  /// [tid] The ID of the tenant in DMS Enterprise.
  GetEnterpriseUsersArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.role,
    this.searchKey,
    this.status,
    this.tid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'role': ?role,
      'searchKey': ?searchKey,
      'status': ?status,
      'tid': ?tid,
    };
  }

  factory GetEnterpriseUsersArgs.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseUsersArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      searchKey: (() { final guardedValue = map['searchKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tid: (() { final guardedValue = map['tid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

