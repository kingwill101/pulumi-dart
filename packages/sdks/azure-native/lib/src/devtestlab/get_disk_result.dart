// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getDisk.
class GetDiskResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The creation date of the disk.
  final String? createdDate;
  /// When backed by a blob, the name of the VHD blob without extension.
  final String? diskBlobName;
  /// The size of the disk in Gibibytes.
  final int? diskSizeGiB;
  /// The storage type for the disk (i.e. Standard, Premium).
  final String? diskType;
  /// When backed by a blob, the URI of underlying blob.
  final String? diskUri;
  /// The host caching policy of the disk (i.e. None, ReadOnly, ReadWrite).
  final String? hostCaching;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The resource ID of the VM to which this disk is leased.
  final String? leasedByLabVmId;
  /// The geo-location where the resource lives
  final String? location;
  /// When backed by managed disk, this is the ID of the compute disk resource.
  final String? managedDiskId;
  /// The name of the resource
  final String? name;
  /// The provisioning status of the resource.
  final String? provisioningState;
  /// When backed by a blob, the storage account where the blob is.
  final String? storageAccountId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The unique immutable identifier of a resource (Guid).
  final String? uniqueIdentifier;

  /// Creates a new [GetDiskResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdDate] The creation date of the disk.
  /// [diskBlobName] When backed by a blob, the name of the VHD blob without extension.
  /// [diskSizeGiB] The size of the disk in Gibibytes.
  /// [diskType] The storage type for the disk (i.e. Standard, Premium).
  /// [diskUri] When backed by a blob, the URI of underlying blob.
  /// [hostCaching] The host caching policy of the disk (i.e. None, ReadOnly, ReadWrite).
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [leasedByLabVmId] The resource ID of the VM to which this disk is leased.
  /// [location] The geo-location where the resource lives
  /// [managedDiskId] When backed by managed disk, this is the ID of the compute disk resource.
  /// [name] The name of the resource
  /// [provisioningState] The provisioning status of the resource.
  /// [storageAccountId] When backed by a blob, the storage account where the blob is.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uniqueIdentifier] The unique immutable identifier of a resource (Guid).
  const GetDiskResult({
    this.azureApiVersion,
    this.createdDate,
    this.diskBlobName,
    this.diskSizeGiB,
    this.diskType,
    this.diskUri,
    this.hostCaching,
    this.id,
    this.leasedByLabVmId,
    this.location,
    this.managedDiskId,
    this.name,
    this.provisioningState,
    this.storageAccountId,
    this.systemData,
    this.tags,
    this.type,
    this.uniqueIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'createdDate': ?createdDate,
      'diskBlobName': ?diskBlobName,
      'diskSizeGiB': ?diskSizeGiB,
      'diskType': ?diskType,
      'diskUri': ?diskUri,
      'hostCaching': ?hostCaching,
      'id': ?id,
      'leasedByLabVmId': ?leasedByLabVmId,
      'location': ?location,
      'managedDiskId': ?managedDiskId,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'storageAccountId': ?storageAccountId,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'uniqueIdentifier': ?uniqueIdentifier,
    };
  }

  factory GetDiskResult.fromMap(Map<String, dynamic> map) {
    return GetDiskResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskBlobName: (() { final guardedValue = map['diskBlobName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskSizeGiB: (() { final guardedValue = map['diskSizeGiB']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskUri: (() { final guardedValue = map['diskUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostCaching: (() { final guardedValue = map['hostCaching']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      leasedByLabVmId: (() { final guardedValue = map['leasedByLabVmId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedDiskId: (() { final guardedValue = map['managedDiskId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uniqueIdentifier: (() { final guardedValue = map['uniqueIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
