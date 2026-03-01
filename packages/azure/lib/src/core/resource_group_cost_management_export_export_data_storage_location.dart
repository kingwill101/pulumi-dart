// ignore_for_file: unused_element, unnecessary_cast


class ResourceGroupCostManagementExportExportDataStorageLocation {
  /// The Resource Manager ID of the container where exports will be uploaded. Changing this forces a new resource to be created.
  final String containerId;
  /// The path of the directory where exports will be uploaded. Changing this forces a new resource to be created.
  ///
  /// > **Note:** The Resource Manager ID of a Storage Container is exposed via the `resource_manager_id` attribute of the `azure.storage.Container` resource.
  final String rootFolderPath;

  /// Creates a new [ResourceGroupCostManagementExportExportDataStorageLocation].
  /// [containerId] The Resource Manager ID of the container where exports will be uploaded. Changing this forces a new resource to be created.
  /// [rootFolderPath] The path of the directory where exports will be uploaded. Changing this forces a new resource to be created.
  ResourceGroupCostManagementExportExportDataStorageLocation({
    required this.containerId,
    required this.rootFolderPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerId': containerId,
      'rootFolderPath': rootFolderPath,
    };
  }

  factory ResourceGroupCostManagementExportExportDataStorageLocation.fromMap(Map<String, dynamic> map) {
    return ResourceGroupCostManagementExportExportDataStorageLocation(
      containerId: map['containerId'] as String,
      rootFolderPath: map['rootFolderPath'] as String,
    );
  }
}

