// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceIntegrationOpsCenter {
  /// Specifies if DevOps Guru is enabled to create an AWS Systems Manager OpsItem for each created insight. Valid values are `DISABLED` and `ENABLED`.
  final pulumi.Input<String>? optInStatus;

  /// Creates a new [ServiceIntegrationOpsCenter].
  /// [optInStatus] Specifies if DevOps Guru is enabled to create an AWS Systems Manager OpsItem for each created insight. Valid values are `DISABLED` and `ENABLED`.
  const ServiceIntegrationOpsCenter({
    this.optInStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'optInStatus': ?optInStatus,
    };
  }

  factory ServiceIntegrationOpsCenter.fromMap(Map<String, dynamic> map) {
    return ServiceIntegrationOpsCenter(
      optInStatus: (() { final guardedValue = map['optInStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
