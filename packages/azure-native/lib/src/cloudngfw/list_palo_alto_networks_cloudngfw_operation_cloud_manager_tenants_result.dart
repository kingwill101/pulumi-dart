// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listPaloAltoNetworksCloudngfwOperationCloudManagerTenants.
class ListPaloAltoNetworksCloudngfwOperationCloudManagerTenantsResult {
  /// List of Cloud Manager Tenants
  final List<String> value;

  /// Creates a new [ListPaloAltoNetworksCloudngfwOperationCloudManagerTenantsResult].
  /// [value] List of Cloud Manager Tenants
  ListPaloAltoNetworksCloudngfwOperationCloudManagerTenantsResult({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory ListPaloAltoNetworksCloudngfwOperationCloudManagerTenantsResult.fromMap(Map<String, dynamic> map) {
    return ListPaloAltoNetworksCloudngfwOperationCloudManagerTenantsResult(
      value: (map['value'] as List).cast<String>(),
    );
  }
}

