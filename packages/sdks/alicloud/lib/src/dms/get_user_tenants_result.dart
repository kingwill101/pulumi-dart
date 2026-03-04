// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_tenants_tenant.dart';

/// Result data returned by getUserTenants.
class GetUserTenantsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of DMS User Tenant IDs (UID).
  final List<String> ids;

  /// A list of DMS User Tenant names.
  final List<String> names;
  final String? outputFile;

  /// The status of the user tenant.
  final String? status;

  /// A list of DMS User Tenants. Each element contains the following attributes:
  final List<GetUserTenantsTenant> tenants;

  /// Creates a new [GetUserTenantsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of DMS User Tenant IDs (UID).
  /// [names] A list of DMS User Tenant names.
  /// [outputFile] Optional.
  /// [status] The status of the user tenant.
  /// [tenants] A list of DMS User Tenants. Each element contains the following attributes:
  GetUserTenantsResult({
    required this.id,
    required this.ids,
    required this.names,
    this.outputFile,
    this.status,
    required this.tenants,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
      'tenants':
          pulumi.Input.encodeList<GetUserTenantsTenant, Map<String, dynamic>>(
            tenants,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetUserTenantsResult.fromMap(Map<String, dynamic> map) {
    return GetUserTenantsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tenants: pulumi.Input.decodeList<GetUserTenantsTenant>(
        map['tenants']!,
        (value) => GetUserTenantsTenant.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
