// ignore_for_file: unused_element, unnecessary_cast

class ServiceIntegrationOpsCenter {
  /// Specifies if DevOps Guru is enabled to create an AWS Systems Manager OpsItem for each created insight. Valid values are `DISABLED` and `ENABLED`.
  final String? optInStatus;

  /// Creates a new [ServiceIntegrationOpsCenter].
  /// [optInStatus] Specifies if DevOps Guru is enabled to create an AWS Systems Manager OpsItem for each created insight. Valid values are `DISABLED` and `ENABLED`.
  ServiceIntegrationOpsCenter({this.optInStatus});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'optInStatus': ?optInStatus};
  }

  factory ServiceIntegrationOpsCenter.fromMap(Map<String, dynamic> map) {
    return ServiceIntegrationOpsCenter(
      optInStatus: map['optInStatus'] == null
          ? null
          : map['optInStatus'] as String,
    );
  }
}
