// ignore_for_file: unused_element, unnecessary_cast

import 'vpc_access_connector_egress_setting_appengine_v1beta.dart';

/// VPC access connector specification.
class VpcAccessConnectorAppengineV1beta {
  /// The egress setting for the connector, controlling what traffic is diverted through it.
  final VpcAccessConnectorEgressSettingAppengineV1beta? egressSetting;

  /// Full Serverless VPC Access Connector name e.g. projects/my-project/locations/us-central1/connectors/c1.
  final String? name;

  /// Creates a new [VpcAccessConnectorAppengineV1beta].
  /// [egressSetting] The egress setting for the connector, controlling what traffic is diverted through it.
  /// [name] Full Serverless VPC Access Connector name e.g. projects/my-project/locations/us-central1/connectors/c1.
  VpcAccessConnectorAppengineV1beta({
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

  factory VpcAccessConnectorAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return VpcAccessConnectorAppengineV1beta(
      egressSetting: map['egressSetting'] == null
          ? null
          : VpcAccessConnectorEgressSettingAppengineV1beta.fromValue(
              map['egressSetting'] as String),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
