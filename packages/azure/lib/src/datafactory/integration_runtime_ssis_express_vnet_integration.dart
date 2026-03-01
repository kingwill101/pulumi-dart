// ignore_for_file: unused_element, unnecessary_cast


class IntegrationRuntimeSsisExpressVnetIntegration {
  /// id of the subnet to which the nodes of the Azure-SSIS Integration Runtime will be added.
  final String subnetId;

  /// Creates a new [IntegrationRuntimeSsisExpressVnetIntegration].
  /// [subnetId] id of the subnet to which the nodes of the Azure-SSIS Integration Runtime will be added.
  IntegrationRuntimeSsisExpressVnetIntegration({
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetId': subnetId,
    };
  }

  factory IntegrationRuntimeSsisExpressVnetIntegration.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSsisExpressVnetIntegration(
      subnetId: map['subnetId'] as String,
    );
  }
}

