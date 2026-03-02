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
      datadogOrganizationProperties: map['datadogOrganizationProperties'] == null ? null : (DatadogOrganizationProperties.fromMap((map['datadogOrganizationProperties']! as Map).cast<String, dynamic>())).input(),
      monitoringStatus: map['monitoringStatus'] == null ? null : (map['monitoringStatus']! as String).input(),
      userInfo: map['userInfo'] == null ? null : (UserInfo.fromMap((map['userInfo']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

