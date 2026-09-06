// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_server_properties_response.dart';
import 'file_system_user_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCapacityPoolBucket.
class GetCapacityPoolBucketResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// File System user having access to volume data. For Unix, this is the user's uid and gid. For Windows, this is the user's username. Note that the Unix and Windows user details are mutually exclusive, meaning one or other must be supplied, but not both.
  final FileSystemUserResponse? fileSystemUser;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// The volume path mounted inside the bucket. The default is the root path '/' if no value is provided when the bucket is created.
  final String? path;
  /// Provisioning state of the resource
  final String? provisioningState;
  /// Properties of the server managing the lifecycle of volume buckets
  final BucketServerPropertiesResponse? server;
  /// The bucket credentials status. There states:
  ///
  /// "NoCredentialsSet": Access and Secret key pair have not been generated.
  /// "CredentialsExpired": Access and Secret key pair have expired.
  /// "Active": The certificate has been installed and credentials are unexpired.
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetCapacityPoolBucketResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [fileSystemUser] File System user having access to volume data. For Unix, this is the user's uid and gid. For Windows, this is the user's username. Note that the Unix and Windows user details are mutually exclusive, meaning one or other must be supplied, but not both.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [path] The volume path mounted inside the bucket. The default is the root path '/' if no value is provided when the bucket is created.
  /// [provisioningState] Provisioning state of the resource
  /// [server] Properties of the server managing the lifecycle of volume buckets
  /// [status] The bucket credentials status. There states:
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetCapacityPoolBucketResult({
    this.azureApiVersion,
    this.fileSystemUser,
    this.id,
    this.name,
    String? path,
    this.provisioningState,
    this.server,
    this.status,
    this.systemData,
    this.type,
  }) : path = path ?? '/';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'fileSystemUser': ?fileSystemUser?.toMap(),
      'id': ?id,
      'name': ?name,
      'path': ?path,
      'provisioningState': ?provisioningState,
      'server': ?server?.toMap(),
      'status': ?status,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetCapacityPoolBucketResult.fromMap(Map<String, dynamic> map) {
    return GetCapacityPoolBucketResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fileSystemUser: (() { final guardedValue = map['fileSystemUser']; if (guardedValue == null) return null; return FileSystemUserResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      server: (() { final guardedValue = map['server']; if (guardedValue == null) return null; return BucketServerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
