// ignore_for_file: unused_element, unnecessary_cast


class IntegrationRuntimeSsisVnetIntegration {
  /// Static public IP addresses for the Azure-SSIS Integration Runtime. The size must be 2.
  final List<String>? publicIps;
  /// id of the subnet to which the nodes of the Azure-SSIS Integration Runtime will be added.
  ///
  /// > **Note:** Only one of `subnet_id` and `subnet_name` can be specified. If `subnet_name` is specified, `vnet_id` must be provided.
  final String? subnetId;
  /// Name of the subnet to which the nodes of the Azure-SSIS Integration Runtime will be added.
  final String? subnetName;
  /// ID of the virtual network to which the nodes of the Azure-SSIS Integration Runtime will be added.
  final String? vnetId;

  /// Creates a new [IntegrationRuntimeSsisVnetIntegration].
  /// [publicIps] Static public IP addresses for the Azure-SSIS Integration Runtime. The size must be 2.
  /// [subnetId] id of the subnet to which the nodes of the Azure-SSIS Integration Runtime will be added.
  /// [subnetName] Name of the subnet to which the nodes of the Azure-SSIS Integration Runtime will be added.
  /// [vnetId] ID of the virtual network to which the nodes of the Azure-SSIS Integration Runtime will be added.
  IntegrationRuntimeSsisVnetIntegration({
    this.publicIps,
    this.subnetId,
    this.subnetName,
    this.vnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicIps': ?publicIps,
      'subnetId': ?subnetId,
      'subnetName': ?subnetName,
      'vnetId': ?vnetId,
    };
  }

  factory IntegrationRuntimeSsisVnetIntegration.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisVnetIntegration(
      publicIps: map['publicIps'] == null ? null : (map['publicIps'] as List).cast<String>(),
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
      subnetName: map['subnetName'] == null ? null : map['subnetName'] as String,
      vnetId: map['vnetId'] == null ? null : map['vnetId'] as String,
    );
  }
}

