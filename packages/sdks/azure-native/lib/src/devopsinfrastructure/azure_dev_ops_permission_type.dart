import 'package:pulumi/pulumi.dart' as pulumi;

/// Determines who has admin permissions to the Azure DevOps pool.
enum AzureDevOpsPermissionType implements pulumi.PulumiEnum<String> {
  inherit("Inherit"),
  creatorOnly("CreatorOnly"),
  specificAccounts("SpecificAccounts");

  const AzureDevOpsPermissionType(this.wireValue);
  @override
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
