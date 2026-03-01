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
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? role,
    String? searchKey,
    String? status,
    int? tid,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      role = pulumi.Input.asOptionalInput<String>(role),
      searchKey = pulumi.Input.asOptionalInput<String>(searchKey),
      status = pulumi.Input.asOptionalInput<String>(status),
      tid = pulumi.Input.asOptionalInput<int>(tid);

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
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      role: map['role'] == null ? null : map['role'] as String,
      searchKey: map['searchKey'] == null ? null : map['searchKey'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tid: map['tid'] == null ? null : map['tid'] as int,
    );
  }
}

