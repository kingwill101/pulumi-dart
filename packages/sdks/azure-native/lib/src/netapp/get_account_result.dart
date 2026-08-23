// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_encryption_response.dart';
import 'active_directory_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAccount.
class GetAccountResult {
  /// Active Directories
  final List<ActiveDirectoryResponse>? activeDirectories;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Shows the status of disableShowmount for all volumes under the subscription, null equals false
  final bool disableShowmount;
  /// Encryption settings
  final AccountEncryptionResponse? encryption;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The identity used for the resource.
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Azure lifecycle management
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetAccountResult].
  /// [activeDirectories] Active Directories
  /// [azureApiVersion] The Azure API version of the resource.
  /// [disableShowmount] Shows the status of disableShowmount for all volumes under the subscription, null equals false
  /// [encryption] Encryption settings
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The identity used for the resource.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [provisioningState] Azure lifecycle management
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAccountResult({
    this.activeDirectories,
    required this.azureApiVersion,
    required this.disableShowmount,
    this.encryption,
    required this.etag,
    required this.id,
    this.identity,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectories': ?(() { final guardedValue = activeDirectories; if (guardedValue == null) return null; return pulumi.Input.encodeList<ActiveDirectoryResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': azureApiVersion,
      'disableShowmount': disableShowmount,
      'encryption': ?encryption?.toMap(),
      'etag': etag,
      'id': id,
      'identity': ?identity?.toMap(),
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      activeDirectories: (() { final guardedValue = map['activeDirectories']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ActiveDirectoryResponse>(guardedValue, (value) => ActiveDirectoryResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      disableShowmount: map['disableShowmount'] as bool,
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return AccountEncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: map['etag'] as String,
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
