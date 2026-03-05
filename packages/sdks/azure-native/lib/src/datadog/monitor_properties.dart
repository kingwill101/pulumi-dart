// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datadog_organization_properties.dart';
import 'user_info.dart';

/// Properties specific to the monitor resource.
class MonitorProperties {
  /// Specify the Datadog organization name. In the case of linking to existing organizations, Id, ApiKey, and Applicationkey is required as well.
  final pulumi.Input<DatadogOrganizationProperties>? datadogOrganizationProperties;
  /// Flag specifying if the resource monitoring is enabled or disabled.
  final pulumi.Input<String>? monitoringStatus;
  /// Includes name, email and optionally, phone number. User Information can't be null.
  final pulumi.Input<UserInfo>? userInfo;

  /// Creates a new [MonitorProperties].
  /// [datadogOrganizationProperties] Specify the Datadog organization name. In the case of linking to existing organizations, Id, ApiKey, and Applicationkey is required as well.
  /// [monitoringStatus] Flag specifying if the resource monitoring is enabled or disabled.
  /// [userInfo] Includes name, email and optionally, phone number. User Information can't be null.
  MonitorProperties({
    this.datadogOrganizationProperties,
    this.monitoringStatus,
    this.userInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datadogOrganizationProperties': ?pulumi.Input.mapOptionalInputValue<DatadogOrganizationProperties, Map<String, dynamic>>(datadogOrganizationProperties, (value) => value.toMap()),
      'monitoringStatus': ?monitoringStatus,
      'userInfo': ?pulumi.Input.mapOptionalInputValue<UserInfo, Map<String, dynamic>>(userInfo, (value) => value.toMap()),
    };
  }

  factory MonitorProperties.fromMap(Map<String, dynamic> map) {
    return MonitorProperties(
      datadogOrganizationProperties: (() { final guardedValue = map['datadogOrganizationProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatadogOrganizationProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitoringStatus: (() { final guardedValue = map['monitoringStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userInfo: (() { final guardedValue = map['userInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

