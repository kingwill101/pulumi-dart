/// A workload management network is required for all the tenant (workload) traffic. This traffic is only dedicated for Tenant workloads which are required to access internet or any other MSFT/Public endpoints.
enum IsWorkloadManagementNetworkEnabled {
  valueTrue("True"),
  valueFalse("False");

  const IsWorkloadManagementNetworkEnabled(this.wireValue);
  final String wireValue;

  static IsWorkloadManagementNetworkEnabled fromValue(String value) {
    for (final item in IsWorkloadManagementNetworkEnabled.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IsWorkloadManagementNetworkEnabled value: $value');
  }
}

