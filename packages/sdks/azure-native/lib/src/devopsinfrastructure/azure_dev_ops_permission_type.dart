/// Determines who has admin permissions to the Azure DevOps pool.
enum AzureDevOpsPermissionType {
  inherit("Inherit"),
  creatorOnly("CreatorOnly"),
  specificAccounts("SpecificAccounts");

  const AzureDevOpsPermissionType(this.wireValue);
  final String wireValue;

  static AzureDevOpsPermissionType fromValue(String value) {
    for (final item in AzureDevOpsPermissionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureDevOpsPermissionType value: $value');
  }
}

