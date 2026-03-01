// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dms_get_user_tenants_get_user_tenants_args_doc}
/// Arguments for getUserTenants.
/// {@endtemplate}
/// {@macro pulumi_dms_get_user_tenants_get_user_tenants_args_doc}
class GetUserTenantsArgs {
  /// A list of DMS User Tenant IDs (TID).
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the user tenant.
  final pulumi.Input<String>? status;

  /// Creates a new [GetUserTenantsArgs].
  /// [ids] A list of DMS User Tenant IDs (TID).
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the user tenant.
  GetUserTenantsArgs({
    List<String>? ids,
    String? outputFile,
    String? status,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetUserTenantsArgs.fromMap(Map<String, dynamic> map) {
    return GetUserTenantsArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

