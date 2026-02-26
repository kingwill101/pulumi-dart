// ignore_for_file: unused_element, unnecessary_cast

import 'vpc_access_connector_egress_setting2.dart';

/// VPC access connector specification.
class VpcAccessConnector2 {
  /// The egress setting for the connector, controlling what traffic is diverted through it.
  final VpcAccessConnectorEgressSetting2? egressSetting;

  /// Full Serverless VPC Access Connector name e.g. projects/my-project/locations/us-central1/connectors/c1.
  final String? name;

  VpcAccessConnector2({
    this.egressSetting,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final egressSettingValue = egressSetting;
    if (egressSettingValue != null) {
      map['egressSetting'] = egressSettingValue.value;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory VpcAccessConnector2.fromMap(Map<String, dynamic> map) {
    return VpcAccessConnector2(
      egressSetting: map['egressSetting'] == null
          ? null
          : VpcAccessConnectorEgressSetting2.fromValue(
              map['egressSetting'] as String),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
