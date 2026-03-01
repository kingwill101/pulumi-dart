// ignore_for_file: unused_element, unnecessary_cast

import 'creation_data_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSnapshot.
class GetSnapshotResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// CreationData to be used to specify the source agent pool resource ID to create this snapshot.
  final CreationDataResponse? creationData;
  /// Whether to use a FIPS-enabled OS.
  final bool enableFIPS;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The version of Kubernetes.
  final String kubernetesVersion;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// The version of node image.
  final String nodeImageVersion;
  /// Specifies the OS SKU used by the agent pool. The default is Ubuntu if OSType is Linux. The default is Windows2019 when Kubernetes <= 1.24 or Windows2022 when Kubernetes >= 1.25 if OSType is Windows.
  final String osSku;
  /// The operating system type. The default is Linux.
  final String osType;
  /// The type of a snapshot. The default is NodePool.
  final String? snapshotType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The size of the VM.
  final String vmSize;

  /// Creates a new [GetSnapshotResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationData] CreationData to be used to specify the source agent pool resource ID to create this snapshot.
  /// [enableFIPS] Whether to use a FIPS-enabled OS.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kubernetesVersion] The version of Kubernetes.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [nodeImageVersion] The version of node image.
  /// [osSku] Specifies the OS SKU used by the agent pool. The default is Ubuntu if OSType is Linux. The default is Windows2019 when Kubernetes <= 1.24 or Windows2022 when Kubernetes >= 1.25 if OSType is Windows.
  /// [osType] The operating system type. The default is Linux.
  /// [snapshotType] The type of a snapshot. The default is NodePool.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [vmSize] The size of the VM.
  GetSnapshotResult({
    required this.azureApiVersion,
    this.creationData,
    required this.enableFIPS,
    required this.id,
    required this.kubernetesVersion,
    required this.location,
    required this.name,
    required this.nodeImageVersion,
    required this.osSku,
    required this.osType,
    this.snapshotType,
    required this.systemData,
    this.tags,
    required this.type,
    required this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'creationData': ?creationData == null ? null : creationData!.toMap(),
      'enableFIPS': enableFIPS,
      'id': id,
      'kubernetesVersion': kubernetesVersion,
      'location': location,
      'name': name,
      'nodeImageVersion': nodeImageVersion,
      'osSku': osSku,
      'osType': osType,
      'snapshotType': ?snapshotType,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'vmSize': vmSize,
    };
  }

  factory GetSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creationData: map['creationData'] == null ? null : CreationDataResponse.fromMap((map['creationData'] as Map).cast<String, dynamic>()),
      enableFIPS: map['enableFIPS'] as bool,
      id: map['id'] as String,
      kubernetesVersion: map['kubernetesVersion'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      nodeImageVersion: map['nodeImageVersion'] as String,
      osSku: map['osSku'] as String,
      osType: map['osType'] as String,
      snapshotType: map['snapshotType'] == null ? null : map['snapshotType'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      vmSize: map['vmSize'] as String,
    );
  }
}

