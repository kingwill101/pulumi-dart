// ignore_for_file: unused_element, unnecessary_cast

class ServiceIntegrationOpsCenter {
  /// Specifies if DevOps Guru is enabled to create an AWS Systems Manager OpsItem for each created insight. Valid values are `DISABLED` and `ENABLED`.
  final String? optInStatus;

  ServiceIntegrationOpsCenter({
    this.optInStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final optInStatusValue = optInStatus;
    if (optInStatusValue != null) {
      map['optInStatus'] = optInStatusValue;
    }
    return map;
  }

  factory ServiceIntegrationOpsCenter.fromMap(Map<String, dynamic> map) {
    return ServiceIntegrationOpsCenter(
      optInStatus:
          map['optInStatus'] == null ? null : map['optInStatus'] as String,
    );
  }
}
