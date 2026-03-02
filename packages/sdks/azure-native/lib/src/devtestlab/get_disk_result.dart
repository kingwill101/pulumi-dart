// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDisk.
class GetDiskResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The creation date of the disk.
  final String createdDate;
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
  /// The identifier of the resource.
  final String id;
  /// The resource ID of the VM to which this disk is leased.
  final String? leasedByLabVmId;
  /// The location of the resource.
  final String? location;
  /// When backed by managed disk, this is the ID of the compute disk resource.
  final String? managedDiskId;
  /// The name of the resource.
  final String name;
  /// The provisioning status of the resource.
  final String provisioningState;
  /// When backed by a blob, the storage account where the blob is.
  final String? storageAccountId;
  /// The tags of the resource.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String type;
  /// The unique immutable identifier of a resource (Guid).
  final String uniqueIdentifier;

  /// Creates a new [GetDiskResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdDate] The creation date of the disk.
  /// [diskBlobName] When backed by a blob, the name of the VHD blob without extension.
  /// [diskSizeGiB] The size of the disk in Gibibytes.
  /// [diskType] The storage type for the disk (i.e. Standard, Premium).
  /// [diskUri] When backed by a blob, the URI of underlying blob.
  /// [hostCaching] The host caching policy of the disk (i.e. None, ReadOnly, ReadWrite).
  /// [id] The identifier of the resource.
  /// [leasedByLabVmId] The resource ID of the VM to which this disk is leased.
  /// [location] The location of the resource.
  /// [managedDiskId] When backed by managed disk, this is the ID of the compute disk resource.
  /// [name] The name of the resource.
  /// [provisioningState] The provisioning status of the resource.
  /// [storageAccountId] When backed by a blob, the storage account where the blob is.
  /// [tags] The tags of the resource.
  /// [type] The type of the resource.
  /// [uniqueIdentifier] The unique immutable identifier of a resource (Guid).
  GetDiskResult({
    required this.azureApiVersion,
    required this.createdDate,
    this.diskBlobName,
    this.diskSizeGiB,
    this.diskType,
    this.diskUri,
    this.hostCaching,
    required this.id,
    this.leasedByLabVmId,
    this.location,
    this.managedDiskId,
    required this.name,
    required this.provisioningState,
    this.storageAccountId,
    this.tags,
    required this.type,
    required this.uniqueIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdDate': createdDate,
      'diskBlobName': ?diskBlobName,
      'diskSizeGiB': ?diskSizeGiB,
      'diskType': ?diskType,
      'diskUri': ?diskUri,
      'hostCaching': ?hostCaching,
      'id': id,
      'leasedByLabVmId': ?leasedByLabVmId,
      'location': ?location,
      'managedDiskId': ?managedDiskId,
      'name': name,
      'provisioningState': provisioningState,
      'storageAccountId': ?storageAccountId,
      'tags': ?tags,
      'type': type,
      'uniqueIdentifier': uniqueIdentifier,
    };
  }

  factory GetDiskResult.fromMap(Map<String, dynamic> map) {
    return GetDiskResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdDate: map['createdDate'] as String,
      diskBlobName: map['diskBlobName'] == null ? null : map['diskBlobName']! as String,
      diskSizeGiB: map['diskSizeGiB'] == null ? null : map['diskSizeGiB']! as int,
      diskType: map['diskType'] == null ? null : map['diskType']! as String,
      diskUri: map['diskUri'] == null ? null : map['diskUri']! as String,
      hostCaching: map['hostCaching'] == null ? null : map['hostCaching']! as String,
      id: map['id'] as String,
      leasedByLabVmId: map['leasedByLabVmId'] == null ? null : map['leasedByLabVmId']! as String,
      location: map['location'] == null ? null : map['location']! as String,
      managedDiskId: map['managedDiskId'] == null ? null : map['managedDiskId']! as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      storageAccountId: map['storageAccountId'] == null ? null : map['storageAccountId']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      uniqueIdentifier: map['uniqueIdentifier'] as String,
    );
  }
}

